.class final Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$1;
.super Ljava/util/HashMap;
.source "ManagedVariableManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;",
        ">;",
        "Ljava/lang/Class",
        "<+",
        "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 38
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedString;

    const-class v1, Lcom/upsight/android/managedvariables/internal/type/ManagedString$Model;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;

    const-class v1, Lcom/upsight/android/managedvariables/internal/type/ManagedBoolean$Model;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;

    const-class v1, Lcom/upsight/android/managedvariables/internal/type/ManagedInt$Model;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;

    const-class v1, Lcom/upsight/android/managedvariables/internal/type/ManagedFloat$Model;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method
