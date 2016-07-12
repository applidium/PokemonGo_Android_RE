.class Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$2;
.super Ljava/lang/Object;
.source "UxmContentActions.java"

# interfaces
.implements Lrx/functions/Func1;


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
        "Lrx/functions/Func1",
        "<",
        "Lcom/fasterxml/jackson/databind/node/ObjectNode;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;

.field final synthetic val$propertyName:Ljava/lang/String;

.field final synthetic val$propertyValue:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$2;->this$0:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;

    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$2;->val$propertyName:Ljava/lang/String;

    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$2;->val$propertyValue:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "model"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$2;->val$propertyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$2;->val$propertyValue:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 280
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$2;->call(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
