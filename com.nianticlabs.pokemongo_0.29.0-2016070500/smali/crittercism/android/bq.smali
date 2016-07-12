.class public Lcrittercism/android/bq;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcrittercism/android/bq;->a:Ljava/io/File;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 14
    const-string v0, ""

    .line 17
    :try_start_0
    iget-object v1, p0, Lcrittercism/android/bq;->a:Ljava/io/File;

    invoke-static {v1}, Lcrittercism/android/eb;->b(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 19
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
