.class public Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;
.super Ljava/lang/Object;
.source "SharingHelper.java"


# static fields
.field public static packageNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->packageNameMap:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->packageNameMap:Ljava/util/HashMap;

    .line 24
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->packageNameMap:Ljava/util/HashMap;

    const-string v1, "com.facebook.katana"

    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->FB:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->packageNameMap:Ljava/util/HashMap;

    const-string v1, "com.facebook.katana.LoginActivity"

    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->FB:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->packageNameMap:Ljava/util/HashMap;

    const-string v1, "com.twitter.android"

    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->TWITTER:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->packageNameMap:Ljava/util/HashMap;

    const-string v1, "com.google.android.apps.plus"

    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->GOOGLE_PLUS:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->packageNameMap:Ljava/util/HashMap;

    const-string v1, "com.instagram.android"

    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->INSTAGRAM:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->packageNameMap:Ljava/util/HashMap;

    const-string v1, "com.whatsapp"

    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->WHATSAPP:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfPackageMatchesShareOptions(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "shareOptions"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 36
    sget-object v3, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->packageNameMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    .line 39
    .local v1, "shareOption":Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    if-eqz v1, :cond_0

    .line 42
    array-length v4, p1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_1

    .line 51
    :cond_0
    :goto_1
    return v2

    .line 42
    :cond_1
    aget-object v0, p1, v3

    .line 44
    .local v0, "each":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1}, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 46
    const/4 v2, 0x1

    goto :goto_1

    .line 42
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getPriorityIntents(Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 5
    .param p0, "sampleIntent"    # Landroid/content/Intent;

    .prologue
    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    sget-object v3, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->packageNameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 80
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/Intent;

    return-object v3

    .line 73
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "eachPackage":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getPrioritySocialNetworkingIntents(Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 5
    .param p0, "referenceIntent"    # Landroid/content/Intent;

    .prologue
    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    sget-object v3, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->packageNameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 67
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/Intent;

    return-object v3

    .line 57
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, "eachPackage":Ljava/lang/String;
    invoke-static {v0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->isSocialNetwork(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isServiceAvailable(Landroid/content/Context;Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceType"    # Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "isSupported":Z
    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->FB:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    if-ne p1, v2, :cond_2

    .line 102
    const-string v2, "android.intent.action.SEND"

    const-string v3, "text/plain"

    const-string v4, "com.facebook.katana"

    invoke-static {p0, v2, v3, v4}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SEND"

    const-string v3, "text/plain"

    const-string v4, "com.facebook.katana.LoginActivity"

    invoke-static {p0, v2, v3, v4}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    const/4 v1, 0x1

    .line 127
    :cond_1
    :goto_0
    return v1

    .line 107
    :cond_2
    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->TWITTER:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    if-ne p1, v2, :cond_3

    .line 109
    const-string v2, "android.intent.action.SEND"

    const-string v3, "text/plain"

    const-string v4, "com.twitter.android"

    invoke-static {p0, v2, v3, v4}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 110
    goto :goto_0

    .line 111
    :cond_3
    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->WHATSAPP:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    if-ne p1, v2, :cond_4

    .line 113
    const-string v2, "android.intent.action.SEND"

    const-string v3, "text/plain"

    const-string v4, "com.whatsapp"

    invoke-static {p0, v2, v3, v4}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->MESSAGE:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    if-ne p1, v2, :cond_5

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    invoke-static {p0, v0}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 121
    goto :goto_0

    .line 122
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->MAIL:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    if-ne p1, v2, :cond_1

    .line 124
    const-string v2, "android.intent.action.SEND"

    const-string v3, "message/rfc822"

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isSocialNetwork(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v1, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->packageNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    .line 87
    .local v0, "shareOption":Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;
    if-eqz v0, :cond_1

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->FB:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->TWITTER:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->GOOGLE_PLUS:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->INSTAGRAM:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    if-ne v1, v0, :cond_1

    .line 89
    :cond_0
    const/4 v1, 0x1

    .line 93
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
