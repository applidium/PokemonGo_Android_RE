.class public final Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers;
.super Ljava/lang/Object;
.source "UpsightBillboardSupportHandlers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$1;,
        Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$SimpleHandler;,
        Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DefaultHandler;,
        Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$FullscreenHandler;,
        Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DialogHandler;,
        Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$EmbeddedHandler;
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

    sput v0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers;->STYLE_DIALOG:I

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
    sget v0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers;->STYLE_DIALOG:I

    return v0
.end method

.method public static forDefault(Landroid/support/v4/app/FragmentActivity;)Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 111
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DefaultHandler;

    invoke-direct {v0, p0}, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DefaultHandler;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    return-object v0
.end method

.method public static forDialog(Landroid/support/v4/app/FragmentActivity;)Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 70
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DialogHandler;

    invoke-direct {v0, p0}, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DialogHandler;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    return-object v0
.end method

.method private static forEmbedded(Landroid/support/v4/app/FragmentActivity;I)Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "containerViewId"    # I

    .prologue
    .line 50
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$EmbeddedHandler;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$EmbeddedHandler;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    return-object v0
.end method

.method public static forFullscreen(Landroid/support/v4/app/FragmentActivity;)Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 90
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$FullscreenHandler;

    invoke-direct {v0, p0}, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$FullscreenHandler;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    return-object v0
.end method
