.class public Lcom/google/android/gms/gcm/GcmPubSub;
.super Ljava/lang/Object;


# static fields
.field private static zzaCk:Lcom/google/android/gms/gcm/GcmPubSub;

.field private static final zzaCm:Ljava/util/regex/Pattern;


# instance fields
.field private zzaCl:Lcom/google/android/gms/iid/InstanceID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/topics/[a-zA-Z0-9-_.~%]{1,900}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/GcmPubSub;->zzaCm:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmPubSub;->zzaCl:Lcom/google/android/gms/iid/InstanceID;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmPubSub;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/google/android/gms/gcm/GcmPubSub;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/GcmPubSub;->zzaCk:Lcom/google/android/gms/gcm/GcmPubSub;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/gcm/GcmPubSub;

    invoke-direct {v0, p0}, Lcom/google/android/gms/gcm/GcmPubSub;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/gcm/GcmPubSub;->zzaCk:Lcom/google/android/gms/gcm/GcmPubSub;

    :cond_0
    sget-object v0, Lcom/google/android/gms/gcm/GcmPubSub;->zzaCk:Lcom/google/android/gms/gcm/GcmPubSub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public subscribe(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "registrationToken"    # Ljava/lang/String;
    .param p2, "topic"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid appInstanceToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Lcom/google/android/gms/gcm/GcmPubSub;->zzaCm:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid topic name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p3, :cond_4

    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "extras":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .restart local p3    # "extras":Landroid/os/Bundle;
    :cond_4
    const-string v0, "gcm.topic"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmPubSub;->zzaCl:Lcom/google/android/gms/iid/InstanceID;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "registrationToken"    # Ljava/lang/String;
    .param p2, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "gcm.topic"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmPubSub;->zzaCl:Lcom/google/android/gms/iid/InstanceID;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/iid/InstanceID;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
