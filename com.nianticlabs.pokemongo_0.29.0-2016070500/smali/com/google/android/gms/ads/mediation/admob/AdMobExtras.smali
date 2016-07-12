.class public final Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;->mExtras:Landroid/os/Bundle;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method
