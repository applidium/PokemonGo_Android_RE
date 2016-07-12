.class final Lcom/unity3d/player/ReflectionHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/ReflectionHelper;->newProxyInstance(I[Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[Ljava/lang/Class;


# direct methods
.method constructor <init>(I[Ljava/lang/Class;)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/ReflectionHelper$1;->a:I

    iput-object p2, p0, Lcom/unity3d/player/ReflectionHelper$1;->b:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/unity3d/player/ReflectionHelper$1;->a:I

    invoke-static {v0}, Lcom/unity3d/player/ReflectionHelper;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/unity3d/player/ReflectionHelper$1;->a:I

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/unity3d/player/ReflectionHelper;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
