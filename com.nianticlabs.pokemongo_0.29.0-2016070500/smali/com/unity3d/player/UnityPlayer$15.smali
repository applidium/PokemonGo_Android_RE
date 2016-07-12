.class final Lcom/unity3d/player/UnityPlayer$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/ContextWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$15;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$15;->a:Lcom/unity3d/player/UnityPlayer;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$15$1;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$15$1;-><init>(Lcom/unity3d/player/UnityPlayer$15;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method
