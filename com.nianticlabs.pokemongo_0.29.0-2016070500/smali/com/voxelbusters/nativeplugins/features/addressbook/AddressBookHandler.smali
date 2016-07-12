.class public Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;
.super Ljava/lang/Object;
.source "AddressBookHandler.java"


# static fields
.field static final CONTACT_CONTENT_URI:Landroid/net/Uri;

.field static final CONTACT_IN_VISIBLE_GROUP:Ljava/lang/String; = "in_visible_group"

.field static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/name"

.field static final DISPLAY_NAME:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field static final EMAIL_CONTACT_ID:Ljava/lang/String; = "contact_id"

.field static final EMAIL_CONTENT_URI:Landroid/net/Uri;

.field static final EMAIL_DATA:Ljava/lang/String; = "data1"

.field static final EMAIL_TYPE:Ljava/lang/String; = "data2"

.field static final FAMILY_NAME:Ljava/lang/String; = "data3"

.field static final GIVEN_NAME:Ljava/lang/String; = "data2"

.field static final HAS_PHONE_NUMBER:Ljava/lang/String; = "has_phone_number"

.field private static INSTANCE:Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler; = null

.field static final PHONE_CONTACT_ID:Ljava/lang/String; = "contact_id"

.field static final PHONE_CONTENT_URI:Landroid/net/Uri;

.field static final PHONE_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field static final PHONE_NUMBER:Ljava/lang/String; = "data1"

.field static final PHONE_TYPE:Ljava/lang/String; = "data2"

.field static final PHOTO_CONTENT_DIRECTORY:Ljava/lang/String; = "photo"

.field static final PHOTO_URI:Ljava/lang/String;

.field static final ROOT_CONTACT_ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 42
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->CONTACT_CONTENT_URI:Landroid/net/Uri;

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    const-string v0, "display_name"

    :goto_0
    sput-object v0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->DISPLAY_NAME:Ljava/lang/String;

    .line 58
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->PHONE_CONTENT_URI:Landroid/net/Uri;

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    const-string v0, "photo_uri"

    :goto_1
    sput-object v0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->PHOTO_URI:Ljava/lang/String;

    .line 69
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->EMAIL_CONTENT_URI:Landroid/net/Uri;

    .line 73
    return-void

    .line 50
    :cond_0
    const-string v0, "display_name"

    goto :goto_0

    .line 63
    :cond_1
    const-string v0, "photo_id"

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method static synthetic access$0(Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->readContactsInBackground()V

    return-void
.end method

.method static synthetic access$1(Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->addContactInternal(Lorg/json/JSONObject;)V

    return-void
.end method

.method private addContactInternal(Lorg/json/JSONObject;)V
    .locals 23
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 269
    const-string v20, "family-name"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 270
    .local v12, "familyName":Ljava/lang/String;
    const-string v20, "given-name"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 271
    .local v13, "givenName":Ljava/lang/String;
    const-string v20, "image-path"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 272
    .local v15, "imagePath":Ljava/lang/String;
    const/4 v14, 0x0

    .line 274
    .local v14, "imageByteStream":[B
    invoke-static {v15}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 276
    invoke-static {v15}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->getBitmapStream(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v19

    .line 277
    .local v19, "stream":Ljava/io/ByteArrayOutputStream;
    if-eqz v19, :cond_0

    .line 279
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 283
    .end local v19    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const-string v20, "email-list"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 284
    .local v11, "emailIdList":Lorg/json/JSONArray;
    const-string v20, "phone-number-list"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 287
    .local v17, "phoneNumberList":Lorg/json/JSONArray;
    invoke-static {}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->getCurrentContext()Landroid/content/Context;

    move-result-object v7

    .line 289
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 291
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v5, "contactOperation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 293
    .local v4, "contactIndex":I
    const-string v20, "Test"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "count : "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v20, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 296
    .local v3, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v20, "account_type"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 297
    const-string v20, "account_name"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 298
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 302
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 303
    const-string v20, "data3"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 304
    const-string v20, "data2"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 305
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 306
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    if-eqz v14, :cond_1

    .line 310
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 311
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 312
    const-string v20, "data15"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 313
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 314
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_1
    if-eqz v11, :cond_2

    .line 320
    const/16 v16, 0x0

    .local v16, "index":I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 347
    .end local v16    # "index":I
    :cond_2
    if-eqz v17, :cond_3

    .line 349
    const/16 v16, 0x0

    .restart local v16    # "index":I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 373
    .end local v16    # "index":I
    :cond_3
    const/16 v18, 0x0

    .line 376
    .local v18, "result":[Landroid/content/ContentProviderResult;
    :try_start_0
    const-string v20, "com.android.contacts"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v18

    .line 387
    :goto_2
    const-string v21, "ABAddNewContactFinished"

    if-nez v18, :cond_8

    const-string v20, "false"

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void

    .line 323
    .end local v18    # "result":[Landroid/content/ContentProviderResult;
    .restart local v16    # "index":I
    :cond_4
    const/4 v9, 0x0

    .line 326
    .local v9, "eachEmail":Ljava/lang/String;
    :try_start_1
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v9, v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 333
    :goto_4
    invoke-static {v9}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 335
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 336
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 337
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 338
    const-string v20, "data2"

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 339
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 340
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 328
    :catch_0
    move-exception v8

    .line 331
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 351
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v9    # "eachEmail":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    .line 354
    .local v10, "eachPhoneNumber":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v10, v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 361
    :goto_5
    invoke-static {v10}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 363
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 364
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 365
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 366
    const-string v20, "data2"

    const/16 v21, 0x7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 367
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 368
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 356
    :catch_1
    move-exception v8

    .line 359
    .restart local v8    # "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 378
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v10    # "eachPhoneNumber":Ljava/lang/String;
    .end local v16    # "index":I
    .restart local v18    # "result":[Landroid/content/ContentProviderResult;
    :catch_2
    move-exception v8

    .line 380
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 382
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v8

    .line 384
    .local v8, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_2

    .line 387
    .end local v8    # "e":Landroid/content/OperationApplicationException;
    :cond_8
    const-string v20, "true"

    goto/16 :goto_3
.end method

.method public static getInstance()Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->INSTANCE:Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;

    invoke-direct {v0}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;-><init>()V

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->INSTANCE:Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;

    .line 81
    :cond_0
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->INSTANCE:Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;

    return-object v0
.end method

.method private readContactsInBackground()V
    .locals 40

    .prologue
    .line 131
    const/16 v20, 0x0

    .line 133
    .local v20, "cursor":Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 138
    .local v22, "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :try_start_0
    invoke-static {}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->getCurrentContext()Landroid/content/Context;

    move-result-object v19

    .line 141
    .local v19, "context":Landroid/content/Context;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 144
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    sget-object v5, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->CONTACT_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "in_visible_group = \'1\'"

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->DISPLAY_NAME:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " ASC"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 146
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    .line 148
    .local v18, "contactsExist":Z
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    .end local v22    # "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .local v23, "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    if-eqz v18, :cond_5

    .line 155
    :cond_0
    :try_start_1
    new-instance v21, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;

    invoke-direct/range {v21 .. v21}, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;-><init>()V

    .line 156
    .local v21, "details":Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;
    const-string v5, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 158
    .local v17, "contactID":Ljava/lang/String;
    const-string v7, "mimetype = ? AND contact_id = ?"

    .line 159
    .local v7, "nameSelection":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "vnd.android.cursor.item/name"

    aput-object v6, v8, v5

    const/4 v5, 0x1

    aput-object v17, v8, v5

    .line 161
    .local v8, "nameSelectionParams":[Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v9, "data2"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 162
    .local v35, "nameCursor":Landroid/database/Cursor;
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    .line 164
    sget-object v5, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->DISPLAY_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v5}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 165
    .local v25, "displayName":Ljava/lang/String;
    const-string v5, "data3"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v5}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 166
    .local v32, "familyName":Ljava/lang/String;
    const-string v5, "data2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v5}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 169
    .local v33, "givenName":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->setNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 173
    const-string v5, "has_phone_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_8

    const/16 v34, 0x1

    .line 176
    .local v34, "hasPhoneNumber":Z
    :goto_0
    if-eqz v34, :cond_1

    .line 178
    sget-object v10, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->PHONE_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "contact_id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 180
    .local v38, "phonesCursor":Landroid/database/Cursor;
    :goto_1
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_9

    .line 190
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 194
    .end local v38    # "phonesCursor":Landroid/database/Cursor;
    :cond_1
    sget-object v5, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->PHOTO_URI:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 195
    .local v39, "pictureUriString":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 197
    invoke-static/range {v39 .. v39}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "contacts"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v5, v6, v1}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->getSavedLocalFileFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 199
    .local v15, "absolutePath":Ljava/lang/String;
    if-nez v15, :cond_2

    .line 201
    const-string v5, "NativePlugins.AddressBook"

    const-string v6, "Unable to load profile image for below details"

    invoke-static {v5, v6}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v5, "NativePlugins.AddressBook"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Name : "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v5, "NativePlugins.AddressBook"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "pictureUriString : "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_2
    if-eqz v15, :cond_3

    .line 208
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->setPicturePath(Ljava/lang/String;)V

    .line 213
    .end local v15    # "absolutePath":Ljava/lang/String;
    :cond_3
    sget-object v10, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->EMAIL_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const-string v12, "contact_id = ?"

    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v17, v13, v5

    const/4 v14, 0x0

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 214
    .local v29, "emailCursor":Landroid/database/Cursor;
    :cond_4
    :goto_2
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_a

    .line 225
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 228
    invoke-virtual/range {v21 .. v21}, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->getHash()Ljava/util/HashMap;

    move-result-object v24

    .line 231
    .local v24, "detailsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 238
    .end local v7    # "nameSelection":Ljava/lang/String;
    .end local v8    # "nameSelectionParams":[Ljava/lang/String;
    .end local v17    # "contactID":Ljava/lang/String;
    .end local v21    # "details":Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;
    .end local v24    # "detailsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v25    # "displayName":Ljava/lang/String;
    .end local v29    # "emailCursor":Landroid/database/Cursor;
    .end local v32    # "familyName":Ljava/lang/String;
    .end local v33    # "givenName":Ljava/lang/String;
    .end local v34    # "hasPhoneNumber":Z
    .end local v35    # "nameCursor":Landroid/database/Cursor;
    .end local v39    # "pictureUriString":Ljava/lang/String;
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 239
    const-string v16, "authorized"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    .local v16, "authStatus":Ljava/lang/String;
    if-eqz v20, :cond_6

    .line 254
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object/from16 v22, v23

    .line 258
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v18    # "contactsExist":Z
    .end local v19    # "context":Landroid/content/Context;
    .end local v23    # "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .restart local v22    # "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_7
    :goto_3
    new-instance v37, Ljava/util/HashMap;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v37, "packedData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "auth-status"

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v5, "contacts-list"

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v5, "ABReadContactsFinished"

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 265
    return-void

    .line 173
    .end local v16    # "authStatus":Ljava/lang/String;
    .end local v22    # "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .end local v37    # "packedData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v7    # "nameSelection":Ljava/lang/String;
    .restart local v8    # "nameSelectionParams":[Ljava/lang/String;
    .restart local v17    # "contactID":Ljava/lang/String;
    .restart local v18    # "contactsExist":Z
    .restart local v19    # "context":Landroid/content/Context;
    .restart local v21    # "details":Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;
    .restart local v23    # "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .restart local v25    # "displayName":Ljava/lang/String;
    .restart local v32    # "familyName":Ljava/lang/String;
    .restart local v33    # "givenName":Ljava/lang/String;
    .restart local v35    # "nameCursor":Landroid/database/Cursor;
    :cond_8
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 182
    .restart local v34    # "hasPhoneNumber":Z
    .restart local v38    # "phonesCursor":Landroid/database/Cursor;
    :cond_9
    :try_start_2
    const-string v5, "data1"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v5}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 183
    .local v27, "eachPhoneNumber":Ljava/lang/String;
    const-string v5, "data2"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v5}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v36

    .line 186
    .local v36, "numberType":I
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->addPhoneNumber(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 241
    .end local v7    # "nameSelection":Ljava/lang/String;
    .end local v8    # "nameSelectionParams":[Ljava/lang/String;
    .end local v17    # "contactID":Ljava/lang/String;
    .end local v21    # "details":Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;
    .end local v25    # "displayName":Ljava/lang/String;
    .end local v27    # "eachPhoneNumber":Ljava/lang/String;
    .end local v32    # "familyName":Ljava/lang/String;
    .end local v33    # "givenName":Ljava/lang/String;
    .end local v34    # "hasPhoneNumber":Z
    .end local v35    # "nameCursor":Landroid/database/Cursor;
    .end local v36    # "numberType":I
    .end local v38    # "phonesCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v26

    move-object/from16 v22, v23

    .line 243
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v18    # "contactsExist":Z
    .end local v19    # "context":Landroid/content/Context;
    .end local v23    # "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .restart local v22    # "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .local v26, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v31

    .line 245
    .local v31, "error":Ljava/lang/String;
    const-string v5, "NativePlugins.AddressBook"

    move-object/from16 v0, v31

    invoke-static {v5, v0}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v16, "restricted"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    .restart local v16    # "authStatus":Ljava/lang/String;
    const/16 v22, 0x0

    .line 251
    if-eqz v20, :cond_7

    .line 254
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 216
    .end local v16    # "authStatus":Ljava/lang/String;
    .end local v22    # "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .end local v26    # "e":Ljava/lang/Exception;
    .end local v31    # "error":Ljava/lang/String;
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v7    # "nameSelection":Ljava/lang/String;
    .restart local v8    # "nameSelectionParams":[Ljava/lang/String;
    .restart local v17    # "contactID":Ljava/lang/String;
    .restart local v18    # "contactsExist":Z
    .restart local v19    # "context":Landroid/content/Context;
    .restart local v21    # "details":Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;
    .restart local v23    # "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .restart local v25    # "displayName":Ljava/lang/String;
    .restart local v29    # "emailCursor":Landroid/database/Cursor;
    .restart local v32    # "familyName":Ljava/lang/String;
    .restart local v33    # "givenName":Ljava/lang/String;
    .restart local v34    # "hasPhoneNumber":Z
    .restart local v35    # "nameCursor":Landroid/database/Cursor;
    .restart local v39    # "pictureUriString":Ljava/lang/String;
    :cond_a
    :try_start_4
    const-string v5, "data1"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 217
    .local v28, "emailContact":Ljava/lang/String;
    if-eqz v28, :cond_4

    .line 219
    const-string v5, "data2"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v30

    .line 220
    .local v30, "emailType":I
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;->addEmail(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 250
    .end local v7    # "nameSelection":Ljava/lang/String;
    .end local v8    # "nameSelectionParams":[Ljava/lang/String;
    .end local v17    # "contactID":Ljava/lang/String;
    .end local v21    # "details":Lcom/voxelbusters/nativeplugins/features/addressbook/ContactDetails;
    .end local v25    # "displayName":Ljava/lang/String;
    .end local v28    # "emailContact":Ljava/lang/String;
    .end local v29    # "emailCursor":Landroid/database/Cursor;
    .end local v30    # "emailType":I
    .end local v32    # "familyName":Ljava/lang/String;
    .end local v33    # "givenName":Ljava/lang/String;
    .end local v34    # "hasPhoneNumber":Z
    .end local v35    # "nameCursor":Landroid/database/Cursor;
    .end local v39    # "pictureUriString":Ljava/lang/String;
    :catchall_0
    move-exception v5

    move-object/from16 v22, v23

    .line 251
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v18    # "contactsExist":Z
    .end local v19    # "context":Landroid/content/Context;
    .end local v23    # "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .restart local v22    # "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :goto_5
    if-eqz v20, :cond_b

    .line 254
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_b
    throw v5

    .line 250
    :catchall_1
    move-exception v5

    goto :goto_5

    .line 241
    :catch_1
    move-exception v26

    goto :goto_4
.end method


# virtual methods
.method public addContact(Ljava/lang/String;)V
    .locals 3
    .param p1, "contactDataJsonStr"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p1}, Lcom/voxelbusters/nativeplugins/utilities/JSONUtility;->getJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 114
    .local v0, "json":Lorg/json/JSONObject;
    new-instance v1, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler$2;-><init>(Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;Lorg/json/JSONObject;)V

    .line 125
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 126
    return-void
.end method

.method getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 394
    const/4 v2, 0x0

    .line 398
    .local v2, "string":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 399
    .local v0, "columnIndex":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 401
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 409
    .end local v0    # "columnIndex":I
    :cond_0
    :goto_0
    return-object v2

    .line 404
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isAuthorized()Z
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readContacts()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler$1;

    invoke-direct {v0, p0}, Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler$1;-><init>(Lcom/voxelbusters/nativeplugins/features/addressbook/AddressBookHandler;)V

    .line 107
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 108
    return-void
.end method
