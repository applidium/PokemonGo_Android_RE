.class public final enum Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
.super Ljava/lang/Enum;
.source "JsonProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Access"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/annotation/JsonProperty$Access;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

.field public static final enum AUTO:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

.field public static final enum READ_ONLY:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

.field public static final enum READ_WRITE:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

.field public static final enum WRITE_ONLY:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->AUTO:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    .line 141
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    const-string v1, "READ_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->READ_ONLY:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    .line 149
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    const-string v1, "WRITE_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->WRITE_ONLY:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    .line 157
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    const-string v1, "READ_WRITE"

    invoke-direct {v0, v1, v5}, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->READ_WRITE:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->AUTO:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->READ_ONLY:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->WRITE_ONLY:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->READ_WRITE:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

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
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    return-object v0
.end method
