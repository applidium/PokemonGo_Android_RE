.class public Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Twitter;
.super Ljava/lang/Object;
.source "UnityDefines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/UnityDefines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Twitter"
.end annotation


# static fields
.field public static final COMPOSER_DISMISSED:Ljava/lang/String; = "TweetComposerDismissed"

.field public static final LOGIN_FAILED:Ljava/lang/String; = "TwitterLoginFailed"

.field public static final LOGIN_SUCCESS:Ljava/lang/String; = "TwitterLoginSuccess"

.field public static final REQUEST_ACCOUNT_DETAILS_FAILED:Ljava/lang/String; = "RequestAccountDetailsFailed"

.field public static final REQUEST_ACCOUNT_DETAILS_SUCCESS:Ljava/lang/String; = "RequestAccountDetailsSuccess"

.field public static final REQUEST_EMAIL_ACCESS_FAILED:Ljava/lang/String; = "RequestEmailAccessFailed"

.field public static final REQUEST_EMAIL_ACCESS_SUCCESS:Ljava/lang/String; = "RequestEmailAccessSuccess"

.field public static final URL_REQUEST_FAILED:Ljava/lang/String; = "TwitterURLRequestFailed"

.field public static final URL_REQUEST_SUCCESS:Ljava/lang/String; = "TwitterURLRequestSuccess"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/UnityDefines;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Twitter;->this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
