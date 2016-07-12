.class final Lcom/nianticproject/holoholo/sfida/SfidaUtils$1;
.super Ljava/lang/Object;
.source "SfidaUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticproject/holoholo/sfida/SfidaUtils;->toast(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$duration:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/SfidaUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/nianticproject/holoholo/sfida/SfidaUtils$1;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/nianticproject/holoholo/sfida/SfidaUtils$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/SfidaUtils$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/SfidaUtils$1;->val$text:Ljava/lang/String;

    iget v2, p0, Lcom/nianticproject/holoholo/sfida/SfidaUtils$1;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    return-void
.end method
