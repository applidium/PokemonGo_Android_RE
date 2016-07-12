.class public Lcom/google/android/gms/auth/UserRecoverableNotifiedException;
.super Lcom/google/android/gms/auth/GoogleAuthException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    return-void
.end method
