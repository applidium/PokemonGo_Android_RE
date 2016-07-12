.class final Lcom/nianticlabs/nia/network/NiaNet$1;
.super Ljava/lang/ThreadLocal;
.source "NiaNet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/network/NiaNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/nianticlabs/nia/network/NiaNet$1;->initialValue()[B

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()[B
    .locals 1

    .prologue
    .line 55
    const v0, 0x8000

    new-array v0, v0, [B

    return-object v0
.end method
