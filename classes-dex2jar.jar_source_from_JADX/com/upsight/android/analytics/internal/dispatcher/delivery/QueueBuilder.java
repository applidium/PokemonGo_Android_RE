package com.upsight.android.analytics.internal.dispatcher.delivery;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.internal.dispatcher.delivery.Batcher.Config;
import com.upsight.android.analytics.internal.dispatcher.delivery.Batcher.Factory;
import com.upsight.android.analytics.internal.dispatcher.schema.Schema;
import com.upsight.android.analytics.internal.dispatcher.util.Selector;
import com.upsight.android.analytics.internal.session.Clock;
import com.upsight.android.logger.UpsightLogger;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import javax.inject.Provider;
import rx.Scheduler;
import spacemadness.com.lunarconsole.BuildConfig;

public class QueueBuilder {
    private static final String CHARSET_UTF_8 = "UTF-8";
    public static final String MACRO_APP_TOKEN = "{app_token}";
    public static final String MACRO_APP_VERSION = "{app_version}";
    public static final String MACRO_HOST = "{host}";
    public static final String MACRO_PROTOCOL = "{protocol}";
    public static final String MACRO_PROTOCOL_VERSION = "{version}";
    public static final String MACRO_SDK_VERSION = "{sdk_version}";
    private static final String PROTOCOL_VERSION = "v1";
    private Clock mClock;
    private Map<String, String> mEndpointMacros;
    private UpsightLogger mLogger;
    private ObjectMapper mObjectMapper;
    private Provider<ResponseParser> mResponseParserProvider;
    private Scheduler mRetryExecutor;
    private Scheduler mSendExecutor;
    private SignatureVerifier mSignatureVerifier;
    private UpsightContext mUpsight;

    private class BatcherFactory implements Factory {
        private Config mConfig;

        public BatcherFactory(Config config) {
            this.mConfig = config;
        }

        public Batcher create(Schema schema, BatchSender batchSender) {
            return new Batcher(this.mConfig, schema, batchSender, QueueBuilder.this.mRetryExecutor);
        }
    }

    QueueBuilder(UpsightContext upsightContext, ObjectMapper objectMapper, Clock clock, UpsightLogger upsightLogger, Scheduler scheduler, Scheduler scheduler2, SignatureVerifier signatureVerifier, Provider<ResponseParser> provider) {
        this.mUpsight = upsightContext;
        this.mObjectMapper = objectMapper;
        this.mClock = clock;
        this.mLogger = upsightLogger;
        this.mRetryExecutor = scheduler;
        this.mSendExecutor = scheduler2;
        this.mSignatureVerifier = signatureVerifier;
        this.mResponseParserProvider = provider;
        createEndpointMacroMap();
    }

    private void createEndpointMacroMap() {
        this.mEndpointMacros = new HashMap();
        this.mEndpointMacros.put(MACRO_PROTOCOL_VERSION, PROTOCOL_VERSION);
        this.mEndpointMacros.put(MACRO_APP_TOKEN, this.mUpsight.getApplicationToken());
        this.mEndpointMacros.put(MACRO_APP_VERSION, getAppVersionName(this.mUpsight));
        this.mEndpointMacros.put(MACRO_SDK_VERSION, this.mUpsight.getSdkVersion());
    }

    private String getAppVersionName(Context context) {
        String str = BuildConfig.FLAVOR;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (!(packageInfo == null || packageInfo.versionName == null)) {
                str = URLEncoder.encode(packageInfo.versionName, CHARSET_UTF_8);
            }
        } catch (NameNotFoundException e) {
            this.mLogger.m199e(QueueBuilder.class.getSimpleName(), "Could not get package info", e);
        } catch (UnsupportedEncodingException e2) {
            this.mLogger.m199e(QueueBuilder.class.getSimpleName(), "UTF-8 encoding not supported", e2);
        }
        return str;
    }

    public Queue build(String str, QueueConfig queueConfig, Selector<Schema> selector, Selector<Schema> selector2) {
        BatchSender batchSender = new BatchSender(this.mUpsight, queueConfig.getBatchSenderConfig(), this.mRetryExecutor, this.mSendExecutor, new UpsightEndpoint(prepareEndpoint(queueConfig.getEndpointAddress()), this.mSignatureVerifier, this.mObjectMapper, this.mLogger), (ResponseParser) this.mResponseParserProvider.get(), this.mObjectMapper, this.mClock, this.mLogger);
        return new Queue(str, selector, selector2, new BatcherFactory(queueConfig.getBatcherConfig()), batchSender);
    }

    String prepareEndpoint(String str) {
        for (Entry entry : this.mEndpointMacros.entrySet()) {
            str = str.replace((CharSequence) entry.getKey(), (CharSequence) entry.getValue());
        }
        return str;
    }
}
