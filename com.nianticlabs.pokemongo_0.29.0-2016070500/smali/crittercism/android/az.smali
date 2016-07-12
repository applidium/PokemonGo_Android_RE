.class public final Lcrittercism/android/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/au;
.implements Lcrittercism/android/aw;
.implements Lcrittercism/android/ax;
.implements Lcrittercism/android/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/az$4;,
        Lcrittercism/android/az$a;
    }
.end annotation


# static fields
.field static a:Lcrittercism/android/az;


# instance fields
.field public A:Lcrittercism/android/dt;

.field B:I

.field public C:Z

.field private D:Ljava/lang/String;

.field private E:Lcrittercism/android/bs;

.field private F:Lcrittercism/android/bs;

.field private G:Lcrittercism/android/g;

.field private H:Lcrittercism/android/at;

.field private I:Z

.field private J:Ljava/lang/String;

.field public b:Z

.field public c:Landroid/content/Context;

.field public final d:Landroid/os/ConditionVariable;

.field public final e:Landroid/os/ConditionVariable;

.field public f:Lcrittercism/android/dw;

.field g:Lcrittercism/android/bs;

.field h:Lcrittercism/android/bs;

.field i:Lcrittercism/android/bs;

.field j:Lcrittercism/android/bs;

.field k:Lcrittercism/android/bs;

.field l:Lcrittercism/android/bs;

.field m:Lcrittercism/android/bs;

.field n:Lcrittercism/android/bs;

.field o:Lcrittercism/android/bs;

.field p:Lcrittercism/android/cv;

.field public q:Lcrittercism/android/dg;

.field r:Ljava/util/concurrent/ExecutorService;

.field public s:Ljava/util/concurrent/ExecutorService;

.field public t:Z

.field public u:Lcrittercism/android/bb;

.field protected v:Lcrittercism/android/e;

.field public w:Lcrittercism/android/dr;

.field x:Lcrittercism/android/dv;

.field public y:Lcrittercism/android/bi;

.field public z:Ljava/util/Map;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean v1, p0, Lcrittercism/android/az;->b:Z

    .line 97
    iput-object v2, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    .line 98
    iput-object v2, p0, Lcrittercism/android/az;->D:Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcrittercism/android/az;->d:Landroid/os/ConditionVariable;

    .line 104
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcrittercism/android/az;->e:Landroid/os/ConditionVariable;

    .line 106
    new-instance v0, Lcrittercism/android/dw;

    invoke-direct {v0}, Lcrittercism/android/dw;-><init>()V

    iput-object v0, p0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    .line 119
    iput-object v2, p0, Lcrittercism/android/az;->p:Lcrittercism/android/cv;

    .line 121
    iput-object v2, p0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    .line 122
    iput-object v2, p0, Lcrittercism/android/az;->G:Lcrittercism/android/g;

    .line 125
    new-instance v0, Lcrittercism/android/dz;

    invoke-direct {v0}, Lcrittercism/android/dz;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/az;->r:Ljava/util/concurrent/ExecutorService;

    .line 128
    new-instance v0, Lcrittercism/android/dz;

    invoke-direct {v0}, Lcrittercism/android/dz;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/az;->s:Ljava/util/concurrent/ExecutorService;

    .line 132
    iput-boolean v1, p0, Lcrittercism/android/az;->I:Z

    .line 133
    iput-boolean v1, p0, Lcrittercism/android/az;->t:Z

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/az;->J:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Lcrittercism/android/az;->x:Lcrittercism/android/dv;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/az;->z:Ljava/util/Map;

    .line 147
    iput-object v2, p0, Lcrittercism/android/az;->A:Lcrittercism/android/dt;

    .line 152
    iput v1, p0, Lcrittercism/android/az;->B:I

    .line 153
    iput-boolean v1, p0, Lcrittercism/android/az;->C:Z

    .line 158
    new-instance v0, Lcrittercism/android/e;

    iget-object v1, p0, Lcrittercism/android/az;->s:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1}, Lcrittercism/android/e;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcrittercism/android/az;->v:Lcrittercism/android/e;

    .line 159
    return-void
.end method

.method public static A()Lcrittercism/android/az;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcrittercism/android/az;->a:Lcrittercism/android/az;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcrittercism/android/az;

    invoke-direct {v0}, Lcrittercism/android/az;-><init>()V

    sput-object v0, Lcrittercism/android/az;->a:Lcrittercism/android/az;

    .line 166
    :cond_0
    sget-object v0, Lcrittercism/android/az;->a:Lcrittercism/android/az;

    return-object v0
.end method

.method private static F()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    move v0, v1

    .line 232
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 233
    aget-object v3, v2, v0

    .line 234
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onCreate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onResume"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    :cond_0
    const/4 v1, 0x1

    .line 239
    :cond_1
    return v1

    .line 232
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private G()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 293
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 294
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 297
    iget-object v0, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 299
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 302
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 303
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v1, v4, :cond_4

    .line 304
    add-int/lit8 v1, v2, 0x1

    :goto_1
    move v2, v1

    .line 306
    goto :goto_0

    .line 308
    :cond_0
    if-gt v2, v7, :cond_2

    .line 309
    iput-boolean v3, p0, Lcrittercism/android/az;->t:Z

    .line 324
    :cond_1
    :goto_2
    return-void

    .line 313
    :cond_2
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 318
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 319
    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-ne v0, v5, :cond_3

    .line 320
    iput-boolean v7, p0, Lcrittercism/android/az;->t:Z

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private H()Ljava/lang/String;
    .locals 2

    .prologue
    .line 526
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/az;->J:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/az;->J:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    :cond_0
    iget-object v0, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/az;->J:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :cond_1
    :goto_0
    iget-object v0, p0, Lcrittercism/android/az;->J:Ljava/lang/String;

    return-object v0

    .line 531
    :catch_0
    move-exception v0

    const-string v0, "Call to getPackageName() failed.  Please contact us at support@crittercism.com."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcrittercism/android/az;->J:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final B()Z
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcrittercism/android/az;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 1127
    iget-object v0, p0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    invoke-virtual {v0}, Lcrittercism/android/dw;->b()Z

    move-result v0

    return v0
.end method

.method public final C()V
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcrittercism/android/az;->A:Lcrittercism/android/dt;

    .line 1152
    iget-object v0, p0, Lcrittercism/android/az;->A:Lcrittercism/android/dt;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcrittercism/android/az;->A:Lcrittercism/android/dt;

    invoke-virtual {v0}, Lcrittercism/android/dt;->d()V

    .line 1155
    :cond_0
    return-void
.end method

.method public final D()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1188
    iget-object v0, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1189
    invoke-direct {p0}, Lcrittercism/android/az;->H()Ljava/lang/String;

    move-result-object v2

    .line 1190
    const/4 v0, 0x0

    .line 1191
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1192
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    invoke-static {v0}, Lcrittercism/android/dp;->a(Ljava/lang/String;)Lcrittercism/android/dn;

    move-result-object v0

    .line 1194
    if-eqz v0, :cond_1

    .line 1195
    invoke-interface {v0, v2}, Lcrittercism/android/dn;->a(Ljava/lang/String;)Lcrittercism/android/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/dm;->a()Ljava/lang/String;

    move-result-object v0

    .line 1201
    :cond_0
    :goto_0
    return-object v0

    .line 1197
    :cond_1
    const-string v0, "Could not find app market for this app.  Will try rate-my-app test target in config."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-virtual {v0}, Lcrittercism/android/bb;->getRateMyAppTestTarget()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final E()V
    .locals 2

    .prologue
    .line 1354
    iget-boolean v0, p0, Lcrittercism/android/az;->t:Z

    if-eqz v0, :cond_1

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1360
    :cond_1
    new-instance v0, Lcrittercism/android/az$3;

    invoke-direct {v0, p0, p0}, Lcrittercism/android/az$3;-><init>(Lcrittercism/android/az;Lcrittercism/android/az;)V

    .line 1380
    iget-object v1, p0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    invoke-virtual {v1, v0}, Lcrittercism/android/dg;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1381
    iget-object v1, p0, Lcrittercism/android/az;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1260
    iget-object v2, p0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    invoke-virtual {v2}, Lcrittercism/android/dw;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "User has opted out of crittercism.  generateRateMyAppAlertDialog returning null."

    invoke-static {v2}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_5

    .line 1311
    :goto_1
    return-object v0

    .line 1260
    :cond_0
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_1

    const-string v2, "Context object must be an instance of Activity for AlertDialog to form correctly.  generateRateMyAppAlertDialog returning null."

    invoke-static {v2}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "Message has to be a non-empty string.  generateRateMyAppAlertDialog returning null."

    invoke-static {v2}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    const-string v2, "Rate my app not supported below api level 5"

    invoke-static {v2}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 1264
    :cond_5
    invoke-virtual {p0}, Lcrittercism/android/az;->D()Ljava/lang/String;

    move-result-object v1

    .line 1265
    if-nez v1, :cond_6

    .line 1266
    const-string v1, "Cannot create proper URI to open app market.  Returning null."

    invoke-static {v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 1270
    :cond_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1271
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1274
    :try_start_0
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1282
    const/4 v2, -0x1

    const-string v3, "Yes"

    new-instance v4, Lcrittercism/android/az$10;

    invoke-direct {v4, p0, v1}, Lcrittercism/android/az$10;-><init>(Lcrittercism/android/az;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1292
    const/4 v1, -0x2

    const-string v2, "No"

    new-instance v3, Lcrittercism/android/az$11;

    invoke-direct {v3, p0}, Lcrittercism/android/az$11;-><init>(Lcrittercism/android/az;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1302
    const/4 v1, -0x3

    const-string v2, "Maybe Later"

    new-instance v3, Lcrittercism/android/az$12;

    invoke-direct {v3, p0}, Lcrittercism/android/az$12;-><init>(Lcrittercism/android/az;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 1278
    :catch_0
    move-exception v1

    const-string v1, "Failed to create AlertDialog instance from AlertDialog.Builder.  Did you remember to call Looper.prepare() before calling Crittercism.generateRateMyAppAlertDialog()?"

    invoke-static {v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcrittercism/android/az;->D:Ljava/lang/String;

    .line 775
    if-nez v0, :cond_0

    .line 776
    const-string v0, ""

    .line 779
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 952
    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 955
    if-eqz v1, :cond_0

    .line 956
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 959
    :cond_0
    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    .locals 6

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing Crittercism 5.0.8 for App ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcrittercism/android/bn;

    invoke-direct {v0, p2}, Lcrittercism/android/bn;-><init>(Ljava/lang/String;)V

    .line 177
    iput-object p2, p0, Lcrittercism/android/az;->D:Ljava/lang/String;

    .line 178
    new-instance v1, Lcrittercism/android/bb;

    invoke-direct {v1, v0, p3}, Lcrittercism/android/bb;-><init>(Lcrittercism/android/bn;Lcom/crittercism/app/CrittercismConfig;)V

    iput-object v1, p0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    .line 179
    iput-object p1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    .line 180
    new-instance v0, Lcrittercism/android/at;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    iget-object v2, p0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/at;-><init>(Landroid/content/Context;Lcom/crittercism/app/CrittercismConfig;)V

    iput-object v0, p0, Lcrittercism/android/az;->H:Lcrittercism/android/at;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/az;->J:Ljava/lang/String;

    .line 183
    new-instance v0, Lcrittercism/android/dr;

    invoke-direct {v0, p1}, Lcrittercism/android/dr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcrittercism/android/az;->w:Lcrittercism/android/dr;

    .line 185
    invoke-direct {p0}, Lcrittercism/android/az;->G()V

    .line 186
    const-wide v0, 0xdf8475800L

    .line 187
    iget-boolean v2, p0, Lcrittercism/android/az;->t:Z

    if-eqz v2, :cond_0

    .line 188
    const-wide v0, 0x2cb417800L

    .line 190
    :cond_0
    new-instance v2, Lcrittercism/android/cv;

    invoke-direct {v2, v0, v1}, Lcrittercism/android/cv;-><init>(J)V

    iput-object v2, p0, Lcrittercism/android/az;->p:Lcrittercism/android/cv;

    .line 193
    invoke-static {}, Lcrittercism/android/az;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    const-string v0, "Crittercism should be initialized in onCreate() of MainActivity"

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcrittercism/android/az;->H:Lcrittercism/android/at;

    invoke-static {v0}, Lcrittercism/android/bx;->a(Lcrittercism/android/at;)V

    .line 198
    iget-object v0, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/bx;->a(Landroid/content/Context;)V

    .line 199
    new-instance v0, Lcrittercism/android/cc;

    invoke-direct {v0}, Lcrittercism/android/cc;-><init>()V

    invoke-static {v0}, Lcrittercism/android/bx;->a(Lcrittercism/android/cb;)V

    .line 200
    new-instance v0, Lcrittercism/android/bf;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    iget-object v2, p0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bf;-><init>(Landroid/content/Context;Lcom/crittercism/app/CrittercismConfig;)V

    invoke-static {v0}, Lcrittercism/android/bx;->a(Lcrittercism/android/bf;)V

    .line 202
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/az;->v:Lcrittercism/android/e;

    iget-object v1, p0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-virtual {v1}, Lcrittercism/android/bb;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/e;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcrittercism/android/az;->v:Lcrittercism/android/e;

    iget-object v1, p0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-virtual {v1}, Lcrittercism/android/bb;->getPreserveQueryStringPatterns()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/e;->b(Ljava/util/List;)V

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-virtual {v2}, Lcrittercism/android/bb;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/api/apm/network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcrittercism/android/g;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/g;-><init>(Lcrittercism/android/au;Ljava/net/URL;)V

    iput-object v1, p0, Lcrittercism/android/az;->G:Lcrittercism/android/g;

    iget-object v0, p0, Lcrittercism/android/az;->v:Lcrittercism/android/e;

    iget-object v1, p0, Lcrittercism/android/az;->G:Lcrittercism/android/g;

    invoke-virtual {v0, v1}, Lcrittercism/android/e;->a(Lcrittercism/android/f;)V

    iget-object v0, p0, Lcrittercism/android/az;->v:Lcrittercism/android/e;

    invoke-virtual {v0, p0}, Lcrittercism/android/e;->a(Lcrittercism/android/f;)V

    new-instance v0, Lcrittercism/android/dy;

    iget-object v1, p0, Lcrittercism/android/az;->G:Lcrittercism/android/g;

    const-string v2, "OPTMZ"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/dy;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-virtual {v0}, Lcrittercism/android/bb;->isServiceMonitoringEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_6

    .line 203
    :cond_2
    :goto_0
    new-instance v0, Lcrittercism/android/dg;

    iget-object v1, p0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/dg;-><init>(Lcrittercism/android/bb;Landroid/content/Context;Lcrittercism/android/aw;Lcrittercism/android/ax;Lcrittercism/android/au;)V

    iput-object v0, p0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    .line 204
    iget-boolean v0, p0, Lcrittercism/android/az;->t:Z

    if-nez v0, :cond_3

    .line 205
    new-instance v0, Lcrittercism/android/ec;

    iget-object v1, p0, Lcrittercism/android/az;->s:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    iget-object v3, p0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    invoke-direct {v0, p0, v1, v2, v3}, Lcrittercism/android/ec;-><init>(Lcrittercism/android/aw;Ljava/util/concurrent/ExecutorService;Lcrittercism/android/dg;Lcrittercism/android/dw;)V

    invoke-static {v0}, Lcrittercism/android/dx;->a(Lcrittercism/android/ec;)V

    .line 213
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 214
    instance-of v1, v0, Lcrittercism/android/ay;

    if-nez v1, :cond_4

    .line 215
    new-instance v1, Lcrittercism/android/ay;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/ay;-><init>(Lcrittercism/android/az;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 217
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 220
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-nez v0, :cond_7

    const-string v0, "Application context not provided. Automatic breadcrumbs will not be recorded."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 221
    :goto_1
    iget-boolean v0, p0, Lcrittercism/android/az;->t:Z

    if-nez v0, :cond_5

    .line 222
    invoke-static {p0}, Lcrittercism/android/bg;->b(Lcrittercism/android/az;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcrittercism/android/az$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcrittercism/android/az$a;-><init>(B)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 225
    :cond_5
    new-instance v0, Lcrittercism/android/dy;

    iget-object v1, p0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    invoke-direct {v0, v1}, Lcrittercism/android/dy;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcrittercism/android/dy;->start()V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/az;->b:Z

    .line 227
    return-void

    .line 202
    :cond_6
    :try_start_1
    new-instance v0, Lcrittercism/android/d;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcrittercism/android/d;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcrittercism/android/i;

    iget-object v2, p0, Lcrittercism/android/az;->v:Lcrittercism/android/e;

    invoke-direct {v1, v2, v0}, Lcrittercism/android/i;-><init>(Lcrittercism/android/e;Lcrittercism/android/d;)V

    invoke-virtual {v1}, Lcrittercism/android/i;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcrittercism/android/az;->I:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "installedApm = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcrittercism/android/az;->I:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in startApm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    invoke-static {}, Lcrittercism/android/dx;->c()V

    goto/16 :goto_0

    .line 220
    :cond_7
    invoke-static {}, Lcrittercism/android/dx;->b()V

    iget-object v0, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcrittercism/android/av;

    iget-object v2, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcrittercism/android/av;-><init>(Landroid/content/Context;Lcrittercism/android/az;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_1

    :cond_8
    const-string v0, "API Level is less than 14. Automatic breadcrumbs are not supported."

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public final a(Lcrittercism/android/bh;)V
    .locals 3

    .prologue
    .line 976
    iget-object v0, p0, Lcrittercism/android/az;->y:Lcrittercism/android/bi;

    .line 977
    iget-object v0, p0, Lcrittercism/android/az;->y:Lcrittercism/android/bi;

    if-nez v0, :cond_1

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    invoke-static {p1}, Lcrittercism/android/bg;->a(Lcrittercism/android/bh;)V

    .line 982
    invoke-static {}, Lcrittercism/android/bg;->i()V

    .line 984
    iget-boolean v0, p1, Lcrittercism/android/bh;->a:Z

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcrittercism/android/az;->y:Lcrittercism/android/bi;

    iget v1, p1, Lcrittercism/android/bh;->b:I

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lcrittercism/android/bi;->a(ILjava/util/concurrent/TimeUnit;)V

    .line 986
    iget-object v0, p0, Lcrittercism/android/az;->y:Lcrittercism/android/bi;

    invoke-virtual {v0}, Lcrittercism/android/bi;->b()V

    goto :goto_0
.end method

.method public final a(Lcrittercism/android/c;)V
    .locals 2

    .prologue
    .line 739
    new-instance v0, Lcrittercism/android/az$8;

    invoke-direct {v0, p0, p1}, Lcrittercism/android/az$8;-><init>(Lcrittercism/android/az;Lcrittercism/android/c;)V

    .line 745
    iget-object v1, p0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    invoke-virtual {v1, v0}, Lcrittercism/android/dg;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 746
    iget-object v1, p0, Lcrittercism/android/az;->s:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 748
    :cond_0
    return-void
.end method

.method public final a(Lcrittercism/android/ci;)V
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    invoke-virtual {v0}, Lcrittercism/android/dw;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    new-instance v0, Lcrittercism/android/az$9;

    invoke-direct {v0, p0, p1}, Lcrittercism/android/az$9;-><init>(Lcrittercism/android/az;Lcrittercism/android/ci;)V

    .line 762
    iget-object v1, p0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    invoke-virtual {v1, v0}, Lcrittercism/android/dg;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    iget-object v1, p0, Lcrittercism/android/az;->s:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcrittercism/android/h;)V
    .locals 3

    .prologue
    .line 1008
    iget-object v0, p0, Lcrittercism/android/az;->G:Lcrittercism/android/g;

    if-nez v0, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget-boolean v0, p1, Lcrittercism/android/h;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcrittercism/android/h;->c:Z

    if-nez v0, :cond_0

    .line 1013
    const-string v0, "Enabling OPTMZ"

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcrittercism/android/az;->G:Lcrittercism/android/g;

    iget v1, p1, Lcrittercism/android/h;->d:I

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lcrittercism/android/g;->a(ILjava/util/concurrent/TimeUnit;)V

    .line 1015
    iget-object v0, p0, Lcrittercism/android/az;->G:Lcrittercism/android/g;

    invoke-virtual {v0}, Lcrittercism/android/g;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1136
    iget-object v0, p0, Lcrittercism/android/az;->A:Lcrittercism/android/dt;

    .line 1138
    iget-object v0, p0, Lcrittercism/android/az;->A:Lcrittercism/android/dt;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcrittercism/android/az;->A:Lcrittercism/android/dt;

    invoke-virtual {v0}, Lcrittercism/android/dt;->d()V

    .line 1142
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1143
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1144
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1145
    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1146
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1038
    if-eqz v0, :cond_0

    .line 1039
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1040
    if-eqz v0, :cond_0

    .line 1041
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1042
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1043
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1046
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 965
    if-eqz v0, :cond_0

    .line 966
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 967
    if-eqz v0, :cond_0

    .line 968
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 969
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 970
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 973
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/net/URL;JJJILjava/lang/Exception;J)V
    .locals 7

    .prologue
    .line 429
    if-nez p1, :cond_0

    .line 431
    const-string v2, "Null HTTP request method provided. Endpoint will not be logged."

    invoke-static {v2}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    .line 518
    :goto_0
    return-void

    .line 434
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 435
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 436
    const-string v4, "GET"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 437
    const-string v4, "POST"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 438
    const-string v4, "HEAD"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 439
    const-string v4, "PUT"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    const-string v4, "DELETE"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 441
    const-string v4, "TRACE"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    const-string v4, "OPTIONS"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 443
    const-string v4, "CONNECT"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    const-string v4, "PATCH"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Logging endpoint with invalid HTTP request method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 451
    :cond_1
    if-nez p2, :cond_2

    .line 452
    const-string v2, "Null URL provided. Endpoint will not be logged"

    invoke-static {v2}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v3, p5, v4

    if-ltz v3, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v3, p7, v4

    if-gez v3, :cond_4

    .line 457
    :cond_3
    const-string v2, "Invalid byte values. Bytes need to be non-negative. Endpoint will not be logged."

    invoke-static {v2}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_4
    if-eqz p9, :cond_7

    .line 462
    const/16 v3, 0x64

    move/from16 v0, p9

    if-lt v0, v3, :cond_5

    const/16 v3, 0x258

    move/from16 v0, p9

    if-lt v0, v3, :cond_6

    .line 463
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Logging endpoint with invalid HTTP response code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 470
    :cond_6
    :goto_1
    new-instance v3, Lcrittercism/android/d;

    iget-object v4, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcrittercism/android/d;-><init>(Landroid/content/Context;)V

    .line 477
    invoke-virtual {v3}, Lcrittercism/android/d;->a()Lcrittercism/android/b;

    move-result-object v3

    .line 478
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gez v4, :cond_8

    .line 485
    const-string v2, "Invalid latency. Endpoint will not be logged."

    invoke-static {v2}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    :cond_7
    if-nez p10, :cond_6

    .line 467
    const-string v3, "Logging endpoint with null error and response code of 0."

    invoke-static {v3}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 491
    :cond_8
    const-wide/16 v4, 0x0

    cmp-long v4, p11, v4

    if-gez v4, :cond_9

    .line 492
    const-string v2, "Invalid start time. Endpoint will not be logged."

    invoke-static {v2}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    :cond_9
    new-instance v4, Lcrittercism/android/c;

    invoke-direct {v4}, Lcrittercism/android/c;-><init>()V

    .line 497
    iput-object v2, v4, Lcrittercism/android/c;->f:Ljava/lang/String;

    .line 498
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcrittercism/android/c;->a(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v4, p5, p6}, Lcrittercism/android/c;->b(J)V

    .line 500
    invoke-virtual {v4, p7, p8}, Lcrittercism/android/c;->d(J)V

    .line 501
    move/from16 v0, p9

    iput v0, v4, Lcrittercism/android/c;->e:I

    .line 502
    iput-object v3, v4, Lcrittercism/android/c;->j:Lcrittercism/android/b;

    .line 503
    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Lcrittercism/android/c;->e(J)V

    .line 504
    add-long v2, p11, p3

    invoke-virtual {v4, v2, v3}, Lcrittercism/android/c;->f(J)V

    .line 506
    invoke-static {}, Lcrittercism/android/bc;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 510
    invoke-static {}, Lcrittercism/android/bc;->a()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcrittercism/android/c;->a(Landroid/location/Location;)V

    .line 514
    :cond_a
    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Lcrittercism/android/c;->a(Ljava/lang/Throwable;)V

    .line 515
    iget-object v2, p0, Lcrittercism/android/az;->v:Lcrittercism/android/e;

    sget-object v3, Lcrittercism/android/c$a;->l:Lcrittercism/android/c$a;

    invoke-virtual {v2, v4, v3}, Lcrittercism/android/e;->a(Lcrittercism/android/c;Lcrittercism/android/c$a;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 331
    iget-object v0, p0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    if-nez v0, :cond_1

    .line 333
    const-string v0, "Unable to handle application crash. Crittercism not yet initialized"

    invoke-static {v0}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    invoke-virtual {v0}, Lcrittercism/android/dg;->b()V

    .line 339
    iget-object v0, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcrittercism/android/dq;->a(Landroid/content/Context;Z)V

    .line 341
    iget-object v0, p0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    invoke-virtual {v0}, Lcrittercism/android/dw;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-boolean v0, p0, Lcrittercism/android/az;->t:Z

    if-eqz v0, :cond_2

    .line 343
    new-instance v0, Lcrittercism/android/bk;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcrittercism/android/bk;-><init>(Ljava/lang/Throwable;J)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcrittercism/android/bk;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Lcrittercism/android/cu;

    invoke-direct {v1, p0}, Lcrittercism/android/cu;-><init>(Lcrittercism/android/au;)V

    sget-object v2, Lcrittercism/android/br;->e:Lcrittercism/android/br;

    invoke-virtual {v2}, Lcrittercism/android/br;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcrittercism/android/cu;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lcrittercism/android/cu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/dj;

    new-instance v2, Lcrittercism/android/dc;

    new-instance v3, Lcrittercism/android/db;

    iget-object v4, p0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-virtual {v4}, Lcrittercism/android/bb;->b()Ljava/lang/String;

    move-result-object v4

    const-string v6, "/android_v2/handle_crashes"

    invoke-direct {v3, v4, v6}, Lcrittercism/android/db;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcrittercism/android/db;->a()Ljava/net/URL;

    move-result-object v3

    invoke-direct {v2, v3}, Lcrittercism/android/dc;-><init>(Ljava/net/URL;)V

    invoke-direct {v1, v0, v2, v5}, Lcrittercism/android/dj;-><init>(Lcrittercism/android/cw;Lcrittercism/android/dc;Lcrittercism/android/cy;)V

    invoke-virtual {v1}, Lcrittercism/android/dj;->run()V

    goto :goto_0

    .line 345
    :cond_2
    instance-of v0, p1, Lcom/crittercism/integrations/PluginException;

    invoke-static {p0, v0}, Lcrittercism/android/bg;->a(Lcrittercism/android/az;Z)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bk;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcrittercism/android/bk;-><init>(Ljava/lang/Throwable;J)V

    const-string v2, "crashed_session"

    iget-object v3, p0, Lcrittercism/android/az;->k:Lcrittercism/android/bs;

    invoke-virtual {v1, v2, v3}, Lcrittercism/android/bk;->a(Ljava/lang/String;Lcrittercism/android/bs;)V

    iget-object v2, p0, Lcrittercism/android/az;->F:Lcrittercism/android/bs;

    invoke-virtual {v2}, Lcrittercism/android/bs;->b()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "previous_session"

    iget-object v3, p0, Lcrittercism/android/az;->F:Lcrittercism/android/bs;

    invoke-virtual {v1, v2, v3}, Lcrittercism/android/bk;->a(Ljava/lang/String;Lcrittercism/android/bs;)V

    :cond_3
    iget-object v2, p0, Lcrittercism/android/az;->l:Lcrittercism/android/bs;

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bs;)V

    iget-object v2, p0, Lcrittercism/android/az;->m:Lcrittercism/android/bs;

    new-instance v3, Lcrittercism/android/bo;

    invoke-direct {v3, v2}, Lcrittercism/android/bo;-><init>(Lcrittercism/android/bs;)V

    iget-object v2, v3, Lcrittercism/android/bo;->a:Lorg/json/JSONArray;

    iput-object v2, v1, Lcrittercism/android/bk;->b:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lcrittercism/android/bk;->a()V

    invoke-virtual {v1, v0}, Lcrittercism/android/bk;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcrittercism/android/az;->j:Lcrittercism/android/bs;

    invoke-virtual {v0, v1}, Lcrittercism/android/bs;->a(Lcrittercism/android/ch;)Z

    new-instance v0, Lcrittercism/android/df;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcrittercism/android/df;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcrittercism/android/az;->g:Lcrittercism/android/bs;

    new-instance v2, Lcrittercism/android/da$a;

    invoke-direct {v2}, Lcrittercism/android/da$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-virtual {v3}, Lcrittercism/android/bb;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/v0/appload"

    new-instance v7, Lcrittercism/android/cs$b;

    invoke-direct {v7}, Lcrittercism/android/cs$b;-><init>()V

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/df;->a(Lcrittercism/android/bs;Lcrittercism/android/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/au;Lcrittercism/android/cx;)V

    iget-object v1, p0, Lcrittercism/android/az;->h:Lcrittercism/android/bs;

    new-instance v2, Lcrittercism/android/da$a;

    invoke-direct {v2}, Lcrittercism/android/da$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-virtual {v3}, Lcrittercism/android/bb;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_exceptions"

    new-instance v7, Lcrittercism/android/cu$a;

    invoke-direct {v7}, Lcrittercism/android/cu$a;-><init>()V

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/df;->a(Lcrittercism/android/bs;Lcrittercism/android/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/au;Lcrittercism/android/cx;)V

    iget-object v1, p0, Lcrittercism/android/az;->i:Lcrittercism/android/bs;

    new-instance v2, Lcrittercism/android/da$a;

    invoke-direct {v2}, Lcrittercism/android/da$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-virtual {v3}, Lcrittercism/android/bb;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_ndk_crashes"

    new-instance v7, Lcrittercism/android/cu$a;

    invoke-direct {v7}, Lcrittercism/android/cu$a;-><init>()V

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/df;->a(Lcrittercism/android/bs;Lcrittercism/android/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/au;Lcrittercism/android/cx;)V

    iget-object v1, p0, Lcrittercism/android/az;->j:Lcrittercism/android/bs;

    new-instance v2, Lcrittercism/android/da$a;

    invoke-direct {v2}, Lcrittercism/android/da$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-virtual {v3}, Lcrittercism/android/bb;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_crashes"

    new-instance v7, Lcrittercism/android/cu$a;

    invoke-direct {v7}, Lcrittercism/android/cu$a;-><init>()V

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/df;->a(Lcrittercism/android/bs;Lcrittercism/android/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/au;Lcrittercism/android/cx;)V

    :try_start_0
    invoke-virtual {v0}, Lcrittercism/android/df;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InterruptedException in logCrashException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    invoke-static {}, Lcrittercism/android/dx;->c()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected throwable in logCrashException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    invoke-static {}, Lcrittercism/android/dx;->c()V

    goto/16 :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 1325
    iget-boolean v0, p0, Lcrittercism/android/az;->t:Z

    if-eqz v0, :cond_1

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 1331
    :cond_1
    new-instance v0, Lcrittercism/android/az$2;

    invoke-direct {v0, p0, p0, p1}, Lcrittercism/android/az$2;-><init>(Lcrittercism/android/az;Lcrittercism/android/az;Lorg/json/JSONObject;)V

    .line 1347
    iget-object v1, p0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    invoke-virtual {v1, v0}, Lcrittercism/android/dg;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1348
    iget-object v1, p0, Lcrittercism/android/az;->s:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1485
    .line 1487
    iget-boolean v0, p0, Lcrittercism/android/az;->t:Z

    if-eqz v0, :cond_0

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Transactions are not supported for services. Returning default value of -1 for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    move v0, v1

    .line 1499
    :goto_0
    return v0

    .line 1493
    :cond_0
    iget-object v2, p0, Lcrittercism/android/az;->z:Ljava/util/Map;

    monitor-enter v2

    .line 1494
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/az;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    .line 1495
    if-eqz v0, :cond_1

    .line 1496
    invoke-virtual {v0}, Lcom/crittercism/app/Transaction;->d()I

    move-result v0

    .line 1498
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1026
    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1029
    if-eqz v1, :cond_0

    .line 1030
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1033
    :cond_0
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcrittercism/android/az;->H:Lcrittercism/android/at;

    iget-object v0, v0, Lcrittercism/android/at;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized b(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 618
    monitor-enter p0

    if-nez p1, :cond_1

    .line 619
    :try_start_0
    const-string v0, "Calling logHandledException with a null java.lang.Throwable. Nothing will be reported to Crittercism"

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 623
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcrittercism/android/az;->t:Z

    if-eqz v0, :cond_2

    .line 624
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    new-instance v2, Lcrittercism/android/az$5;

    invoke-direct {v2, p0, p1, v0, v1}, Lcrittercism/android/az$5;-><init>(Lcrittercism/android/az;Ljava/lang/Throwable;J)V

    iget-object v0, p0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    invoke-virtual {v0, v2}, Lcrittercism/android/dg;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/az;->s:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 626
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    new-instance v2, Lcrittercism/android/az$6;

    invoke-direct {v2, p0, p1, v0, v1}, Lcrittercism/android/az$6;-><init>(Lcrittercism/android/az;Ljava/lang/Throwable;J)V

    iget-object v0, p0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    invoke-virtual {v0, v2}, Lcrittercism/android/dg;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/az;->s:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 785
    const-string v0, ""

    .line 787
    iget-object v1, p0, Lcrittercism/android/az;->w:Lcrittercism/android/dr;

    if-eqz v1, :cond_0

    .line 788
    iget-object v0, p0, Lcrittercism/android/az;->w:Lcrittercism/android/dr;

    invoke-virtual {v0}, Lcrittercism/android/dr;->a()Ljava/lang/String;

    move-result-object v0

    .line 791
    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1049
    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1052
    if-eqz v1, :cond_0

    .line 1053
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1056
    :cond_0
    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1101
    const-string v0, "5.0.8"

    return-object v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 820
    const/4 v0, -0x1

    .line 821
    iget-object v1, p0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    if-eqz v1, :cond_0

    .line 822
    iget-object v0, p0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    invoke-virtual {v0}, Lcrittercism/android/dw;->a()Lcrittercism/android/du;

    move-result-object v0

    iget v0, v0, Lcrittercism/android/du;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 824
    :cond_0
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    new-instance v0, Lcrittercism/android/bx$f;

    invoke-direct {v0}, Lcrittercism/android/bx$f;-><init>()V

    iget-object v0, v0, Lcrittercism/android/bx$f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 806
    new-instance v0, Lcrittercism/android/bx$o;

    invoke-direct {v0}, Lcrittercism/android/bx$o;-><init>()V

    iget-object v0, v0, Lcrittercism/android/bx$o;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 811
    new-instance v0, Lcrittercism/android/bx$p;

    invoke-direct {v0}, Lcrittercism/android/bx$p;-><init>()V

    iget-object v0, v0, Lcrittercism/android/bx$p;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1106
    const-string v0, "Android"

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1111
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1116
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lcrittercism/android/dw;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    return-object v0
.end method

.method public final m()Lcrittercism/android/dt;
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lcrittercism/android/az;->A:Lcrittercism/android/dt;

    return-object v0
.end method

.method public final n()Lcrittercism/android/bs;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcrittercism/android/az;->g:Lcrittercism/android/bs;

    return-object v0
.end method

.method public final o()Lcrittercism/android/bs;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcrittercism/android/az;->h:Lcrittercism/android/bs;

    return-object v0
.end method

.method public final p()Lcrittercism/android/bs;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcrittercism/android/az;->E:Lcrittercism/android/bs;

    return-object v0
.end method

.method public final q()Lcrittercism/android/bs;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcrittercism/android/az;->i:Lcrittercism/android/bs;

    return-object v0
.end method

.method public final r()Lcrittercism/android/bs;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcrittercism/android/az;->j:Lcrittercism/android/bs;

    return-object v0
.end method

.method public final s()Lcrittercism/android/bs;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcrittercism/android/az;->k:Lcrittercism/android/bs;

    return-object v0
.end method

.method public final t()Lcrittercism/android/bs;
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcrittercism/android/az;->l:Lcrittercism/android/bs;

    return-object v0
.end method

.method public final u()Lcrittercism/android/bs;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcrittercism/android/az;->F:Lcrittercism/android/bs;

    return-object v0
.end method

.method public final v()Lcrittercism/android/bs;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcrittercism/android/az;->m:Lcrittercism/android/bs;

    return-object v0
.end method

.method public final w()Lcrittercism/android/bs;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcrittercism/android/az;->n:Lcrittercism/android/bs;

    return-object v0
.end method

.method public final x()Lcrittercism/android/bs;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcrittercism/android/az;->o:Lcrittercism/android/bs;

    return-object v0
.end method

.method public final y()Lcrittercism/android/dv;
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcrittercism/android/az;->x:Lcrittercism/android/dv;

    return-object v0
.end method

.method public final z()V
    .locals 3

    .prologue
    .line 831
    iget-boolean v0, p0, Lcrittercism/android/az;->t:Z

    if-eqz v0, :cond_1

    .line 832
    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->f:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcrittercism/android/bs;->a(Landroid/content/Context;)Lcrittercism/android/bs;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/az;->k:Lcrittercism/android/bs;

    .line 839
    :goto_0
    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->h:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    iput-object v0, p0, Lcrittercism/android/az;->F:Lcrittercism/android/bs;

    .line 840
    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->g:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    iput-object v0, p0, Lcrittercism/android/az;->l:Lcrittercism/android/bs;

    .line 841
    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->k:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    iput-object v0, p0, Lcrittercism/android/az;->m:Lcrittercism/android/bs;

    .line 843
    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->a:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    iput-object v0, p0, Lcrittercism/android/az;->g:Lcrittercism/android/bs;

    .line 844
    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->b:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    iput-object v0, p0, Lcrittercism/android/az;->h:Lcrittercism/android/bs;

    .line 845
    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->c:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    iput-object v0, p0, Lcrittercism/android/az;->E:Lcrittercism/android/bs;

    .line 846
    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->d:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    iput-object v0, p0, Lcrittercism/android/az;->i:Lcrittercism/android/bs;

    .line 847
    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->e:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    iput-object v0, p0, Lcrittercism/android/az;->j:Lcrittercism/android/bs;

    .line 848
    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->i:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    iput-object v0, p0, Lcrittercism/android/az;->n:Lcrittercism/android/bs;

    .line 849
    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->j:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    iput-object v0, p0, Lcrittercism/android/az;->o:Lcrittercism/android/bs;

    .line 850
    iget-boolean v0, p0, Lcrittercism/android/az;->t:Z

    if-nez v0, :cond_0

    .line 851
    new-instance v0, Lcrittercism/android/dv;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    iget-object v2, p0, Lcrittercism/android/az;->D:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/dv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcrittercism/android/az;->x:Lcrittercism/android/dv;

    .line 853
    :cond_0
    return-void

    .line 836
    :cond_1
    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->f:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    iput-object v0, p0, Lcrittercism/android/az;->k:Lcrittercism/android/bs;

    goto/16 :goto_0
.end method
