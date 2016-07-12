.class public Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor$Base;
.super Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormatVisitor$Base;
.source "JsonStringFormatVisitor.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormatVisitor$Base;-><init>()V

    return-void
.end method
