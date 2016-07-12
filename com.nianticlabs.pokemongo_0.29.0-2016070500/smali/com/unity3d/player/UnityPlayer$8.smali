.class final Lcom/unity3d/player/UnityPlayer$8;
.super Lcom/unity3d/player/UnityPlayer$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->hideSoftInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$8;->b:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$8;->a:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer$c;-><init>(Lcom/unity3d/player/UnityPlayer;B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$8;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$8;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method
