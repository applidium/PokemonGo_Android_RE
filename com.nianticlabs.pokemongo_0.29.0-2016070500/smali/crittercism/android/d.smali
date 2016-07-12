.class public final Lcrittercism/android/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    const-string v0, "Given a null Context."

    invoke-static {v0}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcrittercism/android/d;->a:Landroid/net/ConnectivityManager;

    goto :goto_0

    .line 61
    :cond_1
    const-string v0, "Add android.permission.ACCESS_NETWORK_STATE to AndroidManifest.xml to get more detailed OPTMZ data"

    invoke-static {v0}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcrittercism/android/b;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcrittercism/android/d;->a:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lcrittercism/android/b;->c:Lcrittercism/android/b;

    .line 80
    :goto_0
    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcrittercism/android/d;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    :cond_1
    sget-object v0, Lcrittercism/android/b;->d:Lcrittercism/android/b;

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 80
    invoke-static {v0}, Lcrittercism/android/b;->a(I)Lcrittercism/android/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcrittercism/android/d;->a:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 85
    const-string v0, "unknown"

    .line 123
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcrittercism/android/d;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    :cond_1
    const-string v0, "disconnected"

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 94
    if-nez v1, :cond_4

    .line 95
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 97
    packed-switch v0, :pswitch_data_0

    .line 123
    :cond_3
    const-string v0, "unknown"

    goto :goto_0

    .line 103
    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    .line 113
    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    .line 115
    :pswitch_2
    const-string v0, "LTE"

    goto :goto_0

    .line 119
    :cond_4
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    .line 120
    const-string v0, "wifi"

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
