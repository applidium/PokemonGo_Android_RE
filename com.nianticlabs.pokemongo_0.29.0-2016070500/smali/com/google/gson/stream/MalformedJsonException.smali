.class public final Lcom/google/gson/stream/MalformedJsonException;
.super Ljava/io/IOException;
.source "MalformedJsonException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/gson/stream/MalformedJsonException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gson/stream/MalformedJsonException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 43
    return-void
.end method
