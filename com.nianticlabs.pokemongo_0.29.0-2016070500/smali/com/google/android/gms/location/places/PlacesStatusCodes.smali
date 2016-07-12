.class public Lcom/google/android/gms/location/places/PlacesStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final ACCESS_NOT_CONFIGURED:I = 0x232b

.field public static final DEVICE_RATE_LIMIT_EXCEEDED:I = 0x232e

.field public static final INVALID_APP:I = 0x2330

.field public static final INVALID_ARGUMENT:I = 0x232c

.field public static final KEY_EXPIRED:I = 0x232f

.field public static final KEY_INVALID:I = 0x232a

.field public static final RATE_LIMIT_EXCEEDED:I = 0x232d

.field public static final USAGE_LIMIT_EXCEEDED:I = 0x2329


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "statusCode"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "PLACES_API_QUOTA_FAILED"

    goto :goto_0

    :sswitch_1
    const-string v0, "PLACES_API_USAGE_LIMIT_EXCEEDED"

    goto :goto_0

    :sswitch_2
    const-string v0, "PLACES_API_KEY_INVALID"

    goto :goto_0

    :sswitch_3
    const-string v0, "PLACES_API_ACCESS_NOT_CONFIGURED"

    goto :goto_0

    :sswitch_4
    const-string v0, "PLACES_API_INVALID_ARGUMENT"

    goto :goto_0

    :sswitch_5
    const-string v0, "PLACES_API_RATE_LIMIT_EXCEEDED"

    goto :goto_0

    :sswitch_6
    const-string v0, "PLACES_API_DEVICE_RATE_LIMIT_EXCEEDED"

    goto :goto_0

    :sswitch_7
    const-string v0, "PLACES_API_KEY_EXPIRED"

    goto :goto_0

    :sswitch_8
    const-string v0, "PLACE_PROXIMITY_UNKNOWN"

    goto :goto_0

    :sswitch_9
    const-string v0, "NEARBY_ALERTS_NOT_AVAILABLE"

    goto :goto_0

    :sswitch_a
    const-string v0, "PLACES_API_INVALID_APP"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2328 -> :sswitch_0
        0x2329 -> :sswitch_1
        0x232a -> :sswitch_2
        0x232b -> :sswitch_3
        0x232c -> :sswitch_4
        0x232d -> :sswitch_5
        0x232e -> :sswitch_6
        0x232f -> :sswitch_7
        0x2330 -> :sswitch_a
        0x238d -> :sswitch_8
        0x238e -> :sswitch_9
    .end sparse-switch
.end method

.method public static zzhp(I)Lcom/google/android/gms/common/api/Status;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/location/places/PlacesStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/location/places/PlacesStatusCodes;->zzk(ILjava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public static zzk(ILjava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
