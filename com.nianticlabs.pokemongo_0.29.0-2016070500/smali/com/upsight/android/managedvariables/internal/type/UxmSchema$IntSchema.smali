.class public Lcom/upsight/android/managedvariables/internal/type/UxmSchema$IntSchema;
.super Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
.source "UxmSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public max:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "max"
    .end annotation
.end field

.field public min:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "min"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;-><init>()V

    return-void
.end method
