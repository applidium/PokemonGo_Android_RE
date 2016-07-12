.class public final enum Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;
.super Ljava/lang/Enum;
.source "PushIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/googlepushservices/internal/PushIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PushParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

.field public static final enum content_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

.field public static final enum message_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

.field public static final enum msg_campaign_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

.field public static final enum text:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

.field public static final enum title:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

.field public static final enum uri:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 273
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    const-string v1, "message_id"

    invoke-direct {v0, v1, v3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->message_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    .line 274
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    const-string v1, "msg_campaign_id"

    invoke-direct {v0, v1, v4}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->msg_campaign_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    .line 275
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    const-string v1, "content_id"

    invoke-direct {v0, v1, v5}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->content_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    .line 276
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    const-string v1, "title"

    invoke-direct {v0, v1, v6}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->title:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    .line 277
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    const-string v1, "text"

    invoke-direct {v0, v1, v7}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->text:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    .line 278
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    const-string v1, "uri"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->uri:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    .line 272
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    sget-object v1, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->message_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->msg_campaign_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    aput-object v1, v0, v4

    sget-object v1, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->content_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    aput-object v1, v0, v5

    sget-object v1, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->title:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    aput-object v1, v0, v6

    sget-object v1, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->text:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->uri:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    aput-object v2, v0, v1

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->$VALUES:[Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

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
    .line 272
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 272
    const-class v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    return-object v0
.end method

.method public static values()[Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->$VALUES:[Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v0}, [Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    return-object v0
.end method
