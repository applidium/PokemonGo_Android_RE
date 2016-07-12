.class public Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PascalCaseStrategy;
.super Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PascalCaseStrategy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 295
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 306
    .end local p1    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 299
    .restart local p1    # "input":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 300
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 301
    .local v2, "uc":C
    if-eq v0, v2, :cond_0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
