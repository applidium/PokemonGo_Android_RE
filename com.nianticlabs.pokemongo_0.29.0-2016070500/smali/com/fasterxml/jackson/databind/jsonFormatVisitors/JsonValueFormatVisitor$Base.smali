.class public Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormatVisitor$Base;
.super Ljava/lang/Object;
.source "JsonValueFormatVisitor.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormatVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormatVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enumTypes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "enums":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public format(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V
    .locals 0
    .param p1, "format"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .prologue
    .line 24
    return-void
.end method
