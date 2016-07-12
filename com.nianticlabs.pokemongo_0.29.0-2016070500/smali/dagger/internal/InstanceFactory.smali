.class public final Ldagger/internal/InstanceFactory;
.super Ljava/lang/Object;
.source "InstanceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final instance:Ljava/lang/Object;
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
    .line 40
    .local p0, "this":Ldagger/internal/InstanceFactory;, "Ldagger/internal/InstanceFactory<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ldagger/internal/InstanceFactory;->instance:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public static create(Ljava/lang/Object;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ldagger/internal/Factory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "instance":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35
    :cond_0
    new-instance v0, Ldagger/internal/InstanceFactory;

    invoke-direct {v0, p0}, Ldagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

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
    .line 46
    .local p0, "this":Ldagger/internal/InstanceFactory;, "Ldagger/internal/InstanceFactory<TT;>;"
    iget-object v0, p0, Ldagger/internal/InstanceFactory;->instance:Ljava/lang/Object;

    return-object v0
.end method
