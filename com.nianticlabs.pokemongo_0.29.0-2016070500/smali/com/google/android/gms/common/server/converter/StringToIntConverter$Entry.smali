.class public final Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/converter/StringToIntConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/converter/zzc;


# instance fields
.field final versionCode:I

.field final zzagS:Ljava/lang/String;

.field final zzagT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/server/converter/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/converter/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->CREATOR:Lcom/google/android/gms/common/server/converter/zzc;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "stringValue"    # Ljava/lang/String;
    .param p3, "intValue"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->zzagS:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->zzagT:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "stringValue"    # Ljava/lang/String;
    .param p2, "intValue"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->zzagS:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->zzagT:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->CREATOR:Lcom/google/android/gms/common/server/converter/zzc;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->CREATOR:Lcom/google/android/gms/common/server/converter/zzc;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/server/converter/zzc;->zza(Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;Landroid/os/Parcel;I)V

    return-void
.end method
