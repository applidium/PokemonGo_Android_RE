.class public Lcom/voxelbusters/nativeplugins/utilities/MiscUtilities;
.super Ljava/lang/Object;
.source "MiscUtilities.java"


# static fields
.field public static resolveInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/voxelbusters/nativeplugins/utilities/MiscUtilities$1;

    invoke-direct {v0}, Lcom/voxelbusters/nativeplugins/utilities/MiscUtilities$1;-><init>()V

    sput-object v0, Lcom/voxelbusters/nativeplugins/utilities/MiscUtilities;->resolveInfoComparator:Ljava/util/Comparator;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
