.class public Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;
.super Ljava/lang/Object;
.source "MarketingContentModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Presentation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;
    }
.end annotation


# static fields
.field public static final STYLE_DIALOG:Ljava/lang/String; = "dialog"

.field public static final STYLE_FULLSCREEN:Ljava/lang/String; = "fullscreen"


# instance fields
.field layout:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "layout"
    .end annotation
.end field

.field style:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "style"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method
