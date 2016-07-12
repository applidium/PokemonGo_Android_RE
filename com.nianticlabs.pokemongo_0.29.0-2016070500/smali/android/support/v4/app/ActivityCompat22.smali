.class Landroid/support/v4/app/ActivityCompat22;
.super Ljava/lang/Object;
.source "ActivityCompat22.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
