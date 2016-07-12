.class public abstract Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.super Ljava/lang/Object;
.source "ObjectIdGenerator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method


# virtual methods
.method public abstract canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public abstract forScope(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract generateId(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getScope()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public isValidReferencePropertyName(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parser"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract key(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
.end method

.method public maySerializeAsObject()Z
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract newForSerialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<TT;>;"
        }
    .end annotation
.end method
