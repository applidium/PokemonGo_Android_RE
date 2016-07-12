.class Lrx/internal/operators/NotificationLite$OnErrorSentinel;
.super Ljava/lang/Object;
.source "NotificationLite.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/NotificationLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnErrorSentinel"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private final e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lrx/internal/operators/NotificationLite$OnErrorSentinel;->e:Ljava/lang/Throwable;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/NotificationLite$OnErrorSentinel;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/NotificationLite$OnErrorSentinel;

    .prologue
    .line 72
    iget-object v0, p0, Lrx/internal/operators/NotificationLite$OnErrorSentinel;->e:Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification=>Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrx/internal/operators/NotificationLite$OnErrorSentinel;->e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
