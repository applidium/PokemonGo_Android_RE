.class public final Lcrittercism/android/dp;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcrittercism/android/dp;->a:Ljava/util/Map;

    const-string v1, "com.amazon.venezia"

    new-instance v2, Lcrittercism/android/do$a$a;

    invoke-direct {v2}, Lcrittercism/android/do$a$a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcrittercism/android/dp;->a:Ljava/util/Map;

    const-string v1, "com.android.vending"

    new-instance v2, Lcrittercism/android/do$b$a;

    invoke-direct {v2}, Lcrittercism/android/do$b$a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcrittercism/android/dn;
    .locals 1

    .prologue
    .line 18
    if-eqz p0, :cond_0

    sget-object v0, Lcrittercism/android/dp;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcrittercism/android/dp;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/dn;

    .line 21
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
