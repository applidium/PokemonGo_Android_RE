.class public Lorg/apache/commons/io/output/DemuxOutputStream;
.super Ljava/io/OutputStream;
.source "DemuxOutputStream.java"


# instance fields
.field private final m_streams:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal",
            "<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    return-void
.end method


# virtual methods
.method public bindStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 41
    iget-object v1, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v1}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 42
    .local v0, "stream":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 43
    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v1, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v1}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 56
    .local v0, "output":Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 60
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v1}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 72
    .local v0, "output":Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 76
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v1, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v1}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 89
    .local v0, "output":Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 93
    :cond_0
    return-void
.end method
