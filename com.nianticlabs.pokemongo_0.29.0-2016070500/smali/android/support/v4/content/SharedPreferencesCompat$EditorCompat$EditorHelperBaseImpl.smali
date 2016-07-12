.class Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperBaseImpl;
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
    name = "EditorHelperBaseImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/SharedPreferencesCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/SharedPreferencesCompat$1;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperBaseImpl;-><init>()V

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
    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method
