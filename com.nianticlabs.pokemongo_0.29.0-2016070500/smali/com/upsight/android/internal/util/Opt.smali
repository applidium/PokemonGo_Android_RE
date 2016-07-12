.class public Lcom/upsight/android/internal/util/Opt;
.super Ljava/lang/Object;
.source "Opt.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/upsight/android/internal/util/Opt;, "Lcom/upsight/android/internal/util/Opt<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/upsight/android/internal/util/Opt;->mObject:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public static absent()Lcom/upsight/android/internal/util/Opt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/upsight/android/internal/util/Opt",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/upsight/android/internal/util/Opt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/internal/util/Opt;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Object;)Lcom/upsight/android/internal/util/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/upsight/android/internal/util/Opt",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/upsight/android/internal/util/Opt;

    invoke-direct {v0, p0}, Lcom/upsight/android/internal/util/Opt;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/upsight/android/internal/util/Opt;, "Lcom/upsight/android/internal/util/Opt<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/internal/util/Opt;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public isPresent()Z
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/upsight/android/internal/util/Opt;, "Lcom/upsight/android/internal/util/Opt<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/internal/util/Opt;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
