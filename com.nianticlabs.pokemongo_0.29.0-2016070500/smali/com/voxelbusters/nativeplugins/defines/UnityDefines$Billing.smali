.class public Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Billing;
.super Ljava/lang/Object;
.source "UnityDefines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/UnityDefines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Billing"
.end annotation


# static fields
.field public static final ON_SETUP_FINISHED:Ljava/lang/String; = ""

.field public static final REQUEST_PRODUCTS_FINISHED:Ljava/lang/String; = "DidReceiveBillingProducts"

.field public static final TRANSACTION_FINISHED:Ljava/lang/String; = "DidFinishBillingTransaction"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/UnityDefines;)V
    .locals 0

    .prologue
    .line 7
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Billing;->this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
