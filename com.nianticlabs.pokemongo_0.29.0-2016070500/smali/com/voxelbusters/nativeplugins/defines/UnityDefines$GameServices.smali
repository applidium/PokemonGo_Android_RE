.class public Lcom/voxelbusters/nativeplugins/defines/UnityDefines$GameServices;
.super Ljava/lang/Object;
.source "UnityDefines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/UnityDefines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameServices"
.end annotation


# static fields
.field public static final AUTHENTICATION_FINISHED:Ljava/lang/String; = "AuthenticationFinished"

.field public static final RECEIVED_ACHIEVEMENTS:Ljava/lang/String; = "LoadAchievementsFinished"

.field public static final RECEIVED_ACHIEVEMENTS_UI_CLOSED:Ljava/lang/String; = "ShowAchievementViewFinished"

.field public static final RECEIVED_ACHIEVEMENT_DESCRIPTIONS:Ljava/lang/String; = "LoadAchievementDescriptionsFinished"

.field public static final RECEIVED_LEADERBOARDS_UI_CLOSED:Ljava/lang/String; = "ShowLeaderboardViewFinished"

.field public static final RECEIVED_LOCAL_USER_FRIENDS_REQUEST:Ljava/lang/String; = "LoadFriendsFinished"

.field public static final RECEIVED_PICTURE_LOAD_REQUEST:Ljava/lang/String; = "RequestForUserImageFinished"

.field public static final RECEIVED_REPORT_PROGRESS:Ljava/lang/String; = "ReportProgressFinished"

.field public static final RECEIVED_REPORT_SCORE:Ljava/lang/String; = "ReportScoreFinished"

.field public static final RECEIVED_SCORES:Ljava/lang/String; = "LoadScoresFinished"

.field public static final RECEIVED_SIGN_OUT_STATUS:Ljava/lang/String; = "SignOutFinished"

.field public static final RECEIVED_USER_PROFILES_LIST:Ljava/lang/String; = "LoadUsersFinished"

.field public static final USER_DISCONNECTED:Ljava/lang/String; = "UserDisconnected"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/UnityDefines;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/UnityDefines$GameServices;->this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
