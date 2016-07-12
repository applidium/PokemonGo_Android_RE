.class public interface abstract Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormatVisitor;
.super Ljava/lang/Object;
.source "JsonValueFormatVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormatVisitor$Base;
    }
.end annotation


# virtual methods
.method public abstract enumTypes(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract format(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V
.end method
