.class public interface abstract Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
.super Ljava/lang/Object;
.source "VisibilityChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$1;,
        Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
.end method

.method public abstract isCreatorVisible(Ljava/lang/reflect/Member;)Z
.end method

.method public abstract isFieldVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)Z
.end method

.method public abstract isFieldVisible(Ljava/lang/reflect/Field;)Z
.end method

.method public abstract isGetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
.end method

.method public abstract isGetterVisible(Ljava/lang/reflect/Method;)Z
.end method

.method public abstract isIsGetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
.end method

.method public abstract isIsGetterVisible(Ljava/lang/reflect/Method;)Z
.end method

.method public abstract isSetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
.end method

.method public abstract isSetterVisible(Ljava/lang/reflect/Method;)Z
.end method

.method public abstract with(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/fasterxml/jackson/annotation/JsonAutoDetect;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonAutoDetect;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withCreatorVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withFieldVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withIsGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withSetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/PropertyAccessor;",
            "Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method
