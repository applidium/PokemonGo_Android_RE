.class public interface abstract Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
.super Ljava/lang/Object;
.source "ClassIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MixInResolver"
.end annotation


# virtual methods
.method public abstract copy()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
.end method

.method public abstract findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method
