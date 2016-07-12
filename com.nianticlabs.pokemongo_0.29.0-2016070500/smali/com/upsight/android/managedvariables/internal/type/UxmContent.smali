.class public Lcom/upsight/android/managedvariables/internal/type/UxmContent;
.super Lcom/upsight/android/analytics/internal/action/Actionable;
.source "UxmContent.java"


# static fields
.field public static final PREFERENCES_KEY_UXM_BUNDLE_ID:Ljava/lang/String; = "uxmBundleId"

.field public static final TRIGGER_CONTENT_RECEIVED:Ljava/lang/String; = "content_received"


# instance fields
.field private mShouldApplyBundle:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;Z)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p3, "shouldApplyBundle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/action/ActionMap",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContent;",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "actionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<Lcom/upsight/android/managedvariables/internal/type/UxmContent;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;>;"
    invoke-direct {p0, p1, p2}, Lcom/upsight/android/analytics/internal/action/Actionable;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;)V

    .line 58
    iput-boolean p3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->mShouldApplyBundle:Z

    .line 59
    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;Z)Lcom/upsight/android/managedvariables/internal/type/UxmContent;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p2, "shouldApplyBundle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/action/ActionMap",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContent;",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;",
            ">;Z)",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContent;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "actionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<Lcom/upsight/android/managedvariables/internal/type/UxmContent;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;>;"
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;Z)V

    return-object v0
.end method


# virtual methods
.method public shouldApplyBundle()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->mShouldApplyBundle:Z

    return v0
.end method
