.class abstract Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;
.super Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.source "ObjectIdGenerators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/ObjectIdGenerators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Base"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final _scope:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base<TT;>;"
    .local p1, "scope":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;->_scope:Ljava/lang/Class;

    .line 20
    return-void
.end method


# virtual methods
.method public canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base<TT;>;"
    .local p1, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->getScope()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;->_scope:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract generateId(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public final getScope()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;->_scope:Ljava/lang/Class;

    return-object v0
.end method
