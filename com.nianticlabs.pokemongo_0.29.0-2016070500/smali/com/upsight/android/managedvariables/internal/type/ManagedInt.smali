.class Lcom/upsight/android/managedvariables/internal/type/ManagedInt;
.super Lcom/upsight/android/managedvariables/type/UpsightManagedInt;
.source "ManagedInt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/managedvariables/internal/type/ManagedInt$Model;
    }
.end annotation


# static fields
.field static final MODEL_TYPE:Ljava/lang/String; = "com.upsight.uxm.integer"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;
    .param p3, "value"    # Ljava/lang/Integer;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 29
    return-void
.end method
