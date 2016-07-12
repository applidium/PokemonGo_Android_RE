.class public Lcom/voxelbusters/nativeplugins/defines/Keys$Billing$Validation;
.super Ljava/lang/Object;
.source "Keys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Keys$Billing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Validation"
.end annotation


# static fields
.field public static final DIDNT_VALIDATE:Ljava/lang/String; = "no-validation-done"

.field public static final FAILED:Ljava/lang/String; = "failed"

.field public static final SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field final synthetic this$1:Lcom/voxelbusters/nativeplugins/defines/Keys$Billing;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/Keys$Billing;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/Keys$Billing$Validation;->this$1:Lcom/voxelbusters/nativeplugins/defines/Keys$Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
