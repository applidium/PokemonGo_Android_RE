.class public Lcom/voxelbusters/nativeplugins/defines/Keys$Intent;
.super Ljava/lang/Object;
.source "Keys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Intent"
.end annotation


# static fields
.field public static final SCHEME_SEND_TO:Ljava/lang/String; = "smsto:"

.field public static final SMS_BODY:Ljava/lang/String; = "sms_body"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/Keys;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/Keys$Intent;->this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
