.class Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;
.super Ljava/lang/Object;
.source "UxmContentActions.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->modifyValue(Lcom/upsight/android/managedvariables/internal/type/UxmContent;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/JsonNode;)V
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
.field final synthetic this$0:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;

.field final synthetic val$actionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$content:Lcom/upsight/android/managedvariables/internal/type/UxmContent;

.field final synthetic val$logger:Lcom/upsight/android/logger/UpsightLogger;


# direct methods
.method constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;Lcom/upsight/android/logger/UpsightLogger;Ljava/lang/Class;Lcom/upsight/android/managedvariables/internal/type/UxmContent;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;->this$0:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;

    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;->val$logger:Lcom/upsight/android/logger/UpsightLogger;

    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;->val$clazz:Ljava/lang/Class;

    iput-object p4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;->val$content:Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    iput-object p5, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;->val$actionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 345
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;->val$logger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fetch managed variable of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;->val$content:Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;->val$actionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    iget-object v1, v1, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 350
    return-void
.end method
