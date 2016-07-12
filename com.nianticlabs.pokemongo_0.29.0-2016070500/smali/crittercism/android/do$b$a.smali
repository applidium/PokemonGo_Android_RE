.class public final Lcrittercism/android/do$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/dn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/do$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Lcrittercism/android/dm;
    .locals 2

    .prologue
    .line 31
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "packageName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcrittercism/android/do$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcrittercism/android/do$b;-><init>(Ljava/lang/String;B)V

    return-object v0
.end method
