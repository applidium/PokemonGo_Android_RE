.class public Landroid/support/v4/app/NavUtils;
.super Ljava/lang/Object;
.source "NavUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NavUtils$NavUtilsImplJB;,
        Landroid/support/v4/app/NavUtils$NavUtilsImplBase;,
        Landroid/support/v4/app/NavUtils$NavUtilsImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

.field public static final PARENT_ACTIVITY:Ljava/lang/String; = "android.support.PARENT_ACTIVITY"

.field private static final TAG:Ljava/lang/String; = "NavUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 137
    .local v0, "version":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 138
    new-instance v1, Landroid/support/v4/app/NavUtils$NavUtilsImplJB;

    invoke-direct {v1}, Landroid/support/v4/app/NavUtils$NavUtilsImplJB;-><init>()V

    sput-object v1, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v1, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;

    invoke-direct {v1}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    return-void
.end method

.method public static getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1
    .param p0, "sourceActivity"    # Landroid/app/Activity;

    .prologue
    .line 216
    sget-object v0, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/app/NavUtils$NavUtilsImpl;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "parentActivity":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 266
    :goto_0
    return-object v2

    .line 260
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .local v3, "target":Landroid/content/ComponentName;
    invoke-static {p0, v3}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "grandparent":Ljava/lang/String;
    if-nez v0, :cond_1

    invoke-static {v3}, Landroid/support/v4/content/IntentCompat;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 266
    .local v2, "parentIntent":Landroid/content/Intent;
    :goto_1
    goto :goto_0

    .line 263
    .end local v2    # "parentIntent":Landroid/content/Intent;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_1
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v4}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "parentActivity":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 241
    :goto_0
    return-object v2

    .line 236
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    .local v3, "target":Landroid/content/ComponentName;
    invoke-static {p0, v3}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "grandparent":Ljava/lang/String;
    if-nez v0, :cond_1

    invoke-static {v3}, Landroid/support/v4/content/IntentCompat;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 241
    .local v2, "parentIntent":Landroid/content/Intent;
    :goto_1
    goto :goto_0

    .line 238
    .end local v2    # "parentIntent":Landroid/content/Intent;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_1
.end method

.method public static getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .param p0, "sourceActivity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 281
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 282
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 301
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 302
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    sget-object v3, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    invoke-interface {v3, p0, v0}, Landroid/support/v4/app/NavUtils$NavUtilsImpl;->getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "parentActivity":Ljava/lang/String;
    return-object v1
.end method

.method public static navigateUpFromSameTask(Landroid/app/Activity;)V
    .locals 4
    .param p0, "sourceActivity"    # Landroid/app/Activity;

    .prologue
    .line 175
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 177
    .local v0, "upIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 178
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have a parent activity name specified."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " element in your manifest?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method public static navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "sourceActivity"    # Landroid/app/Activity;
    .param p1, "upIntent"    # Landroid/content/Intent;

    .prologue
    .line 202
    sget-object v0, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/app/NavUtils$NavUtilsImpl;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 203
    return-void
.end method

.method public static shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "sourceActivity"    # Landroid/app/Activity;
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 159
    sget-object v0, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/app/NavUtils$NavUtilsImpl;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
