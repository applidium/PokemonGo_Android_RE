.class public final Lcrittercism/android/cc;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/cb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 17
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 18
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 22
    const/4 v0, 0x0

    .line 24
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 25
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 28
    const/16 v3, 0xc8

    if-le v0, v3, :cond_0

    .line 30
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    invoke-static {}, Lcrittercism/android/dx;->a()V

    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    .line 34
    :try_start_2
    invoke-static {}, Lcrittercism/android/dx;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 39
    :catch_2
    move-exception v0

    invoke-static {}, Lcrittercism/android/dx;->a()V

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 40
    :goto_1
    throw v0

    .line 39
    :catch_3
    move-exception v1

    invoke-static {}, Lcrittercism/android/dx;->a()V

    goto :goto_1
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .locals 7

    .prologue
    .line 50
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 51
    const/4 v2, 0x0

    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    .line 56
    const-string v1, "Logcat data is not collected for Android APIs before 10 (Gingerbread)"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "API level is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    const/16 v1, 0x64

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "logcat"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "-t"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    const-string v5, "-v"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "time"

    aput-object v5, v4, v1

    invoke-direct {v3, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcrittercism/android/cc;->a(Ljava/io/InputStream;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 83
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 70
    :try_start_1
    const-string v3, "Unable to collect logcat data"

    invoke-static {v3, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to collect logcat data due to a(n) "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :cond_2
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 84
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_3
    throw v0
.end method
