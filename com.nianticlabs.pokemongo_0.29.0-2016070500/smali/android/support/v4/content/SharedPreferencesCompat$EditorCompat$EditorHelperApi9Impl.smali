.class Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperApi9Impl;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"

# interfaces
.implements Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditorHelperApi9Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/SharedPreferencesCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/SharedPreferencesCompat$1;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperApi9Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-static {p1}, Landroid/support/v4/content/EditorCompatGingerbread;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 46
    return-void
.end method
