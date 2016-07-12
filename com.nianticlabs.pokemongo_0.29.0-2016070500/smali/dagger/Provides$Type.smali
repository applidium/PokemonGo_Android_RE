.class public final enum Ldagger/Provides$Type;
.super Ljava/lang/Enum;
.source "Provides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/Provides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldagger/Provides$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldagger/Provides$Type;

.field public static final enum MAP:Ldagger/Provides$Type;

.field public static final enum SET:Ldagger/Provides$Type;

.field public static final enum SET_VALUES:Ldagger/Provides$Type;

.field public static final enum UNIQUE:Ldagger/Provides$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Ldagger/Provides$Type;

    const-string v1, "UNIQUE"

    invoke-direct {v0, v1, v2}, Ldagger/Provides$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldagger/Provides$Type;->UNIQUE:Ldagger/Provides$Type;

    .line 50
    new-instance v0, Ldagger/Provides$Type;

    const-string v1, "SET"

    invoke-direct {v0, v1, v3}, Ldagger/Provides$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldagger/Provides$Type;->SET:Ldagger/Provides$Type;

    .line 57
    new-instance v0, Ldagger/Provides$Type;

    const-string v1, "SET_VALUES"

    invoke-direct {v0, v1, v4}, Ldagger/Provides$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldagger/Provides$Type;->SET_VALUES:Ldagger/Provides$Type;

    .line 65
    new-instance v0, Ldagger/Provides$Type;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v5}, Ldagger/Provides$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldagger/Provides$Type;->MAP:Ldagger/Provides$Type;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ldagger/Provides$Type;

    sget-object v1, Ldagger/Provides$Type;->UNIQUE:Ldagger/Provides$Type;

    aput-object v1, v0, v2

    sget-object v1, Ldagger/Provides$Type;->SET:Ldagger/Provides$Type;

    aput-object v1, v0, v3

    sget-object v1, Ldagger/Provides$Type;->SET_VALUES:Ldagger/Provides$Type;

    aput-object v1, v0, v4

    sget-object v1, Ldagger/Provides$Type;->MAP:Ldagger/Provides$Type;

    aput-object v1, v0, v5

    sput-object v0, Ldagger/Provides$Type;->$VALUES:[Ldagger/Provides$Type;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldagger/Provides$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Ldagger/Provides$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldagger/Provides$Type;

    return-object v0
.end method

.method public static values()[Ldagger/Provides$Type;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Ldagger/Provides$Type;->$VALUES:[Ldagger/Provides$Type;

    invoke-virtual {v0}, [Ldagger/Provides$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldagger/Provides$Type;

    return-object v0
.end method
