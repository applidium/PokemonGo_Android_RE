.class final Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;
.super Ljava/util/HashMap;
.source "UxmContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$InternalFactory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 58
    const-string v0, "action_uxm_enumerate"

    new-instance v1, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1$1;

    invoke-direct {v1, p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1$1;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "action_set_bundle_id"

    new-instance v1, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1$2;

    invoke-direct {v1, p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1$2;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "action_modify_value"

    new-instance v1, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1$3;

    invoke-direct {v1, p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1$3;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "action_notify_uxm_values_synchronized"

    new-instance v1, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1$4;

    invoke-direct {v1, p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1$4;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "action_destroy"

    new-instance v1, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1$5;

    invoke-direct {v1, p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1$5;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method
