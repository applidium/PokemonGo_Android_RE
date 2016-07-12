.class public Lcom/google/android/gms/iid/InstanceID;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_BACKOFF:Ljava/lang/String; = "RETRY_LATER"

.field public static final ERROR_MAIN_THREAD:Ljava/lang/String; = "MAIN_THREAD"

.field public static final ERROR_MISSING_INSTANCEID_SERVICE:Ljava/lang/String; = "MISSING_INSTANCEID_SERVICE"

.field public static final ERROR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field public static final ERROR_TIMEOUT:Ljava/lang/String; = "TIMEOUT"

.field static zzaDC:Ljava/lang/String;

.field static zzaDw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/iid/InstanceID;",
            ">;"
        }
    .end annotation
.end field

.field private static zzaDx:Lcom/google/android/gms/iid/zzd;

.field private static zzaDy:Lcom/google/android/gms/iid/zzc;


# instance fields
.field mContext:Landroid/content/Context;

.field zzaDA:Ljava/lang/String;

.field zzaDB:J

.field zzaDz:Ljava/security/KeyPair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDw:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subtype"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/iid/InstanceID;->zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/iid/InstanceID;
    .locals 4

    const-class v2, Lcom/google/android/gms/iid/InstanceID;

    monitor-enter v2

    if-nez p1, :cond_2

    :try_start_0
    const-string v0, ""

    :goto_0
    if-nez v0, :cond_3

    const-string v0, ""

    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDx:Lcom/google/android/gms/iid/zzd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/iid/zzd;

    invoke-direct {v0, v3}, Lcom/google/android/gms/iid/zzd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDx:Lcom/google/android/gms/iid/zzd;

    new-instance v0, Lcom/google/android/gms/iid/zzc;

    invoke-direct {v0, v3}, Lcom/google/android/gms/iid/zzc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDy:Lcom/google/android/gms/iid/zzc;

    :cond_0
    invoke-static {v3}, Lcom/google/android/gms/iid/InstanceID;->zzaC(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDC:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDw:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/iid/InstanceID;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/iid/InstanceID;

    invoke-direct {v0, v3, v1, p1}, Lcom/google/android/gms/iid/InstanceID;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/google/android/gms/iid/InstanceID;->zzaDw:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-object v0

    :cond_2
    :try_start_1
    const-string v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method static zza(Ljava/security/KeyPair;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x70

    const/4 v2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "InstanceID"

    const-string v1, "Unexpected error, device missing required alghorithms"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static zzaC(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "InstanceID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Never happens: can\'t find own package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static zzm([B)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteInstanceID()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "*"

    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/iid/InstanceID;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzwn()V

    return-void
.end method

.method public deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "authorizedEntity"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/iid/InstanceID;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public getCreationTime()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDx:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    const-string v2, "cre"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/iid/zzd;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDB:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDB:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzwm()Ljava/security/KeyPair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/iid/InstanceID;->zza(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "authorizedEntity"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p1, "authorizedEntity"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzwq()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    sget-object v2, Lcom/google/android/gms/iid/InstanceID;->zzaDx:Lcom/google/android/gms/iid/zzd;

    iget-object v3, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, p2}, Lcom/google/android/gms/iid/zzd;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "extras":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .restart local p3    # "extras":Landroid/os/Bundle;
    :cond_4
    const-string v2, "ttl"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    const-string v2, "jwt"

    const-string v3, "type"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/iid/InstanceID;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "InstanceID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDx:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/iid/InstanceID;->zzaDC:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/iid/zzd;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_2
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDx:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/iid/zzd;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v0, "sender"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "subscription"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "delete"

    const-string v1, "1"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-delete"

    const-string v1, "1"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subtype"

    const-string v0, ""

    iget-object v2, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    :goto_0
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-subtype"

    const-string v1, ""

    iget-object v2, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDy:Lcom/google/android/gms/iid/zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzwm()Ljava/security/KeyPair;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/iid/zzc;->zza(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/iid/InstanceID;->zzaDy:Lcom/google/android/gms/iid/zzc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/iid/zzc;->zzp(Landroid/content/Intent;)Ljava/lang/String;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    goto :goto_1
.end method

.method public zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "sender"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    :goto_0
    const-string v1, "legacy.register"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "subscription"

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subtype"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-subscription"

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-subtype"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDy:Lcom/google/android/gms/iid/zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzwm()Ljava/security/KeyPair;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/iid/zzc;->zza(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/iid/InstanceID;->zzaDy:Lcom/google/android/gms/iid/zzc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/iid/zzc;->zzp(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    goto :goto_0
.end method

.method zzwm()Ljava/security/KeyPair;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDz:Ljava/security/KeyPair;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDx:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/iid/zzd;->zzdq(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDz:Ljava/security/KeyPair;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDz:Ljava/security/KeyPair;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDB:J

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDx:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDB:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/iid/zzd;->zze(Ljava/lang/String;J)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDz:Ljava/security/KeyPair;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDz:Ljava/security/KeyPair;

    return-object v0
.end method

.method zzwn()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDB:J

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDx:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/iid/zzd;->zzdr(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzaDz:Ljava/security/KeyPair;

    return-void
.end method

.method zzwo()Lcom/google/android/gms/iid/zzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDx:Lcom/google/android/gms/iid/zzd;

    return-object v0
.end method

.method zzwp()Lcom/google/android/gms/iid/zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzaDy:Lcom/google/android/gms/iid/zzc;

    return-object v0
.end method

.method zzwq()Z
    .locals 6

    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/gms/iid/InstanceID;->zzaDx:Lcom/google/android/gms/iid/zzd;

    const-string v2, "appVersion"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/iid/zzd;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/android/gms/iid/InstanceID;->zzaDC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/google/android/gms/iid/InstanceID;->zzaDx:Lcom/google/android/gms/iid/zzd;

    const-string v2, "lastToken"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/iid/zzd;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x93a80

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
