.class Lcom/upsight/android/managedvariables/internal/type/ManagedInt$Model;
.super Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;
.source "ManagedInt.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "com.upsight.uxm.integer"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/ManagedInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Model"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;-><init>()V

    return-void
.end method
