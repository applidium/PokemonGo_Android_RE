.class public interface abstract Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServerAuthCodeCallbacks"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;
    }
.end annotation


# virtual methods
.method public abstract onCheckServerAuthorization(Ljava/lang/String;Ljava/util/Set;)Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;"
        }
    .end annotation
.end method

.method public abstract onUploadServerAuthCode(Ljava/lang/String;Ljava/lang/String;)Z
.end method
