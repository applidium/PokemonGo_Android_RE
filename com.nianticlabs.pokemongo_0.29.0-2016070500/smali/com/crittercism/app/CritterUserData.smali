.class public Lcom/crittercism/app/CritterUserData;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;

.field private final b:Z


# direct methods
.method constructor <init>(Ljava/util/Map;Z)V
    .locals 0
    .param p2, "isOptedOut"    # Z

    .prologue
    .line 12
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    .line 14
    iput-boolean p2, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    .line 15
    return-void
.end method


# virtual methods
.method public crashedOnLastLoad()Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string v1, "crashedOnLastLoad"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-boolean v0, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "User has opted out of Crittercism.  Returning false."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 110
    :goto_0
    const/4 v0, 0x0

    .line 112
    :goto_1
    return v0

    .line 108
    :cond_0
    const-string v0, "CritterUserData instance has no value for crashedOnLastLoad().  Defaulting to false."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string v1, "crashedOnLastLoad"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1
.end method

.method public getRateMyAppMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-boolean v0, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    if-eqz v0, :cond_1

    .line 74
    const-string v0, "User has opted out of Crittercism.  Returning null."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 76
    :cond_1
    const-string v0, "CritterUserData instance has no value for getRateMyAppMessage().  Returning null."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRateMyAppTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-boolean v0, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    if-eqz v0, :cond_1

    .line 53
    const-string v0, "User has opted out of Crittercism.  Returning null."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 55
    :cond_1
    const-string v0, "CritterUserData instance has no value for getRateMyAppTitle().  Returning null."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUserUUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string v1, "userUUID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-boolean v0, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "User has opted out of Crittercism.  Returning null."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 129
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string v1, "userUUID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 126
    :cond_1
    const-string v0, "CritterUserData instance has no value for getUserUUID().  Returning null."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isOptedOut()Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string v1, "optOutStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-boolean v0, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    .line 92
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string v1, "optOutStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldShowRateMyAppAlert()Z
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string v1, "shouldShowRateAppAlert"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "User has opted out of Crittercism.  Returning false."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 35
    :goto_0
    const/4 v0, 0x0

    .line 37
    :goto_1
    return v0

    .line 33
    :cond_0
    const-string v0, "CritterUserData instance has no value for shouldShowMyRateAppAlert().  Defaulting to false."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string v1, "shouldShowRateAppAlert"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1
.end method
