.class public Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
.super Ljava/lang/Object;
.source "JsonFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Features"
.end annotation


# static fields
.field private static final EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;


# instance fields
.field private final disabled:I

.field private final enabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-direct {v0, v1, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "e"    # I
    .param p2, "d"    # I

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->enabled:I

    .line 262
    iput p2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->disabled:I

    .line 263
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/annotation/JsonFormat;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 2
    .param p0, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat;

    .prologue
    .line 270
    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonFormat;->with()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    move-result-object v0

    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonFormat;->without()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->construct([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v0

    return-object v0
.end method

.method public static construct([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 8
    .param p0, "enabled"    # [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    .param p1, "disabled"    # [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .prologue
    const/4 v7, 0x1

    .line 275
    const/4 v2, 0x0

    .line 276
    .local v2, "e":I
    move-object v0, p0

    .local v0, "arr$":[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 277
    .local v3, "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v6

    shl-int v6, v7, v6

    or-int/2addr v2, v6

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 279
    .end local v3    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    :cond_0
    const/4 v1, 0x0

    .line 280
    .local v1, "d":I
    move-object v0, p1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 281
    .restart local v3    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v6

    shl-int v6, v7, v6

    or-int/2addr v1, v6

    .line 280
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 283
    .end local v3    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    :cond_1
    new-instance v6, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-direct {v6, v2, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    return-object v6
.end method

.method public static empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    return-object v0
.end method


# virtual methods
.method public get(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .prologue
    .line 303
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v2

    shl-int v0, v1, v2

    .line 304
    .local v0, "mask":I
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->disabled:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 305
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 310
    :goto_0
    return-object v1

    .line 307
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->enabled:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 308
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 310
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs with([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 7
    .param p1, "features"    # [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .prologue
    .line 287
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->enabled:I

    .line 288
    .local v1, "e":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 289
    .local v2, "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v6

    shl-int/2addr v5, v6

    or-int/2addr v1, v5

    .line 288
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    :cond_0
    iget v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->enabled:I

    if-ne v1, v5, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :cond_1
    new-instance v5, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    iget v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->disabled:I

    invoke-direct {v5, v1, v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    move-object p0, v5

    goto :goto_1
.end method

.method public varargs without([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 7
    .param p1, "features"    # [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .prologue
    .line 295
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->disabled:I

    .line 296
    .local v1, "d":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 297
    .local v2, "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v6

    shl-int/2addr v5, v6

    or-int/2addr v1, v5

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 299
    .end local v2    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    :cond_0
    iget v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->disabled:I

    if-ne v1, v5, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :cond_1
    new-instance v5, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    iget v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->enabled:I

    invoke-direct {v5, v6, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    move-object p0, v5

    goto :goto_1
.end method
