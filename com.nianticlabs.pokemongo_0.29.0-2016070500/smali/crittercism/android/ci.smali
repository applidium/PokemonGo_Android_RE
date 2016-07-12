.class public abstract Lcrittercism/android/ci;
.super Lcrittercism/android/bp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcrittercism/android/bp;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lorg/json/JSONArray;
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 14
    invoke-virtual {p0}, Lcrittercism/android/ci;->a()Lorg/json/JSONArray;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BREADCRUMB WRITING "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 18
    return-void
.end method
