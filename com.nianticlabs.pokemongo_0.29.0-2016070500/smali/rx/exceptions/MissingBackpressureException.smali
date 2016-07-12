.class public Lrx/exceptions/MissingBackpressureException;
.super Ljava/lang/Exception;
.source "MissingBackpressureException.java"


# static fields
.field private static final serialVersionUID:J = 0x64a044776671d702L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method
