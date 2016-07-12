.class final Lspacemadness/com/lunarconsole/console/ConsolePlugin$2;
.super Ljava/lang/Object;
.source "ConsolePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/console/ConsolePlugin;->init(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$capacity:I

.field final synthetic val$pluginImp:Lspacemadness/com/lunarconsole/console/ConsolePluginImp;

.field final synthetic val$trim:I

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$2;->val$version:Ljava/lang/String;

    iput p3, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$2;->val$capacity:I

    iput p4, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$2;->val$trim:I

    iput-object p5, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$2;->val$pluginImp:Lspacemadness/com/lunarconsole/console/ConsolePluginImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 127
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$2;->val$version:Ljava/lang/String;

    iget v2, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$2;->val$capacity:I

    iget v3, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$2;->val$trim:I

    iget-object v4, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$2;->val$pluginImp:Lspacemadness/com/lunarconsole/console/ConsolePluginImp;

    # invokes: Lspacemadness/com/lunarconsole/console/ConsolePlugin;->init0(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V
    invoke-static {v0, v1, v2, v3, v4}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->access$200(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V

    .line 128
    return-void
.end method
