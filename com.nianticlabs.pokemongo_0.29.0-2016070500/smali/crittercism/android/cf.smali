.class public final Lcrittercism/android/cf;
.super Lcrittercism/android/bp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/cf$a;
    }
.end annotation


# static fields
.field public static final a:Lcrittercism/android/cf;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcrittercism/android/cf$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcrittercism/android/cf;

    const-string v1, "session_start"

    sget-object v2, Lcrittercism/android/cf$a;->a:Lcrittercism/android/cf$a;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/cf;-><init>(Ljava/lang/String;Lcrittercism/android/cf$a;)V

    sput-object v0, Lcrittercism/android/cf;->a:Lcrittercism/android/cf;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcrittercism/android/cf$a;)V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    invoke-virtual {v0}, Lcrittercism/android/ed;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcrittercism/android/cf;-><init>(Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/cf$a;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/cf$a;)V
    .locals 2

    .prologue
    const/16 v1, 0x8c

    .line 35
    invoke-direct {p0}, Lcrittercism/android/bp;-><init>()V

    .line 36
    sget-object v0, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v0}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/cf;->d:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 42
    :cond_0
    iput-object p1, p0, Lcrittercism/android/cf;->b:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcrittercism/android/cf;->c:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcrittercism/android/cf;->e:Lcrittercism/android/cf$a;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcrittercism/android/cf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lcrittercism/android/cf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BREADCRUMB WRITING "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 56
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcrittercism/android/cf;->d:Ljava/lang/String;

    return-object v0
.end method
