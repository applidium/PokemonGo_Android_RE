.class public Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ScheduleSyncNotificationEvent;
.super Ljava/lang/Object;
.source "UxmContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScheduleSyncNotificationEvent"
.end annotation


# instance fields
.field public final mId:Ljava/lang/String;

.field public final mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ScheduleSyncNotificationEvent;->mId:Ljava/lang/String;

    .line 420
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ScheduleSyncNotificationEvent;->mTags:Ljava/util/List;

    .line 421
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;

    .prologue
    .line 412
    invoke-direct {p0, p1, p2}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ScheduleSyncNotificationEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
