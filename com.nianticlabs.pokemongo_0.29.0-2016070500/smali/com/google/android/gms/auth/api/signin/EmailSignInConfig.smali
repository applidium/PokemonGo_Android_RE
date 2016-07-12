.class public Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field private final zzSU:Landroid/net/Uri;

.field private zzSV:Ljava/lang/String;

.field private zzSW:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/signin/zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "serverWidgetUrl"    # Landroid/net/Uri;
    .param p3, "modeQueryName"    # Ljava/lang/String;
    .param p4, "tosUrl"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Server widget url cannot be null in order to use email/password sign in."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Server widget url cannot be null in order to use email/password sign in."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Invalid server widget url"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzSU:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzSV:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzSW:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    :try_start_0
    check-cast p1, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzSU:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzlO()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzSW:Landroid/net/Uri;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzlP()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzSV:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzlQ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzSW:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzlP()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzSV:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzlQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzc;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzSU:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzSW:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzSV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzmd()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/zza;->zza(Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzlO()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzSU:Landroid/net/Uri;

    return-object v0
.end method

.method public zzlP()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzSW:Landroid/net/Uri;

    return-object v0
.end method

.method public zzlQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->zzSV:Ljava/lang/String;

    return-object v0
.end method
