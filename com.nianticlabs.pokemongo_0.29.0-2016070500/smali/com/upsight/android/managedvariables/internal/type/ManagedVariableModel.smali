.class abstract Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;
.super Ljava/lang/Object;
.source "ManagedVariableModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field tag:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tag"
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "value"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;, "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;, "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;, "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;->value:Ljava/lang/Object;

    return-object v0
.end method
