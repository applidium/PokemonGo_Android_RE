.class public Lcom/voxelbusters/nativeplugins/defines/Keys$Permission;
.super Ljava/lang/Object;
.source "Keys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Permission"
.end annotation


# static fields
.field public static final READ_CONTACTS:Ljava/lang/String; = "android.permission.READ_CONTACTS"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/Keys;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/Keys$Permission;->this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
