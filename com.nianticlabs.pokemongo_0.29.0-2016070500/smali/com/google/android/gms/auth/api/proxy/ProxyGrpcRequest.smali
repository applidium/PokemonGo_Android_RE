.class public Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final body:[B

.field public final hostname:Ljava/lang/String;

.field public final method:Ljava/lang/String;

.field public final port:I

.field public final timeoutMillis:J

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/proxy/zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/proxy/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IJ[BLjava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeoutMillis"    # J
    .param p6, "body"    # [B
    .param p7, "method"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->hostname:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->port:I

    iput-wide p4, p0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->timeoutMillis:J

    iput-object p6, p0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->body:[B

    iput-object p7, p0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->method:Ljava/lang/String;

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
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/proxy/zza;->zza(Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;Landroid/os/Parcel;I)V

    return-void
.end method
