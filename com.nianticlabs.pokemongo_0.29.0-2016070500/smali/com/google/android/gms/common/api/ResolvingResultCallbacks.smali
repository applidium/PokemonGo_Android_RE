.class public abstract Lcom/google/android/gms/common/api/ResolvingResultCallbacks;
.super Lcom/google/android/gms/common/api/ResultCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/ResultCallbacks",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final zzaaY:I


# direct methods
.method protected constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/api/ResolvingResultCallbacks;, "Lcom/google/android/gms/common/api/ResolvingResultCallbacks<TR;>;"
    invoke-direct {p0}, Lcom/google/android/gms/common/api/ResultCallbacks;-><init>()V

    const-string v0, "Activity must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/gms/common/api/ResolvingResultCallbacks;->mActivity:Landroid/app/Activity;

    iput p2, p0, Lcom/google/android/gms/common/api/ResolvingResultCallbacks;->zzaaY:I

    return-void
.end method


# virtual methods
.method public abstract onSuccess(Lcom/google/android/gms/common/api/Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method

.method public abstract onUnresolvableFailure(Lcom/google/android/gms/common/api/Status;)V
.end method
