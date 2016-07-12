.class public Lcom/google/android/gms/auth/api/proxy/ProxyResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/proxy/ProxyResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_CODE_NO_CONNECTION:I = -0x1


# instance fields
.field public final body:[B

.field public final googlePlayServicesStatusCode:I

.field public final recoveryAction:Landroid/app/PendingIntent;

.field public final statusCode:I

.field final versionCode:I

.field final zzSK:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/proxy/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/proxy/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;ILandroid/os/Bundle;[B)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "googlePlayServicesStatusCode"    # I
    .param p3, "recoveryAction"    # Landroid/app/PendingIntent;
    .param p4, "statusCode"    # I
    .param p5, "headers"    # Landroid/os/Bundle;
    .param p6, "body"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->googlePlayServicesStatusCode:I

    iput p4, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->statusCode:I

    iput-object p5, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->zzSK:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->body:[B

    iput-object p3, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->recoveryAction:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;ILandroid/os/Bundle;[B)V
    .locals 7
    .param p1, "googlePlayServicesStatusCode"    # I
    .param p2, "recoveryAction"    # Landroid/app/PendingIntent;
    .param p3, "statusCode"    # I
    .param p4, "headers"    # Landroid/os/Bundle;
    .param p5, "body"    # [B

    .prologue
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;-><init>(IILandroid/app/PendingIntent;ILandroid/os/Bundle;[B)V

    return-void
.end method

.method private constructor <init>(ILandroid/os/Bundle;[B)V
    .locals 7
    .param p1, "responseCode"    # I
    .param p2, "headers"    # Landroid/os/Bundle;
    .param p3, "body"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;-><init>(IILandroid/app/PendingIntent;ILandroid/os/Bundle;[B)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Map;[B)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p3, "body"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->zzE(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;-><init>(ILandroid/os/Bundle;[B)V

    return-void
.end method

.method public static createErrorProxyResponse(ILandroid/app/PendingIntent;ILjava/util/Map;[B)Lcom/google/android/gms/auth/api/proxy/ProxyResponse;
    .locals 7
    .param p0, "googlePlayServicesStatusCode"    # I
    .param p1, "recoveryAction"    # Landroid/app/PendingIntent;
    .param p2, "statusCode"    # I
    .param p4, "body"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/android/gms/auth/api/proxy/ProxyResponse;"
        }
    .end annotation

    .prologue
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;

    const/4 v1, 0x1

    invoke-static {p3}, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->zzE(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v5

    move v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;-><init>(IILandroid/app/PendingIntent;ILandroid/os/Bundle;[B)V

    return-object v0
.end method

.method private static zzE(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->zzSK:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->zzSK:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/proxy/zzc;->zza(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;Landroid/os/Parcel;I)V

    return-void
.end method
