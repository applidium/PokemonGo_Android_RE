.class final Lcrittercism/android/dh;
.super Lcrittercism/android/di;


# instance fields
.field private a:Lcrittercism/android/bs;

.field private b:Lcrittercism/android/bs;

.field private c:Lcrittercism/android/au;

.field private d:Ljava/net/URL;

.field private e:Lcrittercism/android/cy;

.field private f:Lcrittercism/android/cx;


# direct methods
.method constructor <init>(Lcrittercism/android/bs;Lcrittercism/android/bs;Lcrittercism/android/au;Ljava/net/URL;Lcrittercism/android/cy;Lcrittercism/android/cx;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcrittercism/android/di;-><init>()V

    .line 26
    iput-object p1, p0, Lcrittercism/android/dh;->b:Lcrittercism/android/bs;

    .line 34
    iput-object p2, p0, Lcrittercism/android/dh;->a:Lcrittercism/android/bs;

    .line 35
    iput-object p3, p0, Lcrittercism/android/dh;->c:Lcrittercism/android/au;

    .line 36
    iput-object p4, p0, Lcrittercism/android/dh;->d:Ljava/net/URL;

    .line 37
    iput-object p5, p0, Lcrittercism/android/dh;->e:Lcrittercism/android/cy;

    .line 38
    iput-object p6, p0, Lcrittercism/android/dh;->f:Lcrittercism/android/cx;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 43
    iget-object v0, p0, Lcrittercism/android/dh;->a:Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/dh;->b:Lcrittercism/android/bs;

    invoke-virtual {v0, v1}, Lcrittercism/android/bs;->a(Lcrittercism/android/bs;)V

    .line 44
    iget-object v0, p0, Lcrittercism/android/dh;->f:Lcrittercism/android/cx;

    iget-object v1, p0, Lcrittercism/android/dh;->c:Lcrittercism/android/au;

    invoke-interface {v0, v1}, Lcrittercism/android/cx;->a(Lcrittercism/android/au;)Lcrittercism/android/cw;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/dh;->b:Lcrittercism/android/bs;

    invoke-interface {v0, v1}, Lcrittercism/android/cw;->a(Lcrittercism/android/bs;)Lcrittercism/android/cw;

    move-result-object v0

    .line 45
    new-instance v1, Lcrittercism/android/dc;

    iget-object v2, p0, Lcrittercism/android/dh;->d:Ljava/net/URL;

    invoke-direct {v1, v2}, Lcrittercism/android/dc;-><init>(Ljava/net/URL;)V

    .line 46
    new-instance v2, Lcrittercism/android/dj;

    const/4 v3, 0x1

    iget-object v4, p0, Lcrittercism/android/dh;->e:Lcrittercism/android/cy;

    invoke-direct {v2, v0, v1, v3, v4}, Lcrittercism/android/dj;-><init>(Lcrittercism/android/cw;Lcrittercism/android/dc;ZLcrittercism/android/cy;)V

    .line 47
    invoke-virtual {v2}, Lcrittercism/android/dj;->run()V

    .line 48
    return-void
.end method
