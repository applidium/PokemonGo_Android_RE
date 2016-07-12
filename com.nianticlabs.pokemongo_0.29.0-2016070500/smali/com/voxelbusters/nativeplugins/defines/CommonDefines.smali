.class public Lcom/voxelbusters/nativeplugins/defines/CommonDefines;
.super Ljava/lang/Object;
.source "CommonDefines.java"


# static fields
.field public static final ADDRESS_BOOK_TAG:Ljava/lang/String; = "NativePlugins.AddressBook"

.field public static final APPLICATION_UTILITY_TAG:Ljava/lang/String; = "NativePlugins.ApplicationUtility"

.field public static final BILLING_TAG:Ljava/lang/String; = "NativePlugins.Billing"

.field public static DEFAULT_STRING:Ljava/lang/String; = null

.field public static final FILE_UTILS_TAG:Ljava/lang/String; = "NativePlugins.FileUtils"

.field public static final GAME_SERVICES_TAG:Ljava/lang/String; = "NativePlugins.GameServices"

.field public static final JSON_UTILS_TAG:Ljava/lang/String; = "NativePlugins.JSONUtility"

.field public static final MEDIAL_LIBRARY_TAG:Ljava/lang/String; = "NativePlugins.MediaLibrary"

.field public static final NETWORK_CONNECTIVITY_TAG:Ljava/lang/String; = "NativePlugins.NetworkConnectivity"

.field public static final NOTIFICATION_TAG:Ljava/lang/String; = "NativePlugins.Notification"

.field public static PROJECT_ASSETS_EXPECTED_FOLDER:Ljava/lang/String; = null

.field public static PROJECT_ASSETS_FOLDER_OLD:Ljava/lang/String; = null

.field public static final PROJECT_TAG:Ljava/lang/String; = "NativePlugins"

.field public static SHARING_DIR:Ljava/lang/String; = null

.field public static final SHARING_TAG:Ljava/lang/String; = "NativePlugins.Sharing"

.field public static final STRING_UTILS_TAG:Ljava/lang/String; = "NativePlugins.StringUtility"

.field public static final TWITTER_TAG:Ljava/lang/String; = "NativePlugins.SocialNetworking.Twitter"

.field public static final UI_TAG:Ljava/lang/String; = "NativePlugins.Ui"

.field public static final WEB_VIEW_TAG:Ljava/lang/String; = "NativePlugins.WebView"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, ""

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/CommonDefines;->DEFAULT_STRING:Ljava/lang/String;

    .line 36
    const-string v0, "sharing"

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/CommonDefines;->SHARING_DIR:Ljava/lang/String;

    .line 38
    const-string v0, "VoxelBusters/NativePlugins/Android/"

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/CommonDefines;->PROJECT_ASSETS_FOLDER_OLD:Ljava/lang/String;

    .line 40
    const-string v0, "Assets/PluginResources/NativePlugins/Android or Assets/PluginResources/NativePlugins/Common"

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/CommonDefines;->PROJECT_ASSETS_EXPECTED_FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
