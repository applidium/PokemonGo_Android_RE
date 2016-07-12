.class public Lcrittercism/android/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/cy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/da$a;
    }
.end annotation


# instance fields
.field private a:Lcrittercism/android/bs;

.field private b:Lcrittercism/android/bs;


# direct methods
.method public constructor <init>(Lcrittercism/android/bs;Lcrittercism/android/bs;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcrittercism/android/da;->a:Lcrittercism/android/bs;

    .line 30
    iput-object p2, p0, Lcrittercism/android/da;->b:Lcrittercism/android/bs;

    .line 31
    return-void
.end method


# virtual methods
.method public a(ZILorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 41
    if-nez p1, :cond_0

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_1

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcrittercism/android/da;->a:Lcrittercism/android/bs;

    invoke-virtual {v0}, Lcrittercism/android/bs;->a()V

    .line 46
    :goto_1
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lcrittercism/android/da;->a:Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/da;->b:Lcrittercism/android/bs;

    invoke-virtual {v0, v1}, Lcrittercism/android/bs;->a(Lcrittercism/android/bs;)V

    goto :goto_1
.end method
