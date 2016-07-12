.class public final Lrx/internal/operators/OperatorToMap$DefaultToMapFactory;
.super Ljava/lang/Object;
.source "OperatorToMap.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorToMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultToMapFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorToMap$DefaultToMapFactory;, "Lrx/internal/operators/OperatorToMap$DefaultToMapFactory<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorToMap$DefaultToMapFactory;, "Lrx/internal/operators/OperatorToMap$DefaultToMapFactory<TK;TV;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorToMap$DefaultToMapFactory;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorToMap$DefaultToMapFactory;, "Lrx/internal/operators/OperatorToMap$DefaultToMapFactory<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
