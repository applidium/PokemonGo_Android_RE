.class public final enum Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
.super Ljava/lang/Enum;
.source "ObjectMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ObjectMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultTyping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

.field public static final enum JAVA_LANG_OBJECT:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

.field public static final enum NON_CONCRETE_AND_ARRAYS:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

.field public static final enum NON_FINAL:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

.field public static final enum OBJECT_AND_NON_CONCRETE:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    const-string v1, "JAVA_LANG_OBJECT"

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->JAVA_LANG_OBJECT:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    .line 152
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    const-string v1, "OBJECT_AND_NON_CONCRETE"

    invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->OBJECT_AND_NON_CONCRETE:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    .line 161
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    const-string v1, "NON_CONCRETE_AND_ARRAYS"

    invoke-direct {v0, v1, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->NON_CONCRETE_AND_ARRAYS:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    .line 172
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    const-string v1, "NON_FINAL"

    invoke-direct {v0, v1, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->NON_FINAL:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->JAVA_LANG_OBJECT:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->OBJECT_AND_NON_CONCRETE:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->NON_CONCRETE_AND_ARRAYS:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->NON_FINAL:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->$VALUES:[Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

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
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 135
    const-class v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->$VALUES:[Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    return-object v0
.end method
