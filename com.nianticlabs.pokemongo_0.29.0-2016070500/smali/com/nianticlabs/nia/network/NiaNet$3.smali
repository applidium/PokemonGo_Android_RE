.class final Lcom/nianticlabs/nia/network/NiaNet$3;
.super Ljava/lang/Object;
.source "NiaNet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/network/NiaNet;->request(JILjava/lang/String;ILjava/lang/String;Ljava/nio/ByteBuffer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Ljava/nio/ByteBuffer;

.field final synthetic val$bodyOffset:I

.field final synthetic val$bodySize:I

.field final synthetic val$headers:Ljava/lang/String;

.field final synthetic val$method:I

.field final synthetic val$object:J

.field final synthetic val$request_id:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(JILjava/lang/String;ILjava/lang/String;Ljava/nio/ByteBuffer;II)V
    .locals 1

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$object:J

    iput p3, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$request_id:I

    iput-object p4, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$url:Ljava/lang/String;

    iput p5, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$method:I

    iput-object p6, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$headers:Ljava/lang/String;

    iput-object p7, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$body:Ljava/nio/ByteBuffer;

    iput p8, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$bodyOffset:I

    iput p9, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$bodySize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$object:J

    iget v2, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$request_id:I

    iget-object v3, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$url:Ljava/lang/String;

    iget v4, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$method:I

    iget-object v5, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$headers:Ljava/lang/String;

    iget-object v6, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$body:Ljava/nio/ByteBuffer;

    iget v7, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$bodyOffset:I

    iget v8, p0, Lcom/nianticlabs/nia/network/NiaNet$3;->val$bodySize:I

    # invokes: Lcom/nianticlabs/nia/network/NiaNet;->doSyncRequest(JILjava/lang/String;ILjava/lang/String;Ljava/nio/ByteBuffer;II)V
    invoke-static/range {v0 .. v8}, Lcom/nianticlabs/nia/network/NiaNet;->access$000(JILjava/lang/String;ILjava/lang/String;Ljava/nio/ByteBuffer;II)V

    .line 80
    return-void
.end method
