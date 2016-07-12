.class public Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Ui;
.super Ljava/lang/Object;
.source "UnityDefines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/UnityDefines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ui"
.end annotation


# static fields
.field public static final ALERT_DIALOG_CLOSED:Ljava/lang/String; = "AlertDialogClosed"

.field public static final LOGIN_PROMPT_DIALOG_CLOSED:Ljava/lang/String; = "LoginPromptDialogClosed"

.field public static final SINGLE_FIELD_PROMPT_DIALOG_CLOSED:Ljava/lang/String; = "SingleFieldPromptDialogClosed"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/UnityDefines;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Ui;->this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
