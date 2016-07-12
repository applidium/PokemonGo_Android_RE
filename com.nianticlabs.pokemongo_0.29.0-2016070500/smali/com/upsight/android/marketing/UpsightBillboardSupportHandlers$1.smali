.class synthetic Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$1;
.super Ljava/lang/Object;
.source "UpsightBillboardSupportHandlers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$upsight$android$marketing$UpsightBillboard$PresentationStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 231
    invoke-static {}, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->values()[Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$1;->$SwitchMap$com$upsight$android$marketing$UpsightBillboard$PresentationStyle:[I

    :try_start_0
    sget-object v0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$1;->$SwitchMap$com$upsight$android$marketing$UpsightBillboard$PresentationStyle:[I

    sget-object v1, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->Dialog:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    invoke-virtual {v1}, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$1;->$SwitchMap$com$upsight$android$marketing$UpsightBillboard$PresentationStyle:[I

    sget-object v1, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->Fullscreen:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    invoke-virtual {v1}, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
