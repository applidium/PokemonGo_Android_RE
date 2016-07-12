.class public Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
.super Ljava/lang/Object;
.source "JsonInclude.java"

# interfaces
.implements Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonInclude;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue",
        "<",
        "Lcom/fasterxml/jackson/annotation/JsonInclude;",
        ">;"
    }
.end annotation


# static fields
.field protected static final EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;


# instance fields
.field protected final contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field protected final valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 160
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V
    .locals 0
    .param p1, "vi"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .param p2, "ci"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    if-nez p1, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .end local p1    # "vi":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 171
    if-nez p2, :cond_1

    sget-object p2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .end local p2    # "ci":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :cond_1
    iput-object p2, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/annotation/JsonInclude;)V
    .locals 2
    .param p1, "src"    # Lcom/fasterxml/jackson/annotation/JsonInclude;

    .prologue
    .line 166
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonInclude;->value()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonInclude;->content()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    .line 167
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1
    .param p0, "valueIncl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .param p1, "contentIncl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 196
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p1, v0, :cond_0

    .line 198
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 200
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    goto :goto_0
.end method

.method public static empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/annotation/JsonInclude;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1
    .param p0, "src"    # Lcom/fasterxml/jackson/annotation/JsonInclude;

    .prologue
    .line 208
    if-nez p0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude;)V

    goto :goto_0
.end method


# virtual methods
.method public getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-object v0
.end method

.method public getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-object v0
.end method

.method public valueFor()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/fasterxml/jackson/annotation/JsonInclude;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonInclude;

    return-object v0
.end method

.method public withContentInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 2
    .param p1, "incl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 2
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 184
    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_0
    iget-object v0, p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withValueInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    iget-object v1, p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withContentInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p0

    goto :goto_0
.end method

.method public withValueInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 2
    .param p1, "incl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    move-object p0, v0

    goto :goto_0
.end method
