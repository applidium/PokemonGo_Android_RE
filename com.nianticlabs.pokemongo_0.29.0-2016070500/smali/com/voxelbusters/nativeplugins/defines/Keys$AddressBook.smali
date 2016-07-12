.class public Lcom/voxelbusters/nativeplugins/defines/Keys$AddressBook;
.super Ljava/lang/Object;
.source "Keys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddressBook"
.end annotation


# static fields
.field public static final ACCESS_AUTHORIZED:Ljava/lang/String; = "authorized"

.field public static final ACCESS_DENIED:Ljava/lang/String; = "denied"

.field public static final ACCESS_RESTRICTED:Ljava/lang/String; = "restricted"

.field public static final AUTH_STATUS:Ljava/lang/String; = "auth-status"

.field public static final CONTACTS_LIST:Ljava/lang/String; = "contacts-list"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display-name"

.field public static final EMAIL_ID_LIST:Ljava/lang/String; = "email-list"

.field public static final FAMILY_NAME:Ljava/lang/String; = "family-name"

.field public static final GIVEN_NAME:Ljava/lang/String; = "given-name"

.field public static final IMAGE_PATH:Ljava/lang/String; = "image-path"

.field public static final PHONE_NUM_LIST:Ljava/lang/String; = "phone-number-list"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/Keys;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/Keys$AddressBook;->this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
