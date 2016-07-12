.class public Lcom/fasterxml/jackson/databind/util/EmptyIterator;
.super Ljava/lang/Object;
.source "EmptyIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/fasterxml/jackson/databind/util/EmptyIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/EmptyIterator",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/fasterxml/jackson/databind/util/EmptyIterator;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/EmptyIterator;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/EmptyIterator;->instance:Lcom/fasterxml/jackson/databind/util/EmptyIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/EmptyIterator;, "Lcom/fasterxml/jackson/databind/util/EmptyIterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 17
    sget-object v0, Lcom/fasterxml/jackson/databind/util/EmptyIterator;->instance:Lcom/fasterxml/jackson/databind/util/EmptyIterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/EmptyIterator;, "Lcom/fasterxml/jackson/databind/util/EmptyIterator<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/EmptyIterator;, "Lcom/fasterxml/jackson/databind/util/EmptyIterator<TT;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/EmptyIterator;, "Lcom/fasterxml/jackson/databind/util/EmptyIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
