.class Landroid/support/v4/net/TrafficStatsCompatIcs;
.super Ljava/lang/Object;
.source "TrafficStatsCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 30
    return-void
.end method

.method public static getThreadStatsTag()I
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public static incrementOperationCount(I)V
    .locals 0
    .param p0, "operationCount"    # I

    .prologue
    .line 37
    invoke-static {p0}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    .line 38
    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 0
    .param p0, "tag"    # I
    .param p1, "operationCount"    # I

    .prologue
    .line 41
    invoke-static {p0, p1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 42
    return-void
.end method

.method public static setThreadStatsTag(I)V
    .locals 0
    .param p0, "tag"    # I

    .prologue
    .line 45
    invoke-static {p0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 46
    return-void
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 0
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V

    .line 50
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 0
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    .line 54
    return-void
.end method
