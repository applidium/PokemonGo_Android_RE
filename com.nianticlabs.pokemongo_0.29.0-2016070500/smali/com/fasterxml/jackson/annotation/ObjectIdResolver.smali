.class public interface abstract Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
.super Ljava/lang/Object;
.source "ObjectIdResolver.java"


# virtual methods
.method public abstract bindItem(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;Ljava/lang/Object;)V
.end method

.method public abstract canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Z
.end method

.method public abstract newForDeserialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
.end method

.method public abstract resolveId(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)Ljava/lang/Object;
.end method
