.class Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;
.super Ljava/lang/Object;
.source "AppOpsManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/AppOpsManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppOpsManagerImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/AppOpsManagerCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/app/AppOpsManagerCompat$1;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method
