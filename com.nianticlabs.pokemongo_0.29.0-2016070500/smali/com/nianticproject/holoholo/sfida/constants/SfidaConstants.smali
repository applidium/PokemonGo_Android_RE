.class public Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants;
.super Ljava/lang/Object;
.source "SfidaConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;,
        Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;,
        Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;
    }
.end annotation


# static fields
.field public static final ACTION_BOND_CANCELED:Ljava/lang/String; = "com.nianticproject.holoholo.sfida.ACTION_BOND_CANCELED"

.field public static final ACTION_CERTIFICATE_COMPLETE:Ljava/lang/String; = "com.nianticproject.holoholo.sfida.ACTION_CERTIFICATE_COMPLETE"

.field public static final ACTION_CREATE_BOND:Ljava/lang/String; = "com.nianticproject.holoholo.sfida.ACTION_CREATE_BOND"

.field public static final ACTION_DATA_AVAILABLE:Ljava/lang/String; = "com.nianticproject.holoholo.sfida.ACTION_DATA_AVAILABLE"

.field public static final ACTION_GATT_CONNECTED:Ljava/lang/String; = "com.nianticproject.holoholo.sfida.ACTION_GATT_CONNECTED"

.field public static final ACTION_GATT_DISCONNECTED:Ljava/lang/String; = "com.nianticproject.holoholo.sfida.ACTION_GATT_DISCONNECTED"

.field public static final ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String; = "com.nianticproject.holoholo.sfida.ACTION_GATT_SERVICES_DISCOVERED"

.field public static SFIDA_VERSION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->BETA4:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants;->SFIDA_VERSION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method
