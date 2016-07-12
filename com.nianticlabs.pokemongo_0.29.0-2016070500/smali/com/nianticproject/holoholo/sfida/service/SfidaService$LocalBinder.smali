.class public Lcom/nianticproject/holoholo/sfida/service/SfidaService$LocalBinder;
.super Landroid/os/Binder;
.source "SfidaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/service/SfidaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaService;


# direct methods
.method public constructor <init>(Lcom/nianticproject/holoholo/sfida/service/SfidaService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    .prologue
    .line 908
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$LocalBinder;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/nianticproject/holoholo/sfida/service/SfidaService;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaService$LocalBinder;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    return-object v0
.end method
