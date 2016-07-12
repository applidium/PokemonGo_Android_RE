.class public abstract Lcom/upsight/android/UpsightExtension;
.super Ljava/lang/Object;
.source "UpsightExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/UpsightExtension$BaseComponent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/upsight/android/UpsightExtension$BaseComponent;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mExtensionComponent:Lcom/upsight/android/UpsightExtension$BaseComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    .local p0, "this":Lcom/upsight/android/UpsightExtension;, "Lcom/upsight/android/UpsightExtension<TT;TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/upsight/android/UpsightExtension;, "Lcom/upsight/android/UpsightExtension<TT;TU;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Upsight extension supports no public API."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/upsight/android/UpsightExtension;, "Lcom/upsight/android/UpsightExtension<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/UpsightExtension;->mExtensionComponent:Lcom/upsight/android/UpsightExtension$BaseComponent;

    return-object v0
.end method

.method protected onCreate(Lcom/upsight/android/UpsightContext;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 37
    .local p0, "this":Lcom/upsight/android/UpsightExtension;, "Lcom/upsight/android/UpsightExtension<TT;TU;>;"
    return-void
.end method

.method protected onPostCreate(Lcom/upsight/android/UpsightContext;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 47
    .local p0, "this":Lcom/upsight/android/UpsightExtension;, "Lcom/upsight/android/UpsightExtension<TT;TU;>;"
    return-void
.end method

.method protected abstract onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/UpsightExtension$BaseComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightContext;",
            ")TT;"
        }
    .end annotation
.end method

.method final setComponent(Lcom/upsight/android/UpsightExtension$BaseComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/upsight/android/UpsightExtension;, "Lcom/upsight/android/UpsightExtension<TT;TU;>;"
    .local p1, "component":Lcom/upsight/android/UpsightExtension$BaseComponent;, "TT;"
    iput-object p1, p0, Lcom/upsight/android/UpsightExtension;->mExtensionComponent:Lcom/upsight/android/UpsightExtension$BaseComponent;

    .line 58
    return-void
.end method
