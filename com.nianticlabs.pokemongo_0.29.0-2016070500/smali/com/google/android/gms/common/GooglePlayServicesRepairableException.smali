.class public Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
.super Lcom/google/android/gms/common/UserRecoverableException;


# instance fields
.field private final zzRy:I


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "connectionStatusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/UserRecoverableException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    iput p1, p0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->zzRy:I

    return-void
.end method


# virtual methods
.method public getConnectionStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->zzRy:I

    return v0
.end method
