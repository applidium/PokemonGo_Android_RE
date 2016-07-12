.class public final Lcrittercism/android/y;
.super Ljava/security/Provider$Service;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcrittercism/android/e;

.field private c:Lcrittercism/android/d;

.field private d:Ljava/security/Provider$Service;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Default"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SSL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TLSv1.1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TLSv1.2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SSLv3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TLSv1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TLS"

    aput-object v2, v0, v1

    sput-object v0, Lcrittercism/android/y;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/security/Provider$Service;Lcrittercism/android/e;Lcrittercism/android/d;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 50
    iput-object p2, p0, Lcrittercism/android/y;->b:Lcrittercism/android/e;

    .line 51
    iput-object p3, p0, Lcrittercism/android/y;->c:Lcrittercism/android/d;

    .line 52
    iput-object p1, p0, Lcrittercism/android/y;->d:Ljava/security/Provider$Service;

    .line 53
    return-void
.end method

.method private static a(Ljava/security/Provider$Service;Lcrittercism/android/e;Lcrittercism/android/d;)Lcrittercism/android/y;
    .locals 5

    .prologue
    .line 60
    new-instance v0, Lcrittercism/android/y;

    invoke-direct {v0, p0, p1, p2}, Lcrittercism/android/y;-><init>(Ljava/security/Provider$Service;Lcrittercism/android/e;Lcrittercism/android/d;)V

    .line 66
    :try_start_0
    const-class v1, Ljava/security/Provider$Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    aget-object v3, v2, v1

    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 72
    :cond_0
    return-object v0
.end method

.method private static a()Ljava/security/Provider;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v0

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Lcrittercism/android/e;Lcrittercism/android/d;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-static {}, Lcrittercism/android/z;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    invoke-static {}, Lcrittercism/android/y;->a()Ljava/security/Provider;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_0

    move v1, v0

    .line 115
    :goto_1
    sget-object v3, Lcrittercism/android/y;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 116
    sget-object v3, Lcrittercism/android/y;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 117
    const-string v4, "SSLContext"

    invoke-virtual {v2, v4, v3}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    .line 119
    if-eqz v3, :cond_2

    instance-of v4, v3, Lcrittercism/android/y;

    if-nez v4, :cond_2

    .line 120
    invoke-static {v3, p0, p1}, Lcrittercism/android/y;->a(Ljava/security/Provider$Service;Lcrittercism/android/e;Lcrittercism/android/d;)Lcrittercism/android/y;

    move-result-object v3

    .line 125
    if-eqz v3, :cond_2

    .line 126
    invoke-direct {v3}, Lcrittercism/android/y;->b()Z

    move-result v3

    or-int/2addr v1, v3

    .line 115
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 131
    goto :goto_0
.end method

.method private b()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0}, Lcrittercism/android/y;->getProvider()Ljava/security/Provider;

    move-result-object v2

    .line 161
    if-nez v2, :cond_0

    .line 186
    :goto_0
    return v0

    .line 166
    :cond_0
    :try_start_0
    const-class v3, Ljava/security/Provider;

    const-string v4, "putService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/security/Provider$Service;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 167
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 168
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v3, "SSLContext.DummySSLAlgorithm"

    .line 176
    invoke-virtual {p0}, Lcrittercism/android/y;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/y;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcrittercism/android/y;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {v2, v4}, Ljava/security/Provider;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {v2, v3}, Ljava/security/Provider;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 186
    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "constructorParameter"    # Ljava/lang/Object;

    .prologue
    .line 215
    invoke-super {p0, p1}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 218
    :try_start_0
    instance-of v1, v2, Ljavax/net/ssl/SSLContextSpi;

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/SSLContextSpi;

    move-object v1, v0

    iget-object v3, p0, Lcrittercism/android/y;->b:Lcrittercism/android/e;

    iget-object v4, p0, Lcrittercism/android/y;->c:Lcrittercism/android/d;

    invoke-static {v1, v3, v4}, Lcrittercism/android/z;->a(Ljavax/net/ssl/SSLContextSpi;Lcrittercism/android/e;Lcrittercism/android/d;)Lcrittercism/android/z;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    .line 225
    :cond_0
    :goto_0
    return-object v2

    .line 219
    :catch_0
    move-exception v1

    throw v1

    .line 221
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
