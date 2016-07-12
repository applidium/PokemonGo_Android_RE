.class public Landroid/support/v4/text/TextUtilsCompat;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/TextUtilsCompat$1;,
        Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;,
        Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
    }
.end annotation


# static fields
.field private static ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

.field private static HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

.field private static final IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

.field public static final ROOT:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    .local v0, "version":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 116
    new-instance v1, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;

    invoke-direct {v1, v2}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;-><init>(Landroid/support/v4/text/TextUtilsCompat$1;)V

    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    .line 146
    :goto_0
    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    .line 148
    const-string v1, "Arab"

    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    .line 149
    const-string v1, "Hebr"

    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    return-void

    .line 118
    :cond_0
    new-instance v1, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    invoke-direct {v1, v2}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>(Landroid/support/v4/text/TextUtilsCompat$1;)V

    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 143
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 129
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
