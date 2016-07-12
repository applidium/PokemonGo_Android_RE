.class final Lcom/upsight/android/managedvariables/internal/type/UxmSchema$2;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 64
    const-string v0, "string"

    const-string v1, "com.upsight.uxm.string"

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "boolean"

    const-string v1, "com.upsight.uxm.boolean"

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "integer"

    const-string v1, "com.upsight.uxm.integer"

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "float"

    const-string v1, "com.upsight.uxm.float"

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method
