.class public final Lcom/google/android/gms/common/api/BatchResultToken;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mId:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/api/BatchResultToken;, "Lcom/google/android/gms/common/api/BatchResultToken<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/api/BatchResultToken;->mId:I

    return-void
.end method
