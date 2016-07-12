.class final Lcrittercism/android/ed$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/ee;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/ed;


# direct methods
.method private constructor <init>(Lcrittercism/android/ed;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcrittercism/android/ed$a;->a:Lcrittercism/android/ed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcrittercism/android/ed;B)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcrittercism/android/ed$a;-><init>(Lcrittercism/android/ed;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method
