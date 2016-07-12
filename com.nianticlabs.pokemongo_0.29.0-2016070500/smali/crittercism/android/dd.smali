.class public final Lcrittercism/android/dd;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/cy;


# instance fields
.field private a:Lcrittercism/android/dv;


# direct methods
.method public constructor <init>(Lcrittercism/android/dv;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcrittercism/android/dd;->a:Lcrittercism/android/dv;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(ZILorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 22
    iget-object v0, p0, Lcrittercism/android/dd;->a:Lcrittercism/android/dv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcrittercism/android/dv;->a(Z)V

    .line 24
    :cond_0
    return-void
.end method
