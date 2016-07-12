.class Landroid/support/v4/net/ConnectivityManagerCompatHoneycombMR2;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompatHoneycombMR2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .locals 3
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 38
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 58
    :goto_0
    :pswitch_0
    return v2

    .line 43
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 44
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 55
    :pswitch_2
    const/4 v2, 0x0

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
