package com.upsight.android.analytics.internal.dispatcher.delivery;

import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Base64;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.Upsight;
import com.upsight.android.internal.util.GzipHelper;
import com.upsight.android.logger.UpsightLogger;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.UUID;
import org.apache.commons.io.IOUtils;

class UpsightEndpoint {
    private static final String CONNECTION_CLOSE = "close";
    private static final int CONNECTION_TIMEOUT_MS = 30000;
    private static final String CONTENT_ENCODING_GZIP = "gzip";
    private static final String CONTENT_TYPE_APPLICATION_JSON = "application/json";
    private static final String EMPTY_STRING = "";
    static final String HTTP_HEADER_REF_ID = "X-US-Ref-Id";
    static final String HTTP_HEADER_US_DIGEST = "X-US-DIGEST";
    public static final String LOG_TEXT_POSTING = "POSTING:       ";
    public static final String LOG_TEXT_RECEIVING = "RECEIVING:     ";
    public static final String LOG_TEXT_REQUEST_BODY = "\nREQUEST BODY:  ";
    public static final String LOG_TEXT_RESPONSE_BODY = "\nRESPONSE BODY: ";
    public static final String LOG_TEXT_RESPONSE_BODY_NONE = "[NONE]";
    public static final String LOG_TEXT_STATUS_CODE = "\nSTATUS CODE:   ";
    public static final String LOG_TEXT_TO = "\nTO:            ";
    private static final String POST_METHOD_NAME = "POST";
    public static final String SIGNED_MESSAGE_SEPARATOR = ":";
    private static final String USER_AGENT_ANDROID;
    private static final boolean USE_GZIP = false;
    private String mEndpointAddress;
    private UpsightLogger mLogger;
    private ObjectMapper mMapper;
    private SignatureVerifier mSignatureVerifier;

    public static class Response {
        public final String body;
        public final int statusCode;

        public Response(int i, String str) {
            this.statusCode = i;
            this.body = str;
        }

        public boolean isOk() {
            return this.statusCode == 200;
        }
    }

    static {
        USER_AGENT_ANDROID = "Android-" + VERSION.SDK_INT;
    }

    public UpsightEndpoint(String str, SignatureVerifier signatureVerifier, ObjectMapper objectMapper, UpsightLogger upsightLogger) {
        this.mEndpointAddress = str;
        this.mSignatureVerifier = signatureVerifier;
        this.mMapper = objectMapper;
        this.mLogger = upsightLogger;
    }

    private byte[] getRequestBodyBytes(String str, boolean z) throws IOException {
        return z ? GzipHelper.compress(str) : str.getBytes();
    }

    private String getVerifiedResponse(HttpURLConnection httpURLConnection) throws IOException {
        String str = EMPTY_STRING;
        Object requestProperty = httpURLConnection.getRequestProperty(HTTP_HEADER_REF_ID);
        String headerField = httpURLConnection.getHeaderField(HTTP_HEADER_US_DIGEST);
        if (!(TextUtils.isEmpty(requestProperty) || TextUtils.isEmpty(headerField))) {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (inputStream != null) {
                String iOUtils = IOUtils.toString(inputStream);
                if (!TextUtils.isEmpty(iOUtils)) {
                    try {
                        if (this.mSignatureVerifier.verify((iOUtils + SIGNED_MESSAGE_SEPARATOR + requestProperty).getBytes(), Base64.decode(headerField, 8))) {
                            return iOUtils;
                        }
                    } catch (Throwable e) {
                        this.mLogger.m200e(Upsight.LOG_TAG, e, "Message signature is not valid Base64. X-US-DIGEST: " + headerField, new Object[0]);
                        return str;
                    }
                }
            }
        }
        return str;
    }

    public Response send(UpsightRequest upsightRequest) throws IOException {
        Throwable th;
        HttpURLConnection httpURLConnection = null;
        String uuid = UUID.randomUUID().toString();
        try {
            String writeValueAsString = this.mMapper.writeValueAsString(upsightRequest);
            this.mLogger.m197d(Upsight.LOG_TAG, LOG_TEXT_POSTING + uuid + LOG_TEXT_TO + this.mEndpointAddress + LOG_TEXT_REQUEST_BODY + writeValueAsString, new Object[0]);
            byte[] requestBodyBytes = getRequestBodyBytes(writeValueAsString, false);
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(this.mEndpointAddress).openConnection();
            try {
                String verifiedResponse;
                httpURLConnection2.setRequestMethod(POST_METHOD_NAME);
                httpURLConnection2.setRequestProperty(HTTP_HEADER_REF_ID, uuid);
                httpURLConnection2.setRequestProperty("Content-Type", CONTENT_TYPE_APPLICATION_JSON);
                httpURLConnection2.setRequestProperty("User-Agent", USER_AGENT_ANDROID);
                httpURLConnection2.setRequestProperty("Connection", CONNECTION_CLOSE);
                httpURLConnection2.setConnectTimeout(CONNECTION_TIMEOUT_MS);
                httpURLConnection2.setReadTimeout(CONNECTION_TIMEOUT_MS);
                httpURLConnection2.setDoInput(true);
                httpURLConnection2.setDoOutput(true);
                httpURLConnection2.setFixedLengthStreamingMode(requestBodyBytes.length);
                IOUtils.write(requestBodyBytes, httpURLConnection2.getOutputStream());
                int responseCode = httpURLConnection2.getResponseCode();
                StringBuilder append = new StringBuilder().append(LOG_TEXT_RECEIVING).append(uuid).append(LOG_TEXT_STATUS_CODE).append(responseCode);
                if (responseCode == 200) {
                    verifiedResponse = getVerifiedResponse(httpURLConnection2);
                    append.append(LOG_TEXT_RESPONSE_BODY).append(TextUtils.isEmpty(verifiedResponse) ? LOG_TEXT_RESPONSE_BODY_NONE : verifiedResponse);
                }
                this.mLogger.m197d(Upsight.LOG_TAG, append.toString(), new Object[0]);
                Response response = new Response(responseCode, verifiedResponse);
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                return response;
            } catch (Throwable th2) {
                Throwable th3 = th2;
                httpURLConnection = httpURLConnection2;
                th = th3;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }
}
