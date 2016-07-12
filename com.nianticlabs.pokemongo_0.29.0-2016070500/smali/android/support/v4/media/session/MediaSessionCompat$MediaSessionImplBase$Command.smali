.class final Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Command"
.end annotation


# instance fields
.field public final command:Ljava/lang/String;

.field public final extras:Landroid/os/Bundle;

.field public final stub:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "stub"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1728
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->command:Ljava/lang/String;

    .line 1729
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->extras:Landroid/os/Bundle;

    .line 1730
    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->stub:Landroid/os/ResultReceiver;

    .line 1731
    return-void
.end method
