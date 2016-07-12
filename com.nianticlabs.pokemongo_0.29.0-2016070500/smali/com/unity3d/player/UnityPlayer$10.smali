.class final Lcom/unity3d/player/UnityPlayer$10;
.super Lcom/unity3d/player/UnityPlayer$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;ZLjava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$10;->d:Lcom/unity3d/player/UnityPlayer;

    iput-boolean p2, p0, Lcom/unity3d/player/UnityPlayer$10;->a:Z

    iput-object p3, p0, Lcom/unity3d/player/UnityPlayer$10;->b:Ljava/lang/String;

    iput p4, p0, Lcom/unity3d/player/UnityPlayer$10;->c:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer$c;-><init>(Lcom/unity3d/player/UnityPlayer;B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer$10;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$10;->d:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->o(Lcom/unity3d/player/UnityPlayer;)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/unity3d/player/UnityPlayer$10;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$10;->d:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->p(Lcom/unity3d/player/UnityPlayer;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$10;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$10;->d:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$10;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V

    goto :goto_0
.end method
