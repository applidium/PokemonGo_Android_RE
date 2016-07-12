.class Lrx/Observable$NeverObservable$Holder;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Observable$NeverObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/Observable$NeverObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$NeverObservable",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9555
    new-instance v0, Lrx/Observable$NeverObservable;

    invoke-direct {v0}, Lrx/Observable$NeverObservable;-><init>()V

    sput-object v0, Lrx/Observable$NeverObservable$Holder;->INSTANCE:Lrx/Observable$NeverObservable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
