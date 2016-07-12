.class Lcom/upsight/android/managedvariables/internal/type/ManagedFloat;
.super Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;
.source "ManagedFloat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/managedvariables/internal/type/ManagedFloat$Model;
    }
.end annotation


# static fields
.field static final MODEL_TYPE:Ljava/lang/String; = "com.upsight.uxm.float"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Float;
    .param p3, "value"    # Ljava/lang/Float;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;-><init>(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 29
    return-void
.end method
