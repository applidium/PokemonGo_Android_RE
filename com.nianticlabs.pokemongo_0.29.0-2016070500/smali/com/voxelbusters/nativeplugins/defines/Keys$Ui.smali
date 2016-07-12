.class public Lcom/voxelbusters/nativeplugins/defines/Keys$Ui;
.super Ljava/lang/Object;
.source "Keys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ui"
.end annotation


# static fields
.field public static final BUTTON_PRESSED:Ljava/lang/String; = "button-pressed"

.field public static final CALLER:Ljava/lang/String; = "caller"

.field public static final INPUT:Ljava/lang/String; = "input"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final USER_NAME:Ljava/lang/String; = "username"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/Keys;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/Keys$Ui;->this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
