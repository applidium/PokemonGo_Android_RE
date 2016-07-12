.class public abstract Lcrittercism/android/m;
.super Ljava/net/URLStreamHandler;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# instance fields
.field c:Lcrittercism/android/e;

.field d:Lcrittercism/android/d;

.field e:Z

.field private f:Ljava/lang/reflect/Constructor;

.field private g:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "java.net.URL"

    aput-object v1, v0, v2

    const-string v1, "int"

    aput-object v1, v0, v3

    const-string v1, "java.net.Proxy"

    aput-object v1, v0, v4

    sput-object v0, Lcrittercism/android/m;->a:[Ljava/lang/String;

    .line 23
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "java.net.URL"

    aput-object v1, v0, v2

    const-string v1, "int"

    aput-object v1, v0, v3

    sput-object v0, Lcrittercism/android/m;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcrittercism/android/e;Lcrittercism/android/d;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 38
    sget-object v4, Lcrittercism/android/m;->a:[Ljava/lang/String;

    sget-object v5, Lcrittercism/android/m;->b:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/m;-><init>(Lcrittercism/android/e;Lcrittercism/android/d;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lcrittercism/android/e;Lcrittercism/android/d;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    .line 28
    iput-object v3, p0, Lcrittercism/android/m;->f:Ljava/lang/reflect/Constructor;

    .line 29
    iput-object v3, p0, Lcrittercism/android/m;->g:Ljava/lang/reflect/Constructor;

    .line 52
    iput-object p1, p0, Lcrittercism/android/m;->c:Lcrittercism/android/e;

    .line 58
    iput-object p2, p0, Lcrittercism/android/m;->d:Lcrittercism/android/d;

    .line 59
    iput-boolean v0, p0, Lcrittercism/android/m;->e:Z

    .line 61
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 63
    :try_start_0
    aget-object v1, p3, v0

    invoke-static {v1, p5}, Lcrittercism/android/l;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/m;->f:Ljava/lang/reflect/Constructor;

    .line 67
    aget-object v1, p3, v0

    invoke-static {v1, p4}, Lcrittercism/android/l;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/m;->g:Ljava/lang/reflect/Constructor;

    .line 71
    iget-object v1, p0, Lcrittercism/android/m;->f:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 72
    iget-object v1, p0, Lcrittercism/android/m;->g:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcrittercism/android/m;->f:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcrittercism/android/m;->g:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_2

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "Couldn\'t find suitable connection implementations"

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :catch_0
    move-exception v1

    iput-object v3, p0, Lcrittercism/android/m;->f:Ljava/lang/reflect/Constructor;

    .line 77
    iput-object v3, p0, Lcrittercism/android/m;->f:Ljava/lang/reflect/Constructor;

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_2
    invoke-direct {p0}, Lcrittercism/android/m;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "Unable to open test connections"

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_3
    return-void
.end method

.method private a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unable to setup network statistics on a "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcrittercism/android/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " connection due to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    :try_start_0
    sget-object v0, Lcrittercism/android/ea;->e:Lcrittercism/android/ea;

    .line 127
    if-nez p2, :cond_0

    .line 128
    iget-object v0, p0, Lcrittercism/android/m;->f:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcrittercism/android/m;->getDefaultPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    .line 147
    :goto_0
    if-eqz v0, :cond_2

    .line 148
    iget-boolean v3, p0, Lcrittercism/android/m;->e:Z

    if-eqz v3, :cond_1

    .line 155
    iput-boolean v1, p0, Lcrittercism/android/m;->e:Z

    .line 157
    invoke-static {}, Lcrittercism/android/v;->a()Lcrittercism/android/v;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {v0}, Lcrittercism/android/v;->c()Z

    move-result v0

    .line 162
    :goto_1
    const-string v1, "Stopping network statistics monitoring"

    invoke-static {v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    .line 166
    if-eqz v0, :cond_2

    .line 173
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 181
    :goto_2
    return-object v0

    .line 130
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcrittercism/android/m;->g:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcrittercism/android/m;->getDefaultPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    .line 145
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bad arguments"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 135
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 145
    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "an instantiation problem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 138
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 145
    goto :goto_0

    .line 139
    :catch_2
    move-exception v0

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "security restrictions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 141
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 145
    goto/16 :goto_0

    .line 142
    :catch_3
    move-exception v0

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "an invocation problem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 144
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_0

    .line 177
    :cond_1
    throw v0

    :cond_2
    move-object v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_1
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 92
    iput-boolean v1, p0, Lcrittercism/android/m;->e:Z

    .line 95
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "http://www.google.com"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcrittercism/android/m;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iput-boolean v0, p0, Lcrittercism/android/m;->e:Z

    .line 103
    :goto_0
    return v0

    .line 98
    :catch_0
    move-exception v2

    iput-boolean v0, p0, Lcrittercism/android/m;->e:Z

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcrittercism/android/m;->e:Z

    throw v1
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract getDefaultPort()I
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcrittercism/android/m;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null || proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    invoke-direct {p0, p1, p2}, Lcrittercism/android/m;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method
