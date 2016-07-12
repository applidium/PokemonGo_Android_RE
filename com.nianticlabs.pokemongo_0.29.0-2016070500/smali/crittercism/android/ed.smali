.class public final Lcrittercism/android/ed;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/ed$a;
    }
.end annotation


# static fields
.field public static final a:Lcrittercism/android/ed;


# instance fields
.field private b:Lcrittercism/android/ee;

.field private c:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcrittercism/android/ed;

    invoke-direct {v0}, Lcrittercism/android/ed;-><init>()V

    sput-object v0, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcrittercism/android/ed$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcrittercism/android/ed$a;-><init>(Lcrittercism/android/ed;B)V

    iput-object v0, p0, Lcrittercism/android/ed;->b:Lcrittercism/android/ee;

    .line 21
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ed;->c:Ljava/lang/ThreadLocal;

    .line 23
    return-void
.end method

.method private b()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcrittercism/android/ed;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 30
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 31
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 32
    iget-object v1, p0, Lcrittercism/android/ed;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcrittercism/android/ed;->b()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcrittercism/android/ed;->b:Lcrittercism/android/ee;

    invoke-interface {v0}, Lcrittercism/android/ee;->a()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcrittercism/android/ed;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcrittercism/android/ed;->b()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 49
    return-object v0
.end method
