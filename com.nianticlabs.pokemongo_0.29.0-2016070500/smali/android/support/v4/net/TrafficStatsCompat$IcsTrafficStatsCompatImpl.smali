.class Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"

# interfaces
.implements Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IcsTrafficStatsCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearThreadStatsTag()V
    .locals 0

    .prologue
    .line 87
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompatIcs;->clearThreadStatsTag()V

    .line 88
    return-void
.end method

.method public getThreadStatsTag()I
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompatIcs;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public incrementOperationCount(I)V
    .locals 0
    .param p1, "operationCount"    # I

    .prologue
    .line 97
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->incrementOperationCount(I)V

    .line 98
    return-void
.end method

.method public incrementOperationCount(II)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "operationCount"    # I

    .prologue
    .line 102
    invoke-static {p1, p2}, Landroid/support/v4/net/TrafficStatsCompatIcs;->incrementOperationCount(II)V

    .line 103
    return-void
.end method

.method public setThreadStatsTag(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 107
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->setThreadStatsTag(I)V

    .line 108
    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->tagSocket(Ljava/net/Socket;)V

    .line 113
    return-void
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->untagSocket(Ljava/net/Socket;)V

    .line 118
    return-void
.end method
