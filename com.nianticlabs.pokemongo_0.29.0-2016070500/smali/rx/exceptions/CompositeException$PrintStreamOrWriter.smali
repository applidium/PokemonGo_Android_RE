.class abstract Lrx/exceptions/CompositeException$PrintStreamOrWriter;
.super Ljava/lang/Object;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PrintStreamOrWriter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/exceptions/CompositeException$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/exceptions/CompositeException$1;

    .prologue
    .line 193
    invoke-direct {p0}, Lrx/exceptions/CompositeException$PrintStreamOrWriter;-><init>()V

    return-void
.end method


# virtual methods
.method abstract lock()Ljava/lang/Object;
.end method

.method abstract println(Ljava/lang/Object;)V
.end method
