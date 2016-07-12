.class Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$1;
.super Ljava/lang/Object;
.source "UxmContentActions.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->call(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;

.field final synthetic val$modelNode:Lcom/fasterxml/jackson/databind/node/ObjectNode;


# direct methods
.method constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$1;->this$1:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;

    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$1;->val$modelNode:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$1;->this$1:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;

    iget-object v0, v0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$logger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modified managed variable of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$1;->this$1:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;

    iget-object v3, v3, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$1;->val$modelNode:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    return-void
.end method
