.class Lcom/upsight/android/unity/AbstractUpsightPlugin$1;
.super Ljava/lang/Object;
.source "AbstractUpsightPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/AbstractUpsightPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/AbstractUpsightPlugin;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$nonNullParameter:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/AbstractUpsightPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin$1;->this$0:Lcom/upsight/android/unity/AbstractUpsightPlugin;

    iput-object p2, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin$1;->val$method:Ljava/lang/String;

    iput-object p3, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin$1;->val$nonNullParameter:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin$1;->this$0:Lcom/upsight/android/unity/AbstractUpsightPlugin;

    invoke-virtual {v1}, Lcom/upsight/android/unity/AbstractUpsightPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnitySendMessage:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin$1;->val$method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin$1;->val$nonNullParameter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 81
    :cond_0
    return-void
.end method
