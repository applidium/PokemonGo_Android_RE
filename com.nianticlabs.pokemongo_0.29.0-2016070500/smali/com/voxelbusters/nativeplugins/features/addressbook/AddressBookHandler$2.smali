.class Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler$2;
.super Ljava/lang/Object;
.source "AddressBookHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->addContact(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;

.field private final synthetic val$json:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler$2;->this$0:Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;

    iput-object p2, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler$2;->val$json:Lorg/json/JSONObject;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler$2;->this$0:Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;

    iget-object v1, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler$2;->val$json:Lorg/json/JSONObject;

    # invokes: Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->addContactInternal(Lorg/json/JSONObject;)V
    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->access$1(Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;Lorg/json/JSONObject;)V

    .line 121
    return-void
.end method
