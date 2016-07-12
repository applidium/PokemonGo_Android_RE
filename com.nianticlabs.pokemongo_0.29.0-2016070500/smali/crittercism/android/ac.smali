.class public final Lcrittercism/android/ac;
.super Ljava/net/SocketImpl;

# interfaces
.implements Lcrittercism/android/ae;


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Field;

.field private static e:[Ljava/lang/reflect/Method;

.field private static f:Z

.field private static g:Ljava/lang/Throwable;


# instance fields
.field private final h:Ljava/util/Queue;

.field private i:Lcrittercism/android/e;

.field private j:Lcrittercism/android/d;

.field private k:Ljava/net/SocketImpl;

.field private l:Lcrittercism/android/w;

.field private m:Lcrittercism/android/x;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v1, 0x14

    const/4 v3, 0x0

    .line 108
    new-array v0, v1, [Ljava/lang/reflect/Method;

    sput-object v0, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    .line 114
    sput-boolean v3, Lcrittercism/android/ac;->f:Z

    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcrittercism/android/ac;->g:Ljava/lang/Throwable;

    .line 130
    :try_start_0
    const-class v0, Ljava/net/SocketImpl;

    .line 132
    const-string v2, "address"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcrittercism/android/ac;->a:Ljava/lang/reflect/Field;

    .line 133
    const-string v2, "fd"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcrittercism/android/ac;->b:Ljava/lang/reflect/Field;

    .line 134
    const-string v2, "localport"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcrittercism/android/ac;->c:Ljava/lang/reflect/Field;

    .line 135
    const-string v2, "port"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcrittercism/android/ac;->d:Ljava/lang/reflect/Field;

    .line 137
    sget-object v2, Lcrittercism/android/ac;->a:Ljava/lang/reflect/Field;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/reflect/AccessibleObject;

    const/4 v5, 0x0

    sget-object v6, Lcrittercism/android/ac;->b:Ljava/lang/reflect/Field;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcrittercism/android/ac;->c:Ljava/lang/reflect/Field;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcrittercism/android/ac;->d:Ljava/lang/reflect/Field;

    aput-object v6, v4, v5

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    array-length v2, v4

    if-lez v2, :cond_1

    invoke-static {v4}, Lcrittercism/android/j;->a([Ljava/lang/reflect/AccessibleObject;)V

    .line 139
    :cond_1
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const-string v5, "accept"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/net/SocketImpl;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 140
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    const-string v5, "available"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 141
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    const-string v5, "bind"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/net/InetAddress;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 142
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    const-string v5, "close"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 143
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x4

    const-string v5, "connect"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/net/InetAddress;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 144
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x5

    const-string v5, "connect"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/net/SocketAddress;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 145
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x6

    const-string v5, "connect"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 146
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x7

    const-string v5, "create"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 147
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0x8

    const-string v5, "getFileDescriptor"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 148
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0x9

    const-string v5, "getInetAddress"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 149
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0xa

    const-string v5, "getInputStream"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 150
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0xb

    const-string v5, "getLocalPort"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 151
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0xc

    const-string v5, "getOutputStream"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 152
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0xd

    const-string v5, "getPort"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 153
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0xe

    const-string v5, "listen"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 154
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0xf

    const-string v5, "sendUrgentData"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 155
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0x10

    const-string v5, "setPerformancePreferences"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 156
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0x11

    const-string v5, "shutdownInput"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 157
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0x12

    const-string v5, "shutdownOutput"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 158
    sget-object v2, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0x13

    const-string v5, "supportsUrgentData"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    aput-object v0, v2, v4

    .line 160
    sget-object v0, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcrittercism/android/j;->a([Ljava/lang/reflect/AccessibleObject;)V

    .line 162
    const/4 v0, 0x1

    sput-boolean v0, Lcrittercism/android/ac;->f:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 199
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    sput-boolean v3, Lcrittercism/android/ac;->f:Z

    .line 165
    sput-object v0, Lcrittercism/android/ac;->g:Ljava/lang/Throwable;

    goto :goto_0

    .line 166
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 167
    sput-boolean v3, Lcrittercism/android/ac;->f:Z

    move v0, v3

    .line 171
    :goto_1
    if-ge v0, v1, :cond_7

    .line 172
    sget-object v3, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    .line 178
    :goto_2
    new-instance v1, Lcrittercism/android/ck;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcrittercism/android/ck;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcrittercism/android/ac;->g:Ljava/lang/Throwable;

    goto :goto_0

    .line 171
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 180
    sput-boolean v3, Lcrittercism/android/ac;->f:Z

    .line 182
    const-string v0, "unknown"

    .line 183
    sget-object v2, Lcrittercism/android/ac;->a:Ljava/lang/reflect/Field;

    if-nez v2, :cond_4

    .line 184
    const-string v0, "address"

    .line 193
    :cond_3
    :goto_3
    new-instance v2, Lcrittercism/android/ck;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No such field: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcrittercism/android/ck;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v2, Lcrittercism/android/ac;->g:Ljava/lang/Throwable;

    goto :goto_0

    .line 185
    :cond_4
    sget-object v2, Lcrittercism/android/ac;->b:Ljava/lang/reflect/Field;

    if-nez v2, :cond_5

    .line 186
    const-string v0, "fd"

    goto :goto_3

    .line 187
    :cond_5
    sget-object v2, Lcrittercism/android/ac;->c:Ljava/lang/reflect/Field;

    if-nez v2, :cond_6

    .line 188
    const-string v0, "localport"

    goto :goto_3

    .line 189
    :cond_6
    sget-object v2, Lcrittercism/android/ac;->d:Ljava/lang/reflect/Field;

    if-nez v2, :cond_3

    .line 190
    const-string v0, "port"

    goto :goto_3

    .line 194
    :catch_3
    move-exception v0

    .line 196
    sput-boolean v3, Lcrittercism/android/ac;->f:Z

    .line 197
    sput-object v0, Lcrittercism/android/ac;->g:Ljava/lang/Throwable;

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public constructor <init>(Lcrittercism/android/e;Lcrittercism/android/d;Ljava/net/SocketImpl;)V
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 201
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ac;->h:Ljava/util/Queue;

    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dispatch was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    if-nez p3, :cond_1

    .line 227
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegate was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    iput-object p1, p0, Lcrittercism/android/ac;->i:Lcrittercism/android/e;

    .line 231
    iput-object p2, p0, Lcrittercism/android/ac;->j:Lcrittercism/android/d;

    .line 232
    iput-object p3, p0, Lcrittercism/android/ac;->k:Ljava/net/SocketImpl;

    .line 234
    invoke-direct {p0}, Lcrittercism/android/ac;->f()V

    .line 235
    return-void
.end method

.method private a(Z)Lcrittercism/android/c;
    .locals 2

    .prologue
    .line 636
    new-instance v0, Lcrittercism/android/c;

    invoke-direct {v0}, Lcrittercism/android/c;-><init>()V

    .line 638
    invoke-virtual {p0}, Lcrittercism/android/ac;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 639
    if-eqz v1, :cond_0

    .line 640
    invoke-virtual {v0, v1}, Lcrittercism/android/c;->a(Ljava/net/InetAddress;)V

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/ac;->getPort()I

    move-result v1

    .line 644
    if-lez v1, :cond_1

    .line 645
    invoke-virtual {v0, v1}, Lcrittercism/android/c;->a(I)V

    .line 648
    :cond_1
    if-eqz p1, :cond_2

    .line 649
    sget-object v1, Lcrittercism/android/k$a;->a:Lcrittercism/android/k$a;

    invoke-virtual {v0, v1}, Lcrittercism/android/c;->a(Lcrittercism/android/k$a;)V

    .line 652
    :cond_2
    iget-object v1, p0, Lcrittercism/android/ac;->j:Lcrittercism/android/d;

    if-eqz v1, :cond_3

    .line 653
    iget-object v1, p0, Lcrittercism/android/ac;->j:Lcrittercism/android/d;

    invoke-virtual {v1}, Lcrittercism/android/d;->a()Lcrittercism/android/b;

    move-result-object v1

    iput-object v1, v0, Lcrittercism/android/c;->j:Lcrittercism/android/b;

    .line 655
    :cond_3
    invoke-static {}, Lcrittercism/android/bc;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 656
    invoke-static {}, Lcrittercism/android/bc;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/c;->a(Landroid/location/Location;)V

    .line 659
    :cond_4
    return-object v0
.end method

.method private varargs a(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 314
    :try_start_0
    sget-object v0, Lcrittercism/android/ac;->a:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcrittercism/android/ac;->k:Ljava/net/SocketImpl;

    iget-object v2, p0, Lcrittercism/android/ac;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcrittercism/android/ac;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcrittercism/android/ac;->k:Ljava/net/SocketImpl;

    iget-object v2, p0, Lcrittercism/android/ac;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcrittercism/android/ac;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcrittercism/android/ac;->k:Ljava/net/SocketImpl;

    iget v2, p0, Lcrittercism/android/ac;->localport:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    sget-object v0, Lcrittercism/android/ac;->d:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcrittercism/android/ac;->k:Ljava/net/SocketImpl;

    iget v2, p0, Lcrittercism/android/ac;->port:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 317
    :try_start_1
    sget-object v0, Lcrittercism/android/ac;->e:[Ljava/lang/reflect/Method;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcrittercism/android/ac;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 343
    invoke-direct {p0}, Lcrittercism/android/ac;->f()V

    return-object v0

    .line 314
    :catch_0
    move-exception v0

    new-instance v1, Lcrittercism/android/ck;

    invoke-direct {v1, v0}, Lcrittercism/android/ck;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcrittercism/android/ck;

    invoke-direct {v1, v0}, Lcrittercism/android/ck;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 318
    :catch_2
    move-exception v0

    .line 319
    :try_start_2
    new-instance v1, Lcrittercism/android/ck;

    invoke-direct {v1, v0}, Lcrittercism/android/ck;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcrittercism/android/ac;->f()V

    throw v0

    .line 320
    :catch_3
    move-exception v0

    .line 321
    :try_start_3
    new-instance v1, Lcrittercism/android/ck;

    invoke-direct {v1, v0}, Lcrittercism/android/ck;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 322
    :catch_4
    move-exception v0

    move-object v1, v0

    .line 323
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 324
    if-nez v0, :cond_0

    .line 328
    new-instance v0, Lcrittercism/android/ck;

    invoke-direct {v0, v1}, Lcrittercism/android/ck;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 329
    :cond_0
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 330
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 331
    :cond_1
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 332
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 336
    :cond_2
    new-instance v1, Lcrittercism/android/ck;

    invoke-direct {v1, v0}, Lcrittercism/android/ck;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 338
    :catch_5
    move-exception v0

    .line 339
    new-instance v1, Lcrittercism/android/ck;

    invoke-direct {v1, v0}, Lcrittercism/android/ck;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 340
    :catch_6
    move-exception v0

    .line 341
    new-instance v1, Lcrittercism/android/ck;

    invoke-direct {v1, v0}, Lcrittercism/android/ck;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private varargs b(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 354
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcrittercism/android/ac;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 355
    :catch_0
    move-exception v0

    throw v0

    .line 358
    :catch_1
    move-exception v0

    .line 359
    new-instance v1, Lcrittercism/android/ck;

    invoke-direct {v1, v0}, Lcrittercism/android/ck;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private varargs c(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 372
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcrittercism/android/ac;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 373
    :catch_0
    move-exception v0

    throw v0

    .line 375
    :catch_1
    move-exception v0

    throw v0

    .line 378
    :catch_2
    move-exception v0

    .line 379
    new-instance v1, Lcrittercism/android/ck;

    invoke-direct {v1, v0}, Lcrittercism/android/ck;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 242
    sget-boolean v0, Lcrittercism/android/ac;->f:Z

    return v0
.end method

.method public static d()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcrittercism/android/ac;->g:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 697
    sget-boolean v0, Lcrittercism/android/ac;->f:Z

    if-nez v0, :cond_0

    .line 698
    new-instance v0, Lcrittercism/android/ck;

    sget-object v1, Lcrittercism/android/ac;->g:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcrittercism/android/ck;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 702
    :cond_0
    new-instance v0, Lcrittercism/android/ac$1;

    invoke-direct {v0}, Lcrittercism/android/ac$1;-><init>()V

    .line 728
    new-instance v1, Lcrittercism/android/ac$2;

    invoke-direct {v1}, Lcrittercism/android/ac$2;-><init>()V

    .line 732
    new-instance v2, Lcrittercism/android/e;

    invoke-direct {v2, v1}, Lcrittercism/android/e;-><init>(Ljava/util/concurrent/Executor;)V

    .line 733
    new-instance v1, Lcrittercism/android/ac;

    invoke-direct {v1, v2, v3, v0}, Lcrittercism/android/ac;-><init>(Lcrittercism/android/e;Lcrittercism/android/d;Ljava/net/SocketImpl;)V

    .line 734
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 737
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v0}, Lcrittercism/android/ac;->setOption(ILjava/lang/Object;)V

    .line 743
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcrittercism/android/ac;->getOption(I)Ljava/lang/Object;

    .line 744
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcrittercism/android/ac;->sendUrgentData(I)V

    .line 745
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcrittercism/android/ac;->listen(I)V

    .line 746
    invoke-virtual {v1}, Lcrittercism/android/ac;->getOutputStream()Ljava/io/OutputStream;

    .line 747
    invoke-virtual {v1}, Lcrittercism/android/ac;->getInputStream()Ljava/io/InputStream;

    .line 748
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcrittercism/android/ac;->create(Z)V

    .line 749
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcrittercism/android/ac;->connect(Ljava/net/SocketAddress;I)V

    .line 750
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcrittercism/android/ac;->connect(Ljava/net/InetAddress;I)V

    .line 751
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcrittercism/android/ac;->connect(Ljava/lang/String;I)V

    .line 752
    invoke-virtual {v1}, Lcrittercism/android/ac;->close()V

    .line 753
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcrittercism/android/ac;->bind(Ljava/net/InetAddress;I)V

    .line 754
    invoke-virtual {v1}, Lcrittercism/android/ac;->available()I

    .line 755
    invoke-virtual {v1, v1}, Lcrittercism/android/ac;->accept(Ljava/net/SocketImpl;)V

    .line 756
    invoke-virtual {v1}, Lcrittercism/android/ac;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 757
    invoke-virtual {v1}, Lcrittercism/android/ac;->getInetAddress()Ljava/net/InetAddress;

    .line 758
    invoke-virtual {v1}, Lcrittercism/android/ac;->getLocalPort()I

    .line 759
    invoke-virtual {v1}, Lcrittercism/android/ac;->getPort()I

    .line 760
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcrittercism/android/ac;->setPerformancePreferences(III)V

    .line 761
    invoke-virtual {v1}, Lcrittercism/android/ac;->shutdownInput()V

    .line 762
    invoke-virtual {v1}, Lcrittercism/android/ac;->shutdownOutput()V

    .line 763
    invoke-virtual {v1}, Lcrittercism/android/ac;->supportsUrgentData()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcrittercism/android/ck; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 768
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v0

    throw v0

    .line 771
    :catch_1
    move-exception v0

    .line 773
    new-instance v1, Lcrittercism/android/ck;

    invoke-direct {v1, v0}, Lcrittercism/android/ck;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 768
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 290
    :try_start_0
    sget-object v0, Lcrittercism/android/ac;->a:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcrittercism/android/ac;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, p0, Lcrittercism/android/ac;->address:Ljava/net/InetAddress;

    .line 291
    sget-object v0, Lcrittercism/android/ac;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcrittercism/android/ac;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    iput-object v0, p0, Lcrittercism/android/ac;->fd:Ljava/io/FileDescriptor;

    .line 292
    sget-object v0, Lcrittercism/android/ac;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcrittercism/android/ac;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcrittercism/android/ac;->localport:I

    .line 293
    sget-object v0, Lcrittercism/android/ac;->d:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcrittercism/android/ac;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcrittercism/android/ac;->port:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    new-instance v1, Lcrittercism/android/ck;

    invoke-direct {v1, v0}, Lcrittercism/android/ck;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 296
    :catch_1
    move-exception v0

    .line 297
    new-instance v1, Lcrittercism/android/ck;

    invoke-direct {v1, v0}, Lcrittercism/android/ck;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()Lcrittercism/android/c;
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcrittercism/android/ac;->a(Z)Lcrittercism/android/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/c;)V
    .locals 2

    .prologue
    .line 669
    iget-object v1, p0, Lcrittercism/android/ac;->h:Ljava/util/Queue;

    monitor-enter v1

    .line 670
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ac;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 671
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final accept(Ljava/net/SocketImpl;)V
    .locals 2
    .param p1, "s"    # Ljava/net/SocketImpl;

    .prologue
    const/4 v1, 0x0

    .line 553
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, v1, v0}, Lcrittercism/android/ac;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    return-void
.end method

.method public final available()I
    .locals 2

    .prologue
    .line 557
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 559
    if-nez v0, :cond_0

    .line 560
    new-instance v0, Lcrittercism/android/ck;

    const-string v1, "Received a null Integer"

    invoke-direct {v0, v1}, Lcrittercism/android/ck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final b()Lcrittercism/android/c;
    .locals 2

    .prologue
    .line 676
    iget-object v1, p0, Lcrittercism/android/ac;->h:Ljava/util/Queue;

    monitor-enter v1

    .line 677
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ac;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final bind(Ljava/net/InetAddress;I)V
    .locals 4
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    const/4 v3, 0x2

    .line 545
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v3, v0}, Lcrittercism/android/ac;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    return-void
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 567
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ac;->m:Lcrittercism/android/x;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcrittercism/android/ac;->m:Lcrittercism/android/x;

    invoke-virtual {v0}, Lcrittercism/android/x;->d()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v0

    throw v0

    .line 575
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final connect(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 451
    const/4 v0, 0x6

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->c(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 455
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcrittercism/android/ac;->a(Z)Lcrittercism/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/c;->b()V

    invoke-virtual {v1}, Lcrittercism/android/c;->c()V

    invoke-virtual {v1}, Lcrittercism/android/c;->f()V

    invoke-virtual {v1, p1}, Lcrittercism/android/c;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcrittercism/android/c;->a(I)V

    invoke-virtual {v1, v0}, Lcrittercism/android/c;->a(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcrittercism/android/ac;->i:Lcrittercism/android/e;

    sget-object v3, Lcrittercism/android/c$a;->i:Lcrittercism/android/c$a;

    invoke-virtual {v2, v1, v3}, Lcrittercism/android/e;->a(Lcrittercism/android/c;Lcrittercism/android/c$a;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 462
    :cond_0
    :goto_0
    throw v0

    .line 456
    :catch_1
    move-exception v0

    throw v0

    .line 458
    :catch_2
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final connect(Ljava/net/InetAddress;I)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 483
    const/4 v0, 0x4

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->c(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 487
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcrittercism/android/ac;->a(Z)Lcrittercism/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/c;->b()V

    invoke-virtual {v1}, Lcrittercism/android/c;->c()V

    invoke-virtual {v1}, Lcrittercism/android/c;->f()V

    invoke-virtual {v1, p1}, Lcrittercism/android/c;->a(Ljava/net/InetAddress;)V

    invoke-virtual {v1, p2}, Lcrittercism/android/c;->a(I)V

    invoke-virtual {v1, v0}, Lcrittercism/android/c;->a(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcrittercism/android/ac;->i:Lcrittercism/android/e;

    sget-object v3, Lcrittercism/android/c$a;->i:Lcrittercism/android/c$a;

    invoke-virtual {v2, v1, v3}, Lcrittercism/android/e;->a(Lcrittercism/android/c;Lcrittercism/android/c$a;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 494
    :cond_0
    :goto_0
    throw v0

    .line 488
    :catch_1
    move-exception v0

    throw v0

    .line 490
    :catch_2
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final connect(Ljava/net/SocketAddress;I)V
    .locals 4
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I

    .prologue
    .line 514
    const/4 v0, 0x5

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->c(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 518
    if-eqz p1, :cond_0

    :try_start_1
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcrittercism/android/ac;->a(Z)Lcrittercism/android/c;

    move-result-object v1

    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1    # "address":Ljava/net/SocketAddress;
    invoke-virtual {v1}, Lcrittercism/android/c;->b()V

    invoke-virtual {v1}, Lcrittercism/android/c;->c()V

    invoke-virtual {v1}, Lcrittercism/android/c;->f()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcrittercism/android/c;->a(Ljava/net/InetAddress;)V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcrittercism/android/c;->a(I)V

    invoke-virtual {v1, v0}, Lcrittercism/android/c;->a(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcrittercism/android/ac;->i:Lcrittercism/android/e;

    sget-object v3, Lcrittercism/android/c$a;->i:Lcrittercism/android/c$a;

    invoke-virtual {v2, v1, v3}, Lcrittercism/android/e;->a(Lcrittercism/android/c;Lcrittercism/android/c$a;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 525
    :cond_0
    :goto_0
    throw v0

    .line 519
    :catch_1
    move-exception v0

    throw v0

    .line 521
    :catch_2
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final create(Z)V
    .locals 4
    .param p1, "stream"    # Z

    .prologue
    .line 446
    const/4 v0, 0x7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    return-void
.end method

.method public final getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 2

    .prologue
    .line 589
    const/16 v0, 0x8

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public final getInetAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 593
    const/16 v0, 0x9

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 385
    const/16 v0, 0xa

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 388
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcrittercism/android/ac;->m:Lcrittercism/android/x;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcrittercism/android/ac;->m:Lcrittercism/android/x;

    invoke-virtual {v1, v0}, Lcrittercism/android/x;->a(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcrittercism/android/ac;->m:Lcrittercism/android/x;

    .line 395
    :cond_0
    :goto_0
    return-object v0

    .line 388
    :cond_1
    new-instance v1, Lcrittercism/android/x;

    iget-object v2, p0, Lcrittercism/android/ac;->i:Lcrittercism/android/e;

    invoke-direct {v1, p0, v0, v2}, Lcrittercism/android/x;-><init>(Lcrittercism/android/ae;Ljava/io/InputStream;Lcrittercism/android/e;)V

    iput-object v1, p0, Lcrittercism/android/ac;->m:Lcrittercism/android/x;

    iget-object v0, p0, Lcrittercism/android/ac;->m:Lcrittercism/android/x;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    throw v0

    .line 391
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getLocalPort()I
    .locals 2

    .prologue
    .line 611
    const/16 v0, 0xb

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 612
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getOption(I)Ljava/lang/Object;
    .locals 1
    .param p1, "optID"    # I

    .prologue
    .line 628
    iget-object v0, p0, Lcrittercism/android/ac;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 412
    const/16 v0, 0xc

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 415
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcrittercism/android/ac;->l:Lcrittercism/android/w;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcrittercism/android/ac;->l:Lcrittercism/android/w;

    invoke-virtual {v1, v0}, Lcrittercism/android/w;->a(Ljava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcrittercism/android/ac;->l:Lcrittercism/android/w;

    .line 422
    :cond_0
    :goto_0
    return-object v0

    .line 415
    :cond_1
    new-instance v1, Lcrittercism/android/w;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/w;-><init>(Lcrittercism/android/ae;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcrittercism/android/ac;->l:Lcrittercism/android/w;

    iget-object v0, p0, Lcrittercism/android/ac;->l:Lcrittercism/android/w;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    throw v0

    .line 418
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getPort()I
    .locals 2

    .prologue
    .line 597
    const/16 v0, 0xd

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 598
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final listen(I)V
    .locals 4
    .param p1, "backlog"    # I

    .prologue
    .line 549
    const/16 v0, 0xe

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    return-void
.end method

.method public final sendUrgentData(I)V
    .locals 4
    .param p1, "data"    # I

    .prologue
    .line 607
    const/16 v0, 0xf

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    return-void
.end method

.method public final setOption(ILjava/lang/Object;)V
    .locals 1
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 624
    iget-object v0, p0, Lcrittercism/android/ac;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 625
    return-void
.end method

.method public final setPerformancePreferences(III)V
    .locals 4
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 620
    const/16 v0, 0x10

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    return-void
.end method

.method public final shutdownInput()V
    .locals 2

    .prologue
    .line 581
    const/16 v0, 0x11

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    return-void
.end method

.method public final shutdownOutput()V
    .locals 2

    .prologue
    .line 585
    const/16 v0, 0x12

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    return-void
.end method

.method public final supportsUrgentData()Z
    .locals 2

    .prologue
    .line 602
    const/16 v0, 0x13

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/ac;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 603
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcrittercism/android/ac;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
