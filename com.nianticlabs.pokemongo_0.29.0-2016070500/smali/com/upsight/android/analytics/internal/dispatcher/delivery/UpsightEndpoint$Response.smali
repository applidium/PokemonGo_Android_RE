.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;
.super Ljava/lang/Object;
.source "UpsightEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public final body:Ljava/lang/String;

.field public final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;->statusCode:I

    .line 109
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;->body:Ljava/lang/String;

    .line 110
    return-void
.end method


# virtual methods
.method public isOk()Z
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;->statusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
