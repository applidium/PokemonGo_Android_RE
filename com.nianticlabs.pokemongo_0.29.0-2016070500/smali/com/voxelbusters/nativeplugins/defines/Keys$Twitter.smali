.class public Lcom/voxelbusters/nativeplugins/defines/Keys$Twitter;
.super Ljava/lang/Object;
.source "Keys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Twitter"
.end annotation


# static fields
.field public static final AUTH_TOKEN:Ljava/lang/String; = "auth-token"

.field public static final AUTH_TOKEN_SECRET:Ljava/lang/String; = "auth-token-secret"

.field public static final COMPOSER_ACTION_CANCELLED:Ljava/lang/String; = "cancelled"

.field public static final COMPOSER_ACTION_DONE:Ljava/lang/String; = "done"

.field public static final IS_PROTECTED:Ljava/lang/String; = "is-protected"

.field public static final IS_VERIFIED:Ljava/lang/String; = "is-verified"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PROFILE_IMAGE_URL:Ljava/lang/String; = "profile-image-url"

.field public static final USER_ID:Ljava/lang/String; = "user-identifier"

.field public static final USER_NAME:Ljava/lang/String; = "user-name"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/Keys;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/Keys$Twitter;->this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
