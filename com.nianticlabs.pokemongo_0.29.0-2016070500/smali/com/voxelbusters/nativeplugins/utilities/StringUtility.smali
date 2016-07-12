.class public Lcom/voxelbusters/nativeplugins/utilities/StringUtility;
.super Ljava/lang/Object;
.source "StringUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 60
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 67
    :goto_1
    return v1

    .line 60
    :cond_0
    aget-object v0, p1, v2

    .line 62
    .local v0, "element":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    const/4 v1, 0x1

    goto :goto_1

    .line 60
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static convertJsonStringToStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v4, 0x0

    .line 33
    .local v4, "stringArray":[Ljava/lang/String;
    invoke-static {p0}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 35
    const/4 v5, 0x0

    .line 55
    :goto_0
    return-object v5

    .line 41
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 43
    .local v3, "size":I
    new-array v4, v3, [Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v3, :cond_1

    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "size":I
    :goto_2
    move-object v5, v4

    .line 55
    goto :goto_0

    .line 47
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "size":I
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    const-string v5, "NativePlugins.StringUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error in parsing jsonString "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getBase64DecodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "base64String"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 81
    .local v0, "dataBytes":[B
    const-string v2, ""

    .line 85
    .local v2, "text":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "text":Ljava/lang/String;
    .local v3, "text":Ljava/lang/String;
    move-object v2, v3

    .line 92
    .end local v3    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 87
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCurrencySymbolFromCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v2, ""

    .line 100
    .local v2, "symbol":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 102
    .local v0, "currency":Ljava/util/Currency;
    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 109
    .end local v0    # "currency":Ljava/util/Currency;
    :goto_0
    return-object v2

    .line 104
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "NativePlugins.StringUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in converting currency code : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCurrentTimeStamp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "timeStamp":Ljava/lang/String;
    return-object v0
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileWithExt"    # Ljava/lang/String;

    .prologue
    .line 114
    move-object v1, p0

    .line 115
    .local v1, "fileWithoutExt":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 117
    .local v0, "dotIndex":I
    if-ltz v0, :cond_0

    .line 119
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_0
    return-object v1
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 19
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
