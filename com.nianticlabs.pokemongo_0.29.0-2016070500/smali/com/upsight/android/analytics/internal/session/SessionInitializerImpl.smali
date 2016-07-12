.class public Lcom/upsight/android/analytics/internal/session/SessionInitializerImpl;
.super Ljava/lang/Object;
.source "SessionInitializerImpl.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/session/SessionInitializer;


# static fields
.field private static final NO_CMP_ID:I = -0x80000000

.field private static final NO_MSG_ID:I = -0x80000000

.field private static final SESSION_CAMPAIGN_ID:Ljava/lang/String; = "campaign_id"

.field private static final SESSION_MESSAGE_ID:Ljava/lang/String; = "message_id"


# instance fields
.field private mCampaignId:I

.field private mMessageId:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "campaignId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/upsight/android/analytics/internal/session/SessionInitializerImpl;->mCampaignId:I

    .line 42
    iput p2, p0, Lcom/upsight/android/analytics/internal/session/SessionInitializerImpl;->mMessageId:I

    .line 43
    return-void
.end method

.method public static fromPush(Landroid/os/Bundle;)Lcom/upsight/android/analytics/internal/session/SessionInitializer;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/high16 v3, -0x80000000

    .line 29
    const-string v2, "campaign_id"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 30
    .local v0, "campaignId":I
    const-string v2, "message_id"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 31
    .local v1, "messageId":I
    new-instance v2, Lcom/upsight/android/analytics/internal/session/SessionInitializerImpl;

    invoke-direct {v2, v0, v1}, Lcom/upsight/android/analytics/internal/session/SessionInitializerImpl;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public getCampaignID()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/upsight/android/analytics/internal/session/SessionInitializerImpl;->mCampaignId:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/upsight/android/analytics/internal/session/SessionInitializerImpl;->mCampaignId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageID()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/upsight/android/analytics/internal/session/SessionInitializerImpl;->mMessageId:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/upsight/android/analytics/internal/session/SessionInitializerImpl;->mMessageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
