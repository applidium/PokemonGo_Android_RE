.class Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;
.super Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;
.source "LayoutInflaterCompatHC.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/LayoutInflaterCompatHC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FactoryWrapperHC"
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/view/LayoutInflaterFactory;)V
    .locals 0
    .param p1, "delegateFactory"    # Landroid/support/v4/view/LayoutInflaterFactory;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;->mDelegateFactory:Landroid/support/v4/view/LayoutInflaterFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/view/LayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
