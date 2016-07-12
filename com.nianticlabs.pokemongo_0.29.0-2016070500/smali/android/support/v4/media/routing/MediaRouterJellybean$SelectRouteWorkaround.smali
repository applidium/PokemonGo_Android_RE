.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectRouteWorkaround"
.end annotation


# instance fields
.field private mSelectRouteIntMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_1

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 287
    :cond_1
    :try_start_0
    const-class v0, Landroid/media/MediaRouter;

    const-string v1, "selectRouteInt"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/media/MediaRouter$RouteInfo;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 8
    .param p1, "routerObj"    # Ljava/lang/Object;
    .param p2, "types"    # I
    .param p3, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 294
    move-object v3, p1

    check-cast v3, Landroid/media/MediaRouter;

    .local v3, "router":Landroid/media/MediaRouter;
    move-object v1, p3

    .line 295
    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    .line 298
    .local v1, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v2

    .line 299
    .local v2, "routeTypes":I
    const/high16 v4, 0x800000

    and-int/2addr v4, v2

    if-nez v4, :cond_0

    .line 305
    iget-object v4, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    .line 307
    :try_start_0
    iget-object v4, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v4, "MediaRouterJellybean"

    const-string v5, "Cannot programmatically select non-user route.  Media routing may not work."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_1
    invoke-virtual {v3, p2, v1}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 312
    :catch_1
    move-exception v0

    .line 313
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "MediaRouterJellybean"

    const-string v5, "Cannot programmatically select non-user route.  Media routing may not work."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 317
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v4, "MediaRouterJellybean"

    const-string v5, "Cannot programmatically select non-user route because the platform is missing the selectRouteInt() method.  Media routing may not work."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
