.class synthetic Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;
.super Ljava/lang/Object;
.source "GoogleApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/contextservice/GoogleApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$AppState:[I

.field static final synthetic $SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 249
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->values()[Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$AppState:[I

    :try_start_0
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$AppState:[I

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->STOP:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    .line 201
    :goto_0
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->values()[Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$State:[I

    :try_start_1
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$State:[I

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOPPED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$State:[I

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOP_FAILED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$State:[I

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->START_FAILED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$3;->$SwitchMap$com$nianticlabs$nia$contextservice$GoogleApiManager$State:[I

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STARTED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    .line 249
    :catch_4
    move-exception v0

    goto :goto_0
.end method
