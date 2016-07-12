.class final Lcrittercism/android/az$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/az;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/az;


# direct methods
.method constructor <init>(Lcrittercism/android/az;)V
    .locals 0

    .prologue
    .line 1292
    iput-object p1, p0, Lcrittercism/android/az$11;->a:Lcrittercism/android/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1295
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/az;->C()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    :goto_0
    return-void

    .line 1297
    :catch_0
    move-exception v0

    const-string v0, "NO button failed.  Email support@crittercism.com."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
