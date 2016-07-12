.class public final enum Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;
.super Ljava/lang/Enum;
.source "JsonValueFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum COLOR:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum DATE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum DATE_TIME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum EMAIL:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum HOST_NAME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum IPV6:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum IP_ADDRESS:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum PHONE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum REGEX:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum STYLE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum TIME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum URI:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

.field public static final enum UTC_MILLISEC:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;


# instance fields
.field private final _desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const-string v1, "DATE_TIME"

    const-string v2, "date-time"

    invoke-direct {v0, v1, v4, v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->DATE_TIME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 22
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const-string v1, "DATE"

    const-string v2, "date"

    invoke-direct {v0, v1, v5, v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->DATE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 29
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const-string v1, "TIME"

    const-string v2, "time"

    invoke-direct {v0, v1, v6, v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->TIME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 37
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const-string v1, "UTC_MILLISEC"

    const-string v2, "utc-millisec"

    invoke-direct {v0, v1, v7, v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->UTC_MILLISEC:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 43
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const-string v1, "REGEX"

    const-string v2, "regex"

    invoke-direct {v0, v1, v8, v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->REGEX:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const-string v1, "COLOR"

    const/4 v2, 0x5

    const-string v3, "color"

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->COLOR:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 55
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const-string v1, "STYLE"

    const/4 v2, 0x6

    const-string v3, "style"

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->STYLE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 60
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const-string v1, "PHONE"

    const/4 v2, 0x7

    const-string v3, "phone"

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->PHONE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 65
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const-string v1, "URI"

    const/16 v2, 0x8

    const-string v3, "uri"

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->URI:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 70
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const-string v1, "EMAIL"

    const/16 v2, 0x9

    const-string v3, "email"

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->EMAIL:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 75
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const-string v1, "IP_ADDRESS"

    const/16 v2, 0xa

    const-string v3, "ip-address"

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->IP_ADDRESS:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 80
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const-string v1, "IPV6"

    const/16 v2, 0xb

    const-string v3, "ipv6"

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->IPV6:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 85
    new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    const-string v1, "HOST_NAME"

    const/16 v2, 0xc

    const-string v3, "host-name"

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->HOST_NAME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    .line 8
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->DATE_TIME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->DATE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->TIME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->UTC_MILLISEC:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->REGEX:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->COLOR:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->STYLE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->PHONE:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->URI:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->EMAIL:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->IP_ADDRESS:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->IPV6:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->HOST_NAME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->$VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->_desc:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->$VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->_desc:Ljava/lang/String;

    return-object v0
.end method
