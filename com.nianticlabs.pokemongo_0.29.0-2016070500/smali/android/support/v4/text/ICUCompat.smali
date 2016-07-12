.class public Landroid/support/v4/text/ICUCompat;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/ICUCompat$ICUCompatImplLollipop;,
        Landroid/support/v4/text/ICUCompat$ICUCompatImplIcs;,
        Landroid/support/v4/text/ICUCompat$ICUCompatImplBase;,
        Landroid/support/v4/text/ICUCompat$ICUCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .local v0, "version":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v1, Landroid/support/v4/text/ICUCompat$ICUCompatImplLollipop;

    invoke-direct {v1}, Landroid/support/v4/text/ICUCompat$ICUCompatImplLollipop;-><init>()V

    sput-object v1, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 57
    new-instance v1, Landroid/support/v4/text/ICUCompat$ICUCompatImplIcs;

    invoke-direct {v1}, Landroid/support/v4/text/ICUCompat$ICUCompatImplIcs;-><init>()V

    sput-object v1, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    goto :goto_0

    .line 59
    :cond_1
    new-instance v1, Landroid/support/v4/text/ICUCompat$ICUCompatImplBase;

    invoke-direct {v1}, Landroid/support/v4/text/ICUCompat$ICUCompatImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 87
    sget-object v0, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/text/ICUCompat$ICUCompatImpl;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
