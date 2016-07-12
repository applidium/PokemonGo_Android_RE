.class Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightSessionResumeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$Builder;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method
