.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsImplJB"
.end annotation


# instance fields
.field private final mImpl:Landroid/support/v4/app/ActivityOptionsCompatJB;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActivityOptionsCompatJB;)V
    .locals 0
    .param p1, "impl"    # Landroid/support/v4/app/ActivityOptionsCompatJB;

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 181
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;->mImpl:Landroid/support/v4/app/ActivityOptionsCompatJB;

    .line 182
    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;->mImpl:Landroid/support/v4/app/ActivityOptionsCompatJB;

    invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompatJB;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 3
    .param p1, "otherOptions"    # Landroid/support/v4/app/ActivityOptionsCompat;

    .prologue
    .line 191
    instance-of v1, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 192
    check-cast v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;

    .line 193
    .local v0, "otherImpl":Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;
    iget-object v1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;->mImpl:Landroid/support/v4/app/ActivityOptionsCompatJB;

    iget-object v2, v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;->mImpl:Landroid/support/v4/app/ActivityOptionsCompatJB;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompatJB;->update(Landroid/support/v4/app/ActivityOptionsCompatJB;)V

    .line 195
    .end local v0    # "otherImpl":Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;
    :cond_0
    return-void
.end method
