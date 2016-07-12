.class public final Lcrittercism/android/c;
.super Lcrittercism/android/bp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/c$a;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Z

.field c:Lcrittercism/android/c$a;

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Lcrittercism/android/cn;

.field public h:Lcrittercism/android/k;

.field public i:Ljava/lang/String;

.field public j:Lcrittercism/android/b;

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Z

.field private q:Z

.field private r:[D


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Lcrittercism/android/bp;-><init>()V

    .line 27
    iput-wide v4, p0, Lcrittercism/android/c;->a:J

    .line 28
    iput-wide v4, p0, Lcrittercism/android/c;->k:J

    .line 32
    iput-boolean v1, p0, Lcrittercism/android/c;->l:Z

    .line 33
    iput-boolean v1, p0, Lcrittercism/android/c;->m:Z

    .line 35
    iput-boolean v1, p0, Lcrittercism/android/c;->b:Z

    .line 69
    sget-object v0, Lcrittercism/android/c$a;->a:Lcrittercism/android/c$a;

    iput-object v0, p0, Lcrittercism/android/c;->c:Lcrittercism/android/c$a;

    .line 71
    iput-wide v2, p0, Lcrittercism/android/c;->o:J

    .line 73
    iput-wide v2, p0, Lcrittercism/android/c;->d:J

    .line 75
    iput-boolean v1, p0, Lcrittercism/android/c;->p:Z

    .line 76
    iput-boolean v1, p0, Lcrittercism/android/c;->q:Z

    .line 78
    iput v1, p0, Lcrittercism/android/c;->e:I

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/c;->f:Ljava/lang/String;

    .line 82
    new-instance v0, Lcrittercism/android/cn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrittercism/android/cn;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcrittercism/android/c;->g:Lcrittercism/android/cn;

    .line 90
    new-instance v0, Lcrittercism/android/k;

    invoke-direct {v0}, Lcrittercism/android/k;-><init>()V

    iput-object v0, p0, Lcrittercism/android/c;->h:Lcrittercism/android/k;

    .line 99
    sget-object v0, Lcrittercism/android/b;->a:Lcrittercism/android/b;

    iput-object v0, p0, Lcrittercism/android/c;->j:Lcrittercism/android/b;

    .line 145
    sget-object v0, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v0}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/c;->n:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Lcrittercism/android/bp;-><init>()V

    .line 27
    iput-wide v4, p0, Lcrittercism/android/c;->a:J

    .line 28
    iput-wide v4, p0, Lcrittercism/android/c;->k:J

    .line 32
    iput-boolean v1, p0, Lcrittercism/android/c;->l:Z

    .line 33
    iput-boolean v1, p0, Lcrittercism/android/c;->m:Z

    .line 35
    iput-boolean v1, p0, Lcrittercism/android/c;->b:Z

    .line 69
    sget-object v0, Lcrittercism/android/c$a;->a:Lcrittercism/android/c$a;

    iput-object v0, p0, Lcrittercism/android/c;->c:Lcrittercism/android/c$a;

    .line 71
    iput-wide v2, p0, Lcrittercism/android/c;->o:J

    .line 73
    iput-wide v2, p0, Lcrittercism/android/c;->d:J

    .line 75
    iput-boolean v1, p0, Lcrittercism/android/c;->p:Z

    .line 76
    iput-boolean v1, p0, Lcrittercism/android/c;->q:Z

    .line 78
    iput v1, p0, Lcrittercism/android/c;->e:I

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/c;->f:Ljava/lang/String;

    .line 82
    new-instance v0, Lcrittercism/android/cn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrittercism/android/cn;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcrittercism/android/c;->g:Lcrittercism/android/cn;

    .line 90
    new-instance v0, Lcrittercism/android/k;

    invoke-direct {v0}, Lcrittercism/android/k;-><init>()V

    iput-object v0, p0, Lcrittercism/android/c;->h:Lcrittercism/android/k;

    .line 99
    sget-object v0, Lcrittercism/android/b;->a:Lcrittercism/android/b;

    iput-object v0, p0, Lcrittercism/android/c;->j:Lcrittercism/android/b;

    .line 149
    sget-object v0, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v0}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/c;->n:Ljava/lang/String;

    .line 150
    if-eqz p1, :cond_0

    .line 151
    iput-object p1, p0, Lcrittercism/android/c;->i:Ljava/lang/String;

    .line 153
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Lcrittercism/android/bp;-><init>()V

    .line 27
    iput-wide v4, p0, Lcrittercism/android/c;->a:J

    .line 28
    iput-wide v4, p0, Lcrittercism/android/c;->k:J

    .line 32
    iput-boolean v1, p0, Lcrittercism/android/c;->l:Z

    .line 33
    iput-boolean v1, p0, Lcrittercism/android/c;->m:Z

    .line 35
    iput-boolean v1, p0, Lcrittercism/android/c;->b:Z

    .line 69
    sget-object v0, Lcrittercism/android/c$a;->a:Lcrittercism/android/c$a;

    iput-object v0, p0, Lcrittercism/android/c;->c:Lcrittercism/android/c$a;

    .line 71
    iput-wide v2, p0, Lcrittercism/android/c;->o:J

    .line 73
    iput-wide v2, p0, Lcrittercism/android/c;->d:J

    .line 75
    iput-boolean v1, p0, Lcrittercism/android/c;->p:Z

    .line 76
    iput-boolean v1, p0, Lcrittercism/android/c;->q:Z

    .line 78
    iput v1, p0, Lcrittercism/android/c;->e:I

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/c;->f:Ljava/lang/String;

    .line 82
    new-instance v0, Lcrittercism/android/cn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrittercism/android/cn;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcrittercism/android/c;->g:Lcrittercism/android/cn;

    .line 90
    new-instance v0, Lcrittercism/android/k;

    invoke-direct {v0}, Lcrittercism/android/k;-><init>()V

    iput-object v0, p0, Lcrittercism/android/c;->h:Lcrittercism/android/k;

    .line 99
    sget-object v0, Lcrittercism/android/b;->a:Lcrittercism/android/b;

    iput-object v0, p0, Lcrittercism/android/c;->j:Lcrittercism/android/b;

    .line 156
    sget-object v0, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v0}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/c;->n:Ljava/lang/String;

    .line 157
    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/c;->i:Ljava/lang/String;

    .line 160
    :cond_0
    return-void
.end method

.method private g()J
    .locals 4

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 236
    .line 238
    iget-wide v2, p0, Lcrittercism/android/c;->a:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcrittercism/android/c;->k:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 239
    iget-wide v0, p0, Lcrittercism/android/c;->k:J

    iget-wide v2, p0, Lcrittercism/android/c;->a:J

    sub-long/2addr v0, v2

    .line 242
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    iget-object v6, p0, Lcrittercism/android/c;->i:Ljava/lang/String;

    .line 219
    if-nez v6, :cond_1

    .line 220
    iget-object v8, p0, Lcrittercism/android/c;->h:Lcrittercism/android/k;

    const-string v0, "unknown-host"

    iget-object v3, v8, Lcrittercism/android/k;->b:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v0, v8, Lcrittercism/android/k;->b:Ljava/lang/String;

    move-object v6, v0

    :goto_0
    iget-boolean v0, v8, Lcrittercism/android/k;->f:Z

    if-eqz v0, :cond_3

    iget v0, v8, Lcrittercism/android/k;->e:I

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 221
    :cond_0
    :goto_1
    iput-object v6, p0, Lcrittercism/android/c;->i:Ljava/lang/String;

    .line 224
    :cond_1
    return-object v6

    .line 220
    :cond_2
    iget-object v3, v8, Lcrittercism/android/k;->a:Ljava/net/InetAddress;

    if-eqz v3, :cond_c

    iget-object v0, v8, Lcrittercism/android/k;->a:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_3
    iget-object v0, v8, Lcrittercism/android/k;->c:Ljava/lang/String;

    const-string v7, ""

    if-eqz v0, :cond_5

    const-string v3, "http:"

    const/4 v5, 0x5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "https:"

    const/4 v5, 0x6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    :goto_2
    if-eqz v1, :cond_6

    move-object v6, v0

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    iget-object v1, v8, Lcrittercism/android/k;->d:Lcrittercism/android/k$a;

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcrittercism/android/k;->d:Lcrittercism/android/k$a;

    invoke-static {v2}, Lcrittercism/android/k$a;->a(Lcrittercism/android/k$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_8
    const-string v1, ""

    iget v2, v8, Lcrittercism/android/k;->e:I

    if-lez v2, :cond_a

    iget-object v2, v8, Lcrittercism/android/k;->d:Lcrittercism/android/k$a;

    if-eqz v2, :cond_9

    iget-object v2, v8, Lcrittercism/android/k;->d:Lcrittercism/android/k$a;

    invoke-static {v2}, Lcrittercism/android/k$a;->b(Lcrittercism/android/k$a;)I

    move-result v2

    iget v4, v8, Lcrittercism/android/k;->e:I

    if-eq v2, v4, :cond_a

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v8, Lcrittercism/android/k;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object v1, v2

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_b
    move-object v1, v7

    goto/16 :goto_3

    :cond_c
    move-object v6, v0

    goto/16 :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcrittercism/android/c;->h:Lcrittercism/android/k;

    if-lez p1, :cond_0

    iput p1, v0, Lcrittercism/android/k;->e:I

    .line 416
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 183
    iget-boolean v0, p0, Lcrittercism/android/c;->p:Z

    if-nez v0, :cond_0

    .line 184
    iget-wide v0, p0, Lcrittercism/android/c;->o:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcrittercism/android/c;->o:J

    .line 186
    :cond_0
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 284
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcrittercism/android/c;->r:[D

    .line 288
    return-void
.end method

.method public final a(Lcrittercism/android/k$a;)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcrittercism/android/c;->h:Lcrittercism/android/k;

    iput-object p1, v0, Lcrittercism/android/k;->d:Lcrittercism/android/k$a;

    .line 405
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcrittercism/android/c;->d()Lorg/json/JSONArray;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 426
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 232
    :cond_0
    iput-object p1, p0, Lcrittercism/android/c;->i:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 377
    new-instance v0, Lcrittercism/android/cn;

    invoke-direct {v0, p1}, Lcrittercism/android/cn;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcrittercism/android/c;->g:Lcrittercism/android/cn;

    .line 378
    return-void
.end method

.method public final a(Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/c;->i:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcrittercism/android/c;->h:Lcrittercism/android/k;

    iput-object p1, v0, Lcrittercism/android/k;->a:Ljava/net/InetAddress;

    .line 383
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 255
    iget-boolean v0, p0, Lcrittercism/android/c;->l:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcrittercism/android/c;->a:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/c;->a:J

    .line 258
    :cond_0
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/c;->p:Z

    .line 190
    iput-wide p1, p0, Lcrittercism/android/c;->o:J

    .line 192
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/c;->i:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcrittercism/android/c;->h:Lcrittercism/android/k;

    iput-object p1, v0, Lcrittercism/android/k;->b:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 266
    iget-boolean v0, p0, Lcrittercism/android/c;->m:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcrittercism/android/c;->k:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/c;->k:J

    .line 269
    :cond_0
    return-void
.end method

.method public final c(J)V
    .locals 3

    .prologue
    .line 199
    iget-boolean v0, p0, Lcrittercism/android/c;->q:Z

    if-nez v0, :cond_0

    .line 200
    iget-wide v0, p0, Lcrittercism/android/c;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcrittercism/android/c;->d:J

    .line 202
    :cond_0
    return-void
.end method

.method public final d()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 338
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 340
    :try_start_0
    iget-object v1, p0, Lcrittercism/android/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 345
    invoke-virtual {p0}, Lcrittercism/android/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 346
    sget-object v1, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcrittercism/android/c;->a:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcrittercism/android/ed;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 347
    invoke-direct {p0}, Lcrittercism/android/c;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 348
    iget-object v1, p0, Lcrittercism/android/c;->j:Lcrittercism/android/b;

    invoke-virtual {v1}, Lcrittercism/android/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 349
    iget-wide v2, p0, Lcrittercism/android/c;->o:J

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 350
    iget-wide v2, p0, Lcrittercism/android/c;->d:J

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 351
    iget v1, p0, Lcrittercism/android/c;->e:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 352
    iget-object v1, p0, Lcrittercism/android/c;->g:Lcrittercism/android/cn;

    iget v1, v1, Lcrittercism/android/cn;->a:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 353
    iget-object v1, p0, Lcrittercism/android/c;->g:Lcrittercism/android/cn;

    iget v1, v1, Lcrittercism/android/cn;->b:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 354
    iget-object v1, p0, Lcrittercism/android/c;->r:[D

    if-eqz v1, :cond_0

    .line 355
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 356
    iget-object v2, p0, Lcrittercism/android/c;->r:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 357
    iget-object v2, p0, Lcrittercism/android/c;->r:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 358
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    return-object v0

    .line 360
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 361
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Failed to create statsArray"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x0

    .line 363
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final d(J)V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/c;->q:Z

    .line 206
    iput-wide p1, p0, Lcrittercism/android/c;->d:J

    .line 207
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcrittercism/android/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final e(J)V
    .locals 1

    .prologue
    .line 250
    iput-wide p1, p0, Lcrittercism/android/c;->a:J

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/c;->l:Z

    .line 252
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcrittercism/android/c;->h:Lcrittercism/android/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcrittercism/android/k;->f:Z

    .line 443
    return-void
.end method

.method public final f(J)V
    .locals 1

    .prologue
    .line 261
    iput-wide p1, p0, Lcrittercism/android/c;->k:J

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/c;->m:Z

    .line 263
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 296
    const-string v0, ""

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "URI            : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "URI Builder    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/c;->h:Lcrittercism/android/k;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Logged by      : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/c;->c:Lcrittercism/android/c$a;

    invoke-virtual {v1}, Lcrittercism/android/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Error type:         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/c;->g:Lcrittercism/android/cn;

    iget v1, v1, Lcrittercism/android/cn;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Error code:         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/c;->g:Lcrittercism/android/cn;

    iget v1, v1, Lcrittercism/android/cn;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Response time  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcrittercism/android/c;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Start time     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcrittercism/android/c;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "End time       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcrittercism/android/c;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Bytes out    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcrittercism/android/c;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Bytes in     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcrittercism/android/c;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Response code  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcrittercism/android/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Request method : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcrittercism/android/c;->r:[D

    if-eqz v1, :cond_0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Location       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/c;->r:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_0
    return-object v0
.end method
