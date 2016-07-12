.class Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;
.super Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;
.source "ScrollerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplIcs"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrVelocity(Ljava/lang/Object;)F
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 241
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatIcs;->getCurrVelocity(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method
