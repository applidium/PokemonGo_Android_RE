.class public final enum Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
.super Ljava/lang/Enum;
.source "JsonAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

.field public static final enum ANY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

.field public static final enum DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

.field public static final enum NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

.field public static final enum NON_PRIVATE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

.field public static final enum PROTECTED_AND_PUBLIC:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

.field public static final enum PUBLIC_ONLY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ANY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 50
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    const-string v1, "NON_PRIVATE"

    invoke-direct {v0, v1, v4}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NON_PRIVATE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 56
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    const-string v1, "PROTECTED_AND_PUBLIC"

    invoke-direct {v0, v1, v5}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->PROTECTED_AND_PUBLIC:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 61
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    const-string v1, "PUBLIC_ONLY"

    invoke-direct {v0, v1, v6}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 67
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v7}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 74
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    const-string v1, "DEFAULT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ANY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NON_PRIVATE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->PROTECTED_AND_PUBLIC:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    return-object v0
.end method


# virtual methods
.method public isVisible(Ljava/lang/reflect/Member;)Z
    .locals 4
    .param p1, "m"    # Ljava/lang/reflect/Member;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonAutoDetect$Visibility:[I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 92
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 81
    goto :goto_0

    .line 83
    :pswitch_2
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 85
    :pswitch_3
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    :pswitch_4
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
