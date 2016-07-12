.class final enum Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;
.super Ljava/lang/Enum;
.source "FusedLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/location/FusedLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GoogleApiState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

.field public static final enum STARTED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

.field public static final enum STOPPED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->STARTED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    .line 37
    new-instance v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    sget-object v1, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->STARTED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->$VALUES:[Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    return-object v0
.end method

.method public static values()[Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->$VALUES:[Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    invoke-virtual {v0}, [Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticlabs/nia/location/FusedLocationProvider$GoogleApiState;

    return-object v0
.end method
