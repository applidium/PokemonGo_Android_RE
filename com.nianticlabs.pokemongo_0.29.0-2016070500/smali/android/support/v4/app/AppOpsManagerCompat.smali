.class public Landroid/support/v4/app/AppOpsManagerCompat;
.super Ljava/lang/Object;
.source "AppOpsManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/AppOpsManagerCompat$1;,
        Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManager23;,
        Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_IGNORED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 84
    new-instance v0, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManager23;

    invoke-direct {v0, v2}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManager23;-><init>(Landroid/support/v4/app/AppOpsManagerCompat$1;)V

    sput-object v0, Landroid/support/v4/app/AppOpsManagerCompat;->IMPL:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-direct {v0, v2}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;-><init>(Landroid/support/v4/app/AppOpsManagerCompat$1;)V

    sput-object v0, Landroid/support/v4/app/AppOpsManagerCompat;->IMPL:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "op"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    sget-object v0, Landroid/support/v4/app/AppOpsManagerCompat;->IMPL:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;->noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "op"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    sget-object v0, Landroid/support/v4/app/AppOpsManagerCompat;->IMPL:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    sget-object v0, Landroid/support/v4/app/AppOpsManagerCompat;->IMPL:Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
