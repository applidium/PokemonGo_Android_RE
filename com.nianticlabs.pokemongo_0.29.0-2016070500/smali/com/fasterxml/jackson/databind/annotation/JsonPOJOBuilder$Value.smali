.class public Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
.super Ljava/lang/Object;
.source "JsonPOJOBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# instance fields
.field public final buildMethodName:Ljava/lang/String;

.field public final withPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;)V
    .locals 1
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;->buildMethodName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;->buildMethodName:Ljava/lang/String;

    .line 71
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;->withPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;->withPrefix:Ljava/lang/String;

    .line 72
    return-void
.end method
