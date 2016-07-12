.class public interface abstract Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
.super Ljava/lang/Object;
.source "TypeIdResolver.java"


# virtual methods
.method public abstract getMechanism()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.end method

.method public abstract idFromBaseType()Ljava/lang/String;
.end method

.method public abstract idFromValue(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract init(Lcom/fasterxml/jackson/databind/JavaType;)V
.end method

.method public abstract typeFromId(Lcom/fasterxml/jackson/databind/DatabindContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
.end method

.method public abstract typeFromId(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
