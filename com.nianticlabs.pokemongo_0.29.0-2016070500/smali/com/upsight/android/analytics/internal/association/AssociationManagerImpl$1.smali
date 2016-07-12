.class Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl$1;
.super Ljava/lang/Object;
.source "AssociationManagerImpl.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->launchInner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lcom/upsight/android/analytics/internal/association/Association;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl$1;->this$0:Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/upsight/android/analytics/internal/association/Association;)V
    .locals 2
    .param p1, "association"    # Lcom/upsight/android/analytics/internal/association/Association;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl$1;->this$0:Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/association/Association;->getWith()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->addAssociation(Ljava/lang/String;Lcom/upsight/android/analytics/internal/association/Association;)V

    .line 102
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 98
    check-cast p1, Lcom/upsight/android/analytics/internal/association/Association;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl$1;->call(Lcom/upsight/android/analytics/internal/association/Association;)V

    return-void
.end method
