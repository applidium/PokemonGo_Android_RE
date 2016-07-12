.class final Lrx/Observable$CountLongHolder;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CountLongHolder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3819
    new-instance v0, Lrx/Observable$CountLongHolder$1;

    invoke-direct {v0}, Lrx/Observable$CountLongHolder$1;-><init>()V

    sput-object v0, Lrx/Observable$CountLongHolder;->INSTANCE:Lrx/functions/Func2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
