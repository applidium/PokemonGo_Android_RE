.class Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$3;
.super Ljava/lang/Object;
.source "UxmContentActions.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->call(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;


# direct methods
.method constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$3;->this$1:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$3;->this$1:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;

    iget-object v0, v0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$content:Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$3;->this$1:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;

    iget-object v1, v1, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$actionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    iget-object v1, v1, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 338
    return-void
.end method
