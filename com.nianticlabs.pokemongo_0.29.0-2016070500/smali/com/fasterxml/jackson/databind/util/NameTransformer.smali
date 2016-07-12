.class public abstract Lcom/fasterxml/jackson/databind/util/NameTransformer;
.super Ljava/lang/Object;
.source "NameTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;,
        Lcom/fasterxml/jackson/databind/util/NameTransformer$NopTransformer;
    }
.end annotation


# static fields
.field public static final NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/fasterxml/jackson/databind/util/NameTransformer$NopTransformer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/NameTransformer$NopTransformer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chainedTransformer(Lcom/fasterxml/jackson/databind/util/NameTransformer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .locals 1
    .param p0, "t1"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .param p1, "t2"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .prologue
    .line 101
    new-instance v0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;-><init>(Lcom/fasterxml/jackson/databind/util/NameTransformer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V

    return-object v0
.end method

.method public static simpleTransformer(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move v0, v1

    .line 42
    .local v0, "hasPrefix":Z
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 44
    .local v1, "hasSuffix":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 45
    if-eqz v1, :cond_2

    .line 46
    new-instance v2, Lcom/fasterxml/jackson/databind/util/NameTransformer$1;

    invoke-direct {v2, p0, p1}, Lcom/fasterxml/jackson/databind/util/NameTransformer$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_2
    return-object v2

    .end local v0    # "hasPrefix":Z
    .end local v1    # "hasSuffix":Z
    :cond_0
    move v0, v2

    .line 41
    goto :goto_0

    .restart local v0    # "hasPrefix":Z
    :cond_1
    move v1, v2

    .line 42
    goto :goto_1

    .line 63
    .restart local v1    # "hasSuffix":Z
    :cond_2
    new-instance v2, Lcom/fasterxml/jackson/databind/util/NameTransformer$2;

    invoke-direct {v2, p0}, Lcom/fasterxml/jackson/databind/util/NameTransformer$2;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 77
    :cond_3
    if-eqz v1, :cond_4

    .line 78
    new-instance v2, Lcom/fasterxml/jackson/databind/util/NameTransformer$3;

    invoke-direct {v2, p1}, Lcom/fasterxml/jackson/databind/util/NameTransformer$3;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 92
    :cond_4
    sget-object v2, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    goto :goto_2
.end method


# virtual methods
.method public abstract reverse(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract transform(Ljava/lang/String;)Ljava/lang/String;
.end method
