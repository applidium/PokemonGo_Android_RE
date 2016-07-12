.class public final Lcrittercism/android/bx$q;
.super Lcrittercism/android/bx$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "q"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcrittercism/android/bx$g;-><init>(I)V

    .line 645
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    const-string v0, "mobile_network"

    return-object v0
.end method

.method public final bridge synthetic c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 642
    invoke-super {p0}, Lcrittercism/android/bx$g;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
