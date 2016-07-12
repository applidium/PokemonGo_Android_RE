.class public final Lcom/upsight/android/internal/util/SidHelper;
.super Ljava/lang/Object;
.source "SidHelper.java"


# static fields
.field private static final BYTE_BUFFER_CAPACITY:I = 0x8

.field public static final PREFERENCE_KEY_SID:Ljava/lang/String; = "sid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getSid(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v8, Lcom/upsight/android/internal/util/SidHelper;

    monitor-enter v8

    :try_start_0
    const-string v7, "sid"

    const/4 v9, 0x0

    invoke-static {p0, v7, v9}, Lcom/upsight/android/internal/util/PreferencesHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "sid":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    .line 38
    .local v6, "uuid":Ljava/util/UUID;
    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    .line 39
    .local v0, "leastSignificant":J
    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    .line 40
    .local v2, "mostSignificant":J
    new-instance v5, Ljava/math/BigInteger;

    const/4 v7, 0x1

    xor-long v10, v0, v2

    invoke-static {v10, v11}, Lcom/upsight/android/internal/util/SidHelper;->longToBytes(J)[B

    move-result-object v9

    invoke-direct {v5, v7, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 41
    .local v5, "unsignedLong":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 42
    const-string v7, "sid"

    invoke-static {p0, v7, v4}, Lcom/upsight/android/internal/util/PreferencesHelper;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .end local v0    # "leastSignificant":J
    .end local v2    # "mostSignificant":J
    .end local v5    # "unsignedLong":Ljava/math/BigInteger;
    .end local v6    # "uuid":Ljava/util/UUID;
    :cond_0
    monitor-exit v8

    return-object v4

    .line 35
    .end local v4    # "sid":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private static longToBytes(J)[B
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 54
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 55
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
