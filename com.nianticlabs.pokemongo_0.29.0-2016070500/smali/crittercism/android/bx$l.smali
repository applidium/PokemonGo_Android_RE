.class public final Lcrittercism/android/bx$l;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field private a:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bx$l;->a:Lorg/json/JSONArray;

    .line 425
    invoke-static {}, Lcrittercism/android/bx;->c()Lcrittercism/android/bf;

    .line 426
    invoke-static {}, Lcrittercism/android/bx;->d()Lcrittercism/android/cb;

    .line 428
    invoke-static {}, Lcrittercism/android/bx;->c()Lcrittercism/android/bf;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/bf;->a:Z

    if-eqz v0, :cond_0

    .line 429
    invoke-static {}, Lcrittercism/android/bx;->d()Lcrittercism/android/cb;

    move-result-object v0

    invoke-interface {v0}, Lcrittercism/android/cb;->a()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bx$l;->a:Lorg/json/JSONArray;

    .line 431
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    const-string v0, "logcat"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcrittercism/android/bx$l;->a:Lorg/json/JSONArray;

    return-object v0
.end method
