.class public Lcom/voxelbusters/nativeplugins/defines/UnityDefines$AddressBook;
.super Ljava/lang/Object;
.source "UnityDefines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/UnityDefines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddressBook"
.end annotation


# static fields
.field public static final ADD_CONTACTS_FINISHED:Ljava/lang/String; = "ABAddNewContactFinished"

.field public static final READ_CONTACTS_FAILED:Ljava/lang/String; = "ABReadContactsFailed"

.field public static final READ_CONTACTS_FINISED:Ljava/lang/String; = "ABReadContactsFinished"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/UnityDefines;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/UnityDefines$AddressBook;->this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
