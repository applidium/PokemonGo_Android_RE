.class public final enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.super Ljava/lang/Enum;
.source "JsonInclude.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonInclude;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Include"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/annotation/JsonInclude$Include;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field public static final enum ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field public static final enum NON_ABSENT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field public static final enum NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field public static final enum NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field public static final enum NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field public static final enum USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 71
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const-string v1, "NON_NULL"

    invoke-direct {v0, v1, v4}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 86
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const-string v1, "NON_ABSENT"

    invoke-direct {v0, v1, v5}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_ABSENT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 117
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const-string v1, "NON_EMPTY"

    invoke-direct {v0, v1, v6}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 129
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const-string v1, "NON_DEFAULT"

    invoke-direct {v0, v1, v7}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 140
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const-string v1, "USE_DEFAULTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_ABSENT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-object v0
.end method
