.class final Lcom/upsight/android/managedvariables/internal/type/UxmSchema$3;
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
        "Ljava/lang/String;",
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
    .line 74
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 75
    const-string v0, "com.upsight.uxm.string"

    const-class v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$StringSchema;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "com.upsight.uxm.boolean"

    const-class v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BooleanSchema;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "com.upsight.uxm.integer"

    const-class v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$IntSchema;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "com.upsight.uxm.float"

    const-class v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$FloatSchema;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method
