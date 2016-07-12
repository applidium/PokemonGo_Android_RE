.class Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$2;
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
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;


# direct methods
.method constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$2;->this$1:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 328
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$2;->this$1:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;

    iget-object v0, v0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$logger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to modify managed variable of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4$2;->this$1:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;

    iget-object v3, v3, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    return-void
.end method
