.class Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider$1;
.super Ljava/lang/Object;
.source "UxmBlockProvider.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;


# direct methods
.method constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider$1;->this$0:Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider$1;->this$0:Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;

    const-string v1, "bundle.hash"

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider$1;->this$0:Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;

    invoke-virtual {v2}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->getBundleHash()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->access$000(Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method
