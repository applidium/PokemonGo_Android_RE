.class public Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/zzc;


# instance fields
.field description:Ljava/lang/String;

.field final version:I

.field zzTH:Ljava/lang/String;

.field zzTI:Ljava/lang/String;

.field zzTJ:Ljava/lang/String;

.field zzTK:Ljava/lang/String;

.field zzTL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zzTM:Lcom/google/android/gms/auth/firstparty/shared/FACLData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/zzc;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/auth/firstparty/shared/FACLData;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;
    .param p4, "iconBase64"    # Ljava/lang/String;
    .param p5, "paclPickerDataBase64"    # Ljava/lang/String;
    .param p6, "service"    # Ljava/lang/String;
    .param p8, "friendPickerData"    # Lcom/google/android/gms/auth/firstparty/shared/FACLData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/auth/firstparty/shared/FACLData;",
            ")V"
        }
    .end annotation

    .prologue
    .local p7, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->zzTH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->zzTI:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->zzTJ:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->zzTK:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->zzTL:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->zzTM:Lcom/google/android/gms/auth/firstparty/shared/FACLData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/zzc;->zza(Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;Landroid/os/Parcel;I)V

    return-void
.end method
