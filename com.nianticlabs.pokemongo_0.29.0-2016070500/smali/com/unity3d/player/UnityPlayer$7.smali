.class final Lcom/unity3d/player/UnityPlayer$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->hideSoftInput()V
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

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$7;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$7;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$7;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/s;

    invoke-virtual {v0}, Lcom/unity3d/player/s;->dismiss()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$7;->a:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/s;

    :cond_0
    return-void
.end method
