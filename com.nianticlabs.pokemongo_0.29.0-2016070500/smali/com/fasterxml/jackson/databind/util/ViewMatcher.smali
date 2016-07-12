.class public Lcom/fasterxml/jackson/databind/util/ViewMatcher;
.super Ljava/lang/Object;
.source "ViewMatcher.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;,
        Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;
    }
.end annotation


# static fields
.field protected static final EMPTY:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher;->EMPTY:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static construct([Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/ViewMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/util/ViewMatcher;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 18
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher;->EMPTY:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    .line 26
    :goto_0
    return-object v0

    .line 20
    :cond_0
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 26
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;-><init>([Ljava/lang/Class;)V

    goto :goto_0

    .line 22
    :pswitch_0
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher;->EMPTY:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    goto :goto_0

    .line 24
    :pswitch_1
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isVisibleForView(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method
