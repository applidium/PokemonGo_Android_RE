.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;
.super Ljava/lang/Object;
.source "UpsightEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;
    }
.end annotation


# static fields
.field private static final CONNECTION_CLOSE:Ljava/lang/String; = "close"

.field private static final CONNECTION_TIMEOUT_MS:I = 0x7530

.field private static final CONTENT_ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final CONTENT_TYPE_APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field static final HTTP_HEADER_REF_ID:Ljava/lang/String; = "X-US-Ref-Id"

.field static final HTTP_HEADER_US_DIGEST:Ljava/lang/String; = "X-US-DIGEST"

.field public static final LOG_TEXT_POSTING:Ljava/lang/String; = "POSTING:       "

.field public static final LOG_TEXT_RECEIVING:Ljava/lang/String; = "RECEIVING:     "

.field public static final LOG_TEXT_REQUEST_BODY:Ljava/lang/String; = "\nREQUEST BODY:  "

.field public static final LOG_TEXT_RESPONSE_BODY:Ljava/lang/String; = "\nRESPONSE BODY: "

.field public static final LOG_TEXT_RESPONSE_BODY_NONE:Ljava/lang/String; = "[NONE]"

.field public static final LOG_TEXT_STATUS_CODE:Ljava/lang/String; = "\nSTATUS CODE:   "

.field public static final LOG_TEXT_TO:Ljava/lang/String; = "\nTO:            "

.field private static final POST_METHOD_NAME:Ljava/lang/String; = "POST"

.field public static final SIGNED_MESSAGE_SEPARATOR:Ljava/lang/String; = ":"

.field private static final USER_AGENT_ANDROID:Ljava/lang/String;

.field private static final USE_GZIP:Z


# instance fields
.field private mEndpointAddress:Ljava/lang/String;

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private mSignatureVerifier:Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->USER_AGENT_ANDROID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/logger/UpsightLogger;)V
    .locals 0
    .param p1, "endpointAddress"    # Ljava/lang/String;
    .param p2, "signatureVerifier"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;
    .param p3, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .param p4, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mEndpointAddress:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mSignatureVerifier:Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;

    .line 154
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 155
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 156
    return-void
.end method

.method private getRequestBodyBytes(Ljava/lang/String;Z)[B
    .locals 1
    .param p1, "requestBody"    # Ljava/lang/String;
    .param p2, "useGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/upsight/android/internal/util/GzipHelper;->compress(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method private getVerifiedResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 13
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    const-string v3, ""

    .line 252
    .local v3, "respBody":Ljava/lang/String;
    const-string v9, "X-US-Ref-Id"

    invoke-virtual {p1, v9}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "refId":Ljava/lang/String;
    const-string v9, "X-US-DIGEST"

    invoke-virtual {p1, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "signature":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 255
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 256
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 257
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, "unverifiedRespBody":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 260
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, "signedMessage":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 269
    .local v6, "signedBytes":[B
    const/16 v9, 0x8

    :try_start_0
    invoke-static {v4, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 272
    .local v5, "signatureBytes":[B
    iget-object v9, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mSignatureVerifier:Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;

    invoke-interface {v9, v6, v5}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;->verify([B[B)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_0

    .line 274
    move-object v3, v8

    .line 284
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v5    # "signatureBytes":[B
    .end local v6    # "signedBytes":[B
    .end local v7    # "signedMessage":Ljava/lang/String;
    .end local v8    # "unverifiedRespBody":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 276
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v6    # "signedBytes":[B
    .restart local v7    # "signedMessage":Ljava/lang/String;
    .restart local v8    # "unverifiedRespBody":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v9, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v10, "Upsight"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Message signature is not valid Base64. X-US-DIGEST: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v9, v10, v0, v11, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public send(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;
    .locals 12
    .param p1, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "refId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 170
    .local v7, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    iget-object v8, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v8, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "requestBody":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "POSTING:       "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nTO:            "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mEndpointAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nREQUEST BODY:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 179
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v9, "Upsight"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10, v11}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->getRequestBodyBytes(Ljava/lang/String;Z)[B

    move-result-object v1

    .line 183
    .local v1, "body":[B
    new-instance v8, Ljava/net/URL;

    iget-object v9, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mEndpointAddress:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 185
    const-string v8, "POST"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 187
    const-string v8, "X-US-Ref-Id"

    invoke-virtual {v7, v8, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v8, "Content-Type"

    const-string v9, "application/json"

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v8, "User-Agent"

    sget-object v9, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->USER_AGENT_ANDROID:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v8, "Connection"

    const-string v9, "close"

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/16 v8, 0x7530

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 196
    const/16 v8, 0x7530

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 198
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 199
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 200
    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 202
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-static {v1, v8}, Lorg/apache/commons/io/IOUtils;->write([BLjava/io/OutputStream;)V

    .line 204
    const/4 v4, 0x0

    .line 205
    .local v4, "respBody":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 207
    .local v6, "statusCode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RECEIVING:     "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nSTATUS CODE:   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 213
    const/16 v8, 0xc8

    if-ne v6, v8, :cond_0

    .line 214
    invoke-direct {p0, v7}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->getVerifiedResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    .line 215
    const-string v8, "\nRESPONSE BODY: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "[NONE]"

    :goto_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_0
    iget-object v8, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v9, "Upsight"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10, v11}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    new-instance v8, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;

    invoke-direct {v8, v6, v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    if-eqz v7, :cond_1

    .line 224
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v8

    :cond_2
    move-object v8, v4

    .line 215
    goto :goto_0

    .line 223
    .end local v1    # "body":[B
    .end local v3    # "requestBody":Ljava/lang/String;
    .end local v4    # "respBody":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "statusCode":I
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_3

    .line 224
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v8
.end method
