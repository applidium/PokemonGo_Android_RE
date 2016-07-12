.class public final enum Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;
.super Ljava/lang/Enum;
.source "UpsightBillboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/UpsightBillboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PresentationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

.field public static final enum Dialog:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

.field public static final enum Fullscreen:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

.field public static final enum None:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->None:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    .line 79
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    const-string v1, "Dialog"

    invoke-direct {v0, v1, v3}, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->Dialog:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    .line 80
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    const-string v1, "Fullscreen"

    invoke-direct {v0, v1, v4}, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->Fullscreen:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    sget-object v1, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->None:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->Dialog:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->Fullscreen:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->$VALUES:[Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    return-object v0
.end method

.method public static values()[Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->$VALUES:[Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    invoke-virtual {v0}, [Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    return-object v0
.end method
