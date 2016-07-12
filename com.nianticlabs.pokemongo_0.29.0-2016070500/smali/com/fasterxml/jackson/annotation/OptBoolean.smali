.class public final enum Lcom/fasterxml/jackson/annotation/OptBoolean;
.super Ljava/lang/Enum;
.source "OptBoolean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/annotation/OptBoolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/annotation/OptBoolean;

.field public static final enum DEFAULT:Lcom/fasterxml/jackson/annotation/OptBoolean;

.field public static final enum FALSE:Lcom/fasterxml/jackson/annotation/OptBoolean;

.field public static final enum TRUE:Lcom/fasterxml/jackson/annotation/OptBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/fasterxml/jackson/annotation/OptBoolean;

    const-string v1, "TRUE"

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/annotation/OptBoolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/OptBoolean;->TRUE:Lcom/fasterxml/jackson/annotation/OptBoolean;

    .line 29
    new-instance v0, Lcom/fasterxml/jackson/annotation/OptBoolean;

    const-string v1, "FALSE"

    invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/annotation/OptBoolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/OptBoolean;->FALSE:Lcom/fasterxml/jackson/annotation/OptBoolean;

    .line 37
    new-instance v0, Lcom/fasterxml/jackson/annotation/OptBoolean;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/fasterxml/jackson/annotation/OptBoolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/OptBoolean;->DEFAULT:Lcom/fasterxml/jackson/annotation/OptBoolean;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fasterxml/jackson/annotation/OptBoolean;

    sget-object v1, Lcom/fasterxml/jackson/annotation/OptBoolean;->TRUE:Lcom/fasterxml/jackson/annotation/OptBoolean;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/annotation/OptBoolean;->FALSE:Lcom/fasterxml/jackson/annotation/OptBoolean;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/annotation/OptBoolean;->DEFAULT:Lcom/fasterxml/jackson/annotation/OptBoolean;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fasterxml/jackson/annotation/OptBoolean;->$VALUES:[Lcom/fasterxml/jackson/annotation/OptBoolean;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromBoolean(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/annotation/OptBoolean;
    .locals 1
    .param p0, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 50
    sget-object v0, Lcom/fasterxml/jackson/annotation/OptBoolean;->DEFAULT:Lcom/fasterxml/jackson/annotation/OptBoolean;

    .line 52
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/OptBoolean;->TRUE:Lcom/fasterxml/jackson/annotation/OptBoolean;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/annotation/OptBoolean;->FALSE:Lcom/fasterxml/jackson/annotation/OptBoolean;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/OptBoolean;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/fasterxml/jackson/annotation/OptBoolean;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/OptBoolean;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/annotation/OptBoolean;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/fasterxml/jackson/annotation/OptBoolean;->$VALUES:[Lcom/fasterxml/jackson/annotation/OptBoolean;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/annotation/OptBoolean;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/annotation/OptBoolean;

    return-object v0
.end method


# virtual methods
.method public asBoolean()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/fasterxml/jackson/annotation/OptBoolean;->DEFAULT:Lcom/fasterxml/jackson/annotation/OptBoolean;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/OptBoolean;->TRUE:Lcom/fasterxml/jackson/annotation/OptBoolean;

    if-ne p0, v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public asPrimitive()Z
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/fasterxml/jackson/annotation/OptBoolean;->TRUE:Lcom/fasterxml/jackson/annotation/OptBoolean;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
