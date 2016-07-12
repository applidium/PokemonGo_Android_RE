.class public Lorg/apache/commons/io/input/ClassLoaderObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "ClassLoaderObjectInputStream.java"


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/io/input/ClassLoaderObjectInputStream;->classLoader:Ljava/lang/ClassLoader;

    .line 53
    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .param p1, "objectStreamClass"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/io/input/ClassLoaderObjectInputStream;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 75
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p1, "interfaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 93
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/Class;

    .line 94
    .local v2, "interfaceClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 95
    aget-object v3, p1, v1

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/commons/io/input/ClassLoaderObjectInputStream;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/io/input/ClassLoaderObjectInputStream;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v2}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 100
    :goto_1
    return-object v3

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_1
.end method
