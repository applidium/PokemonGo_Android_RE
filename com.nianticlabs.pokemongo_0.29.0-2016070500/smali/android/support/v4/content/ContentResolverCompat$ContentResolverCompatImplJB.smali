.class Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplJB;
.super Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplBase;
.source "ContentResolverCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/ContentResolverCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentResolverCompatImplJB"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/support/v4/os/CancellationSignal;

    .prologue
    .line 57
    if-eqz p7, :cond_0

    :try_start_0
    invoke-virtual {p7}, Landroid/support/v4/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object v6

    :goto_0
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Landroid/support/v4/content/ContentResolverCompatJellybean;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v7

    .line 62
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Landroid/support/v4/content/ContentResolverCompatJellybean;->isFrameworkOperationCanceledException(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v0

    .line 68
    :cond_1
    throw v7
.end method
