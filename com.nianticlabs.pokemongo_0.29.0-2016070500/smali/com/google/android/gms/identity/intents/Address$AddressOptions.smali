.class public final Lcom/google/android/gms/identity/intents/Address$AddressOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identity/intents/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressOptions"
.end annotation


# instance fields
.field public final theme:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/identity/intents/Address$AddressOptions;->theme:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "theme"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/identity/intents/Address$AddressOptions;->theme:I

    return-void
.end method
