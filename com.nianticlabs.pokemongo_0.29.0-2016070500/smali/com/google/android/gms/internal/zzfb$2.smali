.class Lcom/google/android/gms/internal/zzfb$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfb;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzAa:Lcom/google/android/gms/internal/zzfb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfb$2;->zzAa:Lcom/google/android/gms/internal/zzfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfb$2;->zzAa:Lcom/google/android/gms/internal/zzfb;

    const-string v1, "Operation denied by user."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfb;->zzak(Ljava/lang/String;)V

    return-void
.end method
