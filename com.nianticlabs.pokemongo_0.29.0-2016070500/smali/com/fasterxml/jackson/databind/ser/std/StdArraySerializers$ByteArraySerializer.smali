.class public Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ByteArraySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/ByteArraySerializer;
.source "StdArraySerializers.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteArraySerializer"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/std/ByteArraySerializer;-><init>()V

    return-void
.end method
