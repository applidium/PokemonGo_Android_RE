.class public final Lcom/unity3d/player/w;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static a:Z


# instance fields
.field private final b:Lcom/unity3d/player/UnityPlayer;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/view/SurfaceView;

.field private final e:Landroid/view/SurfaceHolder;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:Z

.field private final j:J

.field private final k:J

.field private final l:Landroid/widget/FrameLayout;

.field private final m:Landroid/view/Display;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/media/MediaPlayer;

.field private s:Landroid/widget/MediaController;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Z

.field private x:I

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/player/w;->a:Z

    return-void
.end method

.method protected constructor <init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;Ljava/lang/String;IIIZJJ)V
    .locals 4

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/w;->t:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/w;->u:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/player/w;->v:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/w;->w:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/player/w;->x:I

    iput-object p1, p0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/w;->c:Landroid/content/Context;

    iput-object p0, p0, Lcom/unity3d/player/w;->l:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->d:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/unity3d/player/w;->d:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/w;->e:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/unity3d/player/w;->e:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->e:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v0, p0, Lcom/unity3d/player/w;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unity3d/player/w;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/unity3d/player/w;->d:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/w;->m:Landroid/view/Display;

    iput-object p3, p0, Lcom/unity3d/player/w;->f:Ljava/lang/String;

    iput p5, p0, Lcom/unity3d/player/w;->g:I

    iput p6, p0, Lcom/unity3d/player/w;->h:I

    iput-boolean p7, p0, Lcom/unity3d/player/w;->i:Z

    iput-wide p8, p0, Lcom/unity3d/player/w;->j:J

    iput-wide p10, p0, Lcom/unity3d/player/w;->k:J

    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fileName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/player/w;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backgroundColor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_1
    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controlMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/unity3d/player/w;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scalingMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/unity3d/player/w;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isURL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/unity3d/player/w;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_4
    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "videoOffset: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/unity3d/player/w;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_5
    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "videoLength: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/unity3d/player/w;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unity3d/player/w;->setFocusable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unity3d/player/w;->setFocusableInTouchMode(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/w;->y:Z

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/w;)Lcom/unity3d/player/UnityPlayer;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/UnityPlayer;

    return-object v0
.end method

.method private a()V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/unity3d/player/w;->doCleanUp()V

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    iget-boolean v0, p0, Lcom/unity3d/player/w;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/unity3d/player/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/unity3d/player/w;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/unity3d/player/w;->e:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget v0, p0, Lcom/unity3d/player/w;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unity3d/player/w;->g:I

    if-ne v0, v7, :cond_1

    :cond_0
    new-instance v0, Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/unity3d/player/w;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->s:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/unity3d/player/w;->s:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->s:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->s:Landroid/widget/MediaController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unity3d/player/w;->s:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-wide v0, p0, Lcom/unity3d/player/w;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/unity3d/player/w;->f:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-wide v2, p0, Lcom/unity3d/player/w;->j:J

    iget-wide v4, p0, Lcom/unity3d/player/w;->k:J

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/unity3d/player/w;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/unity3d/player/w;->onDestroy()V

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/unity3d/player/w;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    iget-object v1, p0, Lcom/unity3d/player/w;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/unity3d/player/w;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoPlayer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b()V
    .locals 1

    invoke-virtual {p0}, Lcom/unity3d/player/w;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "startVideoPlayback"

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/unity3d/player/w;->updateVideoLayout()V

    iget-boolean v0, p0, Lcom/unity3d/player/w;->w:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/w;->start()V

    goto :goto_0
.end method


# virtual methods
.method public final canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final doCleanUp()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    :cond_0
    iput v1, p0, Lcom/unity3d/player/w;->p:I

    iput v1, p0, Lcom/unity3d/player/w;->q:I

    iput-boolean v1, p0, Lcom/unity3d/player/w;->u:Z

    iput-boolean v1, p0, Lcom/unity3d/player/w;->t:Z

    return-void
.end method

.method public final getBufferPercentage()I
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/w;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unity3d/player/w;->v:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public final getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public final getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public final isPlaying()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/unity3d/player/w;->u:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unity3d/player/w;->t:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBufferingUpdate percent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_0
    iput p2, p0, Lcom/unity3d/player/w;->v:I

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "onCompletion called"

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/w;->onDestroy()V

    return-void
.end method

.method public final onControllerHide()V
    .locals 0

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/unity3d/player/w;->onPause()V

    invoke-virtual {p0}, Lcom/unity3d/player/w;->doCleanUp()V

    new-instance v0, Lcom/unity3d/player/w$1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/w$1;-><init>(Lcom/unity3d/player/w;)V

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/unity3d/player/w;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/w;->onDestroy()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/w;->s:Landroid/widget/MediaController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/w;->s:Landroid/widget/MediaController;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MediaController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onPause()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "onPause called"

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/w;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/player/w;->pause()V

    iput-boolean v1, p0, Lcom/unity3d/player/w;->w:Z

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/w;->x:I

    :cond_2
    iput-boolean v1, p0, Lcom/unity3d/player/w;->y:Z

    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "onPrepared called"

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/w;->u:Z

    iget-boolean v0, p0, Lcom/unity3d/player/w;->u:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unity3d/player/w;->t:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/unity3d/player/w;->b()V

    :cond_1
    return-void
.end method

.method protected final onResume()V
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume called"

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/w;->y:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/unity3d/player/w;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/player/w;->start()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/w;->y:Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/unity3d/player/w;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/w;->onDestroy()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/w;->s:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/w;->s:Landroid/widget/MediaController;

    invoke-virtual {v0, p1}, Landroid/widget/MediaController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVideoSizeChanged called "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_3

    :cond_1
    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid video width("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") or height("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/w;->t:Z

    iput p2, p0, Lcom/unity3d/player/w;->p:I

    iput p3, p0, Lcom/unity3d/player/w;->q:I

    iget-boolean v0, p0, Lcom/unity3d/player/w;->u:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/unity3d/player/w;->t:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/unity3d/player/w;->b()V

    goto :goto_0
.end method

.method public final pause()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/w;->w:Z

    goto :goto_0
.end method

.method public final seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/w;->w:Z

    goto :goto_0
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceChanged called "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/unity3d/player/w;->n:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/unity3d/player/w;->o:I

    if-eq v0, p4, :cond_2

    :cond_1
    iput p3, p0, Lcom/unity3d/player/w;->n:I

    iput p4, p0, Lcom/unity3d/player/w;->o:I

    invoke-virtual {p0}, Lcom/unity3d/player/w;->updateVideoLayout()V

    :cond_2
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "surfaceCreated called"

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/unity3d/player/w;->a()V

    iget v0, p0, Lcom/unity3d/player/w;->x:I

    invoke-virtual {p0, v0}, Lcom/unity3d/player/w;->seekTo(I)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "surfaceDestroyed called"

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/w;->doCleanUp()V

    return-void
.end method

.method protected final updateVideoLayout()V
    .locals 6

    sget-boolean v0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "updateVideoLayout"

    invoke-static {v0}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/unity3d/player/w;->n:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/unity3d/player/w;->o:I

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/w;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/unity3d/player/w;->n:I

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/w;->o:I

    :cond_2
    iget v1, p0, Lcom/unity3d/player/w;->n:I

    iget v0, p0, Lcom/unity3d/player/w;->o:I

    iget v2, p0, Lcom/unity3d/player/w;->p:I

    int-to-float v2, v2

    iget v3, p0, Lcom/unity3d/player/w;->q:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/unity3d/player/w;->n:I

    int-to-float v3, v3

    iget v4, p0, Lcom/unity3d/player/w;->o:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/unity3d/player/w;->h:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_5

    iget v0, p0, Lcom/unity3d/player/w;->n:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    :cond_3
    :goto_0
    sget-boolean v2, Lcom/unity3d/player/w;->a:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "frameWidth = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; frameHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/w;->a(Ljava/lang/String;)V

    :cond_4
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v1, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/unity3d/player/w;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/unity3d/player/w;->d:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_5
    iget v1, p0, Lcom/unity3d/player/w;->o:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_6
    iget v4, p0, Lcom/unity3d/player/w;->h:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_7

    iget v0, p0, Lcom/unity3d/player/w;->n:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/unity3d/player/w;->o:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_8
    iget v2, p0, Lcom/unity3d/player/w;->h:I

    if-nez v2, :cond_3

    iget v1, p0, Lcom/unity3d/player/w;->p:I

    iget v0, p0, Lcom/unity3d/player/w;->q:I

    goto :goto_0
.end method
