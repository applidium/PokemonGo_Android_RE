.class public Lcom/google/android/gms/auth/api/credentials/Credential;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/Credential$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/Credential;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_KEY:Ljava/lang/String; = "com.google.android.gms.credentials.Credential"


# instance fields
.field private final mName:Ljava/lang/String;

.field final mVersionCode:I

.field private final zzSh:Landroid/net/Uri;

.field private final zzSi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;"
        }
    .end annotation
.end field

.field private final zzSj:Ljava/lang/String;

.field private final zzSk:Ljava/lang/String;

.field private final zzSl:Ljava/lang/String;

.field private final zzSm:Ljava/lang/String;

.field private final zzwN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "profilePictureUri"    # Landroid/net/Uri;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "accountType"    # Ljava/lang/String;
    .param p8, "generatedPassword"    # Ljava/lang/String;
    .param p9, "generatedHintId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "idTokens":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/auth/api/credentials/IdToken;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzwN:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSh:Landroid/net/Uri;

    if-nez p5, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSi:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSj:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSk:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSl:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSm:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzwN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/auth/api/credentials/Credential;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSh:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSi:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSj:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSk:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSm:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzwN:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzwN:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSh:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSh:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSj:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSj:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSk:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSk:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSl:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSk:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneratedPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzwN:Ljava/lang/String;

    return-object v0
.end method

.method public getIdTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSi:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSj:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePictureUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSh:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzwN:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSh:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSj:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSk:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSl:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/zza;->zza(Lcom/google/android/gms/auth/api/credentials/Credential;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzlI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzSm:Ljava/lang/String;

    return-object v0
.end method
