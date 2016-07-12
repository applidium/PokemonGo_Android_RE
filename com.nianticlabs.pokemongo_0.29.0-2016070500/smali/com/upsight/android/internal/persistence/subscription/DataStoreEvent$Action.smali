.class public final enum Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;
.super Ljava/lang/Enum;
.source "DataStoreEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

.field public static final enum Created:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

.field public static final enum Removed:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

.field public static final enum Updated:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    const-string v1, "Created"

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;->Created:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    .line 14
    new-instance v0, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    const-string v1, "Updated"

    invoke-direct {v0, v1, v3}, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;->Updated:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    .line 15
    new-instance v0, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    const-string v1, "Removed"

    invoke-direct {v0, v1, v4}, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;->Removed:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    sget-object v1, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;->Created:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;->Updated:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;->Removed:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;->$VALUES:[Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    return-object v0
.end method

.method public static values()[Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;->$VALUES:[Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    invoke-virtual {v0}, [Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    return-object v0
.end method
