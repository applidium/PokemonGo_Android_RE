.class Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler$1;
.super Ljava/lang/Object;
.source "AddressBookHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->readContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;


# direct methods
.method constructor <init>(Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler$1;->this$0:Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler$1;->this$0:Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;

    # invokes: Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->readContactsInBackground()V
    invoke-static {v0}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->access$0(Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;)V

    .line 103
    return-void
.end method
