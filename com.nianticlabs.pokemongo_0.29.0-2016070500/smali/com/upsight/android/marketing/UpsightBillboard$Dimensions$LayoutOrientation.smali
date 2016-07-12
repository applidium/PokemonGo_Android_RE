.class public final enum Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;
.super Ljava/lang/Enum;
.source "UpsightBillboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

.field public static final enum Landscape:Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

.field public static final enum Portrait:Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    const-string v1, "Portrait"

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;->Portrait:Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    .line 93
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    const-string v1, "Landscape"

    invoke-direct {v0, v1, v3}, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;->Landscape:Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    sget-object v1, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;->Portrait:Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;->Landscape:Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;->$VALUES:[Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v0, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    return-object v0
.end method

.method public static values()[Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;->$VALUES:[Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    invoke-virtual {v0}, [Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    return-object v0
.end method
