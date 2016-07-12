.class final Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;
.super Lcom/fasterxml/jackson/databind/util/ViewMatcher;
.source "ViewMatcher.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/ViewMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Multi"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _views:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "v":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;->_views:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public isVisibleForView(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;->_views:[Ljava/lang/Class;

    array-length v1, v3

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 60
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;->_views:[Ljava/lang/Class;

    aget-object v2, v3, v0

    .line 61
    .local v2, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq p1, v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    :cond_0
    const/4 v3, 0x1

    .line 65
    .end local v2    # "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return v3

    .line 59
    .restart local v2    # "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
