.class final Lrx/Observable$CountHolder;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CountHolder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3788
    new-instance v0, Lrx/Observable$CountHolder$1;

    invoke-direct {v0}, Lrx/Observable$CountHolder$1;-><init>()V

    sput-object v0, Lrx/Observable$CountHolder;->INSTANCE:Lrx/functions/Func2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
