.class Landroid/support/v4/widget/ListPopupWindowCompat$KitKatListPopupWindowImpl;
.super Landroid/support/v4/widget/ListPopupWindowCompat$BaseListPopupWindowImpl;
.source "ListPopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ListPopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatListPopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/widget/ListPopupWindowCompat$BaseListPopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public createDragToOpenListener(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "listPopupWindow"    # Ljava/lang/Object;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-static {p1, p2}, Landroid/support/v4/widget/ListPopupWindowCompatKitKat;->createDragToOpenListener(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
