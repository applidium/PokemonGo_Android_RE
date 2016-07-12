.class final Lrx/observers/SerializedObserver$ErrorSentinel;
.super Ljava/lang/Object;
.source "SerializedObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observers/SerializedObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorSentinel"
.end annotation


# instance fields
.field final e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lrx/observers/SerializedObserver$ErrorSentinel;->e:Ljava/lang/Throwable;

    .line 72
    return-void
.end method
