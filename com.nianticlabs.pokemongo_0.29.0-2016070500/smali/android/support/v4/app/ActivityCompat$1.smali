.class final Landroid/support/v4/app/ActivityCompat$1;
.super Ljava/lang/Object;
.source "ActivityCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Landroid/support/v4/app/ActivityCompat$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 322
    iget-object v5, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    array-length v5, v5

    new-array v0, v5, [I

    .line 324
    .local v0, "grantResults":[I
    iget-object v5, p0, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 325
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "packageName":Ljava/lang/String;
    iget-object v5, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    array-length v4, v5

    .line 328
    .local v4, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 329
    iget-object v5, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v1

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_0
    iget-object v5, p0, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    check-cast v5, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    iget v6, p0, Landroid/support/v4/app/ActivityCompat$1;->val$requestCode:I

    iget-object v7, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    invoke-interface {v5, v6, v7, v0}, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 335
    return-void
.end method
