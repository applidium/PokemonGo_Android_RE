.class Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV11;
.super Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplBase;
.source "LayoutInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/LayoutInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutInflaterCompatImplV11"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .locals 0
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "factory"    # Landroid/support/v4/view/LayoutInflaterFactory;

    .prologue
    .line 42
    invoke-static {p1, p2}, Landroid/support/v4/view/LayoutInflaterCompatHC;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 43
    return-void
.end method
