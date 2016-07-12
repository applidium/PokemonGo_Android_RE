.class Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompatJellyBeanMr2;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfoCompatJellyBeanMr2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 1
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    return v0
.end method
