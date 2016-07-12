.class Landroid/support/v4/app/BackStackRecord$1;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/BackStackRecord;->configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/BackStackRecord;

.field final synthetic val$inFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 1188
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord$1;->this$0:Landroid/support/v4/app/BackStackRecord;

    iput-object p2, p0, Landroid/support/v4/app/BackStackRecord$1;->val$inFragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$1;->val$inFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
