.class public abstract Lcom/upsight/android/managedvariables/type/UpsightManagedVariable;
.super Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
.source "UpsightManagedVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$NoOpSubscription;,
        Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/upsight/android/managedvariables/type/UpsightManagedVariable;, "Lcom/upsight/android/managedvariables/type/UpsightManagedVariable<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    return-void
.end method
