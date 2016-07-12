.class final Lcom/upsight/android/managedvariables/internal/type/UxmSchema$1;
.super Ljava/util/HashMap;
.source "UxmSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
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
        "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 53
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedString;

    const-class v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$StringSchema;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;

    const-class v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BooleanSchema;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;

    const-class v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$IntSchema;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;

    const-class v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$FloatSchema;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
