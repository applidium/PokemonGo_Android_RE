.class public abstract Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
.super Ljava/util/Observable;
.source "ManagedVariable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Observable;"
    }
.end annotation


# instance fields
.field private mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;->mTag:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;->mDefaultValue:Ljava/lang/Object;

    .line 32
    if-eqz p3, :cond_0

    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    :goto_0
    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;->mValue:Ljava/lang/Object;

    .line 33
    return-void

    .restart local p3    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p3, p2

    .line 32
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;->mValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;->mValue:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 61
    if-eqz p1, :cond_1

    .line 63
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;->mValue:Ljava/lang/Object;

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;->setChanged()V

    .line 71
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;->notifyObservers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit p0

    return-void

    .line 66
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;->mDefaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;->mValue:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
