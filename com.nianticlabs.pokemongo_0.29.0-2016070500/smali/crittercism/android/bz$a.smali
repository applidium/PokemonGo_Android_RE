.class public final Lcrittercism/android/bz$a;
.super Lcrittercism/android/cj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcrittercism/android/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Lcrittercism/android/bq;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcrittercism/android/bz;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcrittercism/android/bz;-><init>(Ljava/io/File;B)V

    return-object v0
.end method
