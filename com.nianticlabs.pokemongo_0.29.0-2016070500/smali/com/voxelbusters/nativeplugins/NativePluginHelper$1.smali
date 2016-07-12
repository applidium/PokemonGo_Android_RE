.class Lcom/voxelbusters/nativeplugins/NativePluginHelper$1;
.super Ljava/lang/Object;
.source "NativePluginHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxelbusters/nativeplugins/NativePluginHelper;->startActivityOnUiThread(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/NativePluginHelper$1;->val$intent:Landroid/content/Intent;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/nativeplugins/NativePluginHelper$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
