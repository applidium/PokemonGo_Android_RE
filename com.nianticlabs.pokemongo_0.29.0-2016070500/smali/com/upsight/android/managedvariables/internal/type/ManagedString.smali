.class Lcom/upsight/android/managedvariables/internal/type/ManagedString;
.super Lcom/upsight/android/managedvariables/type/UpsightManagedString;
.source "ManagedString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/managedvariables/internal/type/ManagedString$Model;
    }
.end annotation


# static fields
.field static final MODEL_TYPE:Ljava/lang/String; = "com.upsight.uxm.string"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/type/UpsightManagedString;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method
