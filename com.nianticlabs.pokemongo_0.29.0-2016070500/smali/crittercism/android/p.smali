.class public final Lcrittercism/android/p;
.super Lcrittercism/android/n;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcrittercism/android/n;-><init>(Ljava/util/Map;)V

    .line 26
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcrittercism/android/p$1;

    invoke-direct {v1, p0}, Lcrittercism/android/p$1;-><init>(Lcrittercism/android/p;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 43
    iput-object v0, p0, Lcrittercism/android/n;->a:Ljava/util/Map;

    .line 44
    return-void
.end method
