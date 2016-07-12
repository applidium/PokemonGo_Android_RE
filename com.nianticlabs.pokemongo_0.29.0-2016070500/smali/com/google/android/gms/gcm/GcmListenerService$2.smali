.class Lcom/google/android/gms/gcm/GcmListenerService$2;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/gcm/GcmListenerService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic zzaCg:Lcom/google/android/gms/gcm/GcmListenerService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/GcmListenerService;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/gcm/GcmListenerService$2;->zzaCg:Lcom/google/android/gms/gcm/GcmListenerService;

    iput-object p2, p0, Lcom/google/android/gms/gcm/GcmListenerService$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/GcmListenerService$2;->zzb([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs zzb([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmListenerService$2;->zzaCg:Lcom/google/android/gms/gcm/GcmListenerService;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmListenerService$2;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/android/gms/gcm/GcmListenerService;->zza(Lcom/google/android/gms/gcm/GcmListenerService;Landroid/content/Intent;)V

    const/4 v0, 0x0

    return-object v0
.end method
