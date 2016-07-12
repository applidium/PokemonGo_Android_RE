.class Lcom/nianticlabs/nia/useractivity/NianticActivityManager$2;
.super Ljava/lang/Object;
.source "NianticActivityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->receiveUpdateActivity(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

.field final synthetic val$result:Lcom/google/android/gms/location/ActivityRecognitionResult;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$2;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    iput-object p2, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$2;->val$result:Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 168
    iget-object v5, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$2;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    # getter for: Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->appState:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;
    invoke-static {v5}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$000(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;)Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    move-result-object v5

    sget-object v6, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;->RESUME:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    if-ne v5, v6, :cond_1

    .line 169
    iget-object v5, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$2;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    sget-object v6, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->RUNNING:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    # setter for: Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;
    invoke-static {v5, v6}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$302(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 173
    iget-object v5, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$2;->val$result:Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;->getProbableActivities()Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/DetectedActivity;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [J

    .line 176
    .local v4, "results":[J
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$2;->val$result:Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v6}, Lcom/google/android/gms/location/ActivityRecognitionResult;->getTime()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 178
    const/4 v2, 0x1

    .line 179
    .local v2, "i":I
    iget-object v5, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$2;->val$result:Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;->getProbableActivities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/DetectedActivity;

    .line 180
    .local v1, "activity":Lcom/google/android/gms/location/DetectedActivity;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v1}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v4, v2

    .line 181
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v1}, Lcom/google/android/gms/location/DetectedActivity;->getConfidence()I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v4, v3

    goto :goto_0

    .line 183
    .end local v1    # "activity":Lcom/google/android/gms/location/DetectedActivity;
    :cond_0
    iget-object v5, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$2;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    iget-object v6, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$2;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    # getter for: Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;
    invoke-static {v6}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$300(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;)Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->ordinal()I

    move-result v6

    # invokes: Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->safeUpdateActivity([JI)V
    invoke-static {v5, v4, v6}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$400(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;[JI)V

    .line 185
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/DetectedActivity;>;"
    .end local v2    # "i":I
    .end local v4    # "results":[J
    :cond_1
    return-void
.end method
