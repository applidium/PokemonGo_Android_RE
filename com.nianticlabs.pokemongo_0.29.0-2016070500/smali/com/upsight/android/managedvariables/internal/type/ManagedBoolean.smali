.class Lcom/upsight/android/managedvariables/internal/type/ManagedBoolean;
.super Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
.source "ManagedBoolean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/managedvariables/internal/type/ManagedBoolean$Model;
    }
.end annotation


# static fields
.field static final MODEL_TYPE:Ljava/lang/String; = "com.upsight.uxm.boolean"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;
    .param p3, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 29
    return-void
.end method
