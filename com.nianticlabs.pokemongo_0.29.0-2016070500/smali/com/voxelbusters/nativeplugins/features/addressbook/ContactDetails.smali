.class public Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;
.super Ljava/lang/Object;
.source "ContactDetails.java"


# instance fields
.field displayName:Ljava/lang/String;

.field emailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field familyName:Ljava/lang/String;

.field givenName:Ljava/lang/String;

.field phoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field profilePicturePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->displayName:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->familyName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->givenName:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->phoneList:Ljava/util/ArrayList;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->profilePicturePath:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->emailList:Ljava/util/ArrayList;

    .line 9
    return-void
.end method


# virtual methods
.method public addEmail(Ljava/lang/String;I)V
    .locals 1
    .param p1, "emailContact"    # Ljava/lang/String;
    .param p2, "emailType"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public addPhoneNumber(Ljava/lang/String;I)V
    .locals 1
    .param p1, "eachPhoneNumber"    # Ljava/lang/String;
    .param p2, "numberType"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method getHash()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "display-name"

    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "family-name"

    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "given-name"

    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->givenName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "image-path"

    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->profilePicturePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "phone-number-list"

    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "email-list"

    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method

.method public setNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "familyName"    # Ljava/lang/String;
    .param p3, "givenName"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->displayName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->familyName:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->givenName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setPicturePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->profilePicturePath:Ljava/lang/String;

    .line 39
    return-void
.end method
