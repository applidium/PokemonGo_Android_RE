.class public final Lcom/upsight/android/marketing/UpsightBillboardHandlers;
.super Ljava/lang/Object;
.source "UpsightBillboardHandlers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/UpsightBillboardHandlers$1;,
        Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;,
        Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;,
        Lcom/upsight/android/marketing/UpsightBillboardHandlers$FullscreenHandler;,
        Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;,
        Lcom/upsight/android/marketing/UpsightBillboardHandlers$EmbeddedHandler;
    }
.end annotation


# static fields
.field private static final STYLE_DIALOG:I

.field private static final STYLE_FULLSCREEN:I = 0x103012a


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/upsight/android/marketing/R$style;->Theme_DeviceDefault_Light_Dialog_NoActionBar_UpsightDialog:I

    sput v0, Lcom/upsight/android/marketing/UpsightBillboardHandlers;->STYLE_DIALOG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/upsight/android/marketing/UpsightBillboardHandlers;->STYLE_DIALOG:I

    return v0
.end method

.method public static forDefault(Landroid/app/Activity;)Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 111
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;

    invoke-direct {v0, p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static forDialog(Landroid/app/Activity;)Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;

    invoke-direct {v0, p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private static forEmbedded(Landroid/app/Activity;I)Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "containerViewId"    # I

    .prologue
    .line 50
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$EmbeddedHandler;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$EmbeddedHandler;-><init>(Landroid/app/Activity;I)V

    return-object v0
.end method

.method public static forFullscreen(Landroid/app/Activity;)Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$FullscreenHandler;

    invoke-direct {v0, p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$FullscreenHandler;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
