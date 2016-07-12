.class public final Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;
.super Lcom/fasterxml/jackson/databind/util/TypeKey;
.source "SerializerCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/SerializerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypeKey"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V
    .locals 0
    .param p1, "key"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "typed"    # Z

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/TypeKey;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .param p2, "typed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/TypeKey;-><init>(Ljava/lang/Class;Z)V

    .line 204
    return-void
.end method
