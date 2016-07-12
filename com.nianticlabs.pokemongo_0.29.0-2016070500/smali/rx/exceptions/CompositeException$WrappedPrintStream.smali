.class Lrx/exceptions/CompositeException$WrappedPrintStream;
.super Lrx/exceptions/CompositeException$PrintStreamOrWriter;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedPrintStream"
.end annotation


# instance fields
.field private final printStream:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "printStream"    # Ljava/io/PrintStream;

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrx/exceptions/CompositeException$PrintStreamOrWriter;-><init>(Lrx/exceptions/CompositeException$1;)V

    .line 208
    iput-object p1, p0, Lrx/exceptions/CompositeException$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    .line 209
    return-void
.end method


# virtual methods
.method lock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lrx/exceptions/CompositeException$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    return-object v0
.end method

.method println(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 218
    iget-object v0, p0, Lrx/exceptions/CompositeException$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 219
    return-void
.end method
