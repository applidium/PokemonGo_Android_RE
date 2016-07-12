.class public Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;
.super Lcom/upsight/android/analytics/internal/dispatcher/schema/AbstractUxmBlockProvider;
.source "UxmBlockProvider.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final HASH_ALGORITHM:Ljava/lang/String; = "SHA-1"

.field private static final HEX_ARRAY:[C


# instance fields
.field private mBundleHashObserver:Ljava/util/Observer;

.field private mDigest:Ljava/security/MessageDigest;

.field private mUpsight:Lcom/upsight/android/UpsightContext;

.field private mUxmSchema:Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

.field private mUxmSchemaRawString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->HEX_ARRAY:[C

    return-void
.end method

.method constructor <init>(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Lcom/upsight/android/managedvariables/internal/type/UxmSchema;)V
    .locals 5
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "uxmSchemaRawString"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "stringRawUxmSchema"
        .end annotation
    .end param
    .param p3, "uxmSchema"    # Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/AbstractUxmBlockProvider;-><init>()V

    .line 47
    new-instance v1, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider$1;

    invoke-direct {v1, p0}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider$1;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;)V

    iput-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mBundleHashObserver:Ljava/util/Observer;

    .line 65
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 66
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUxmSchemaRawString:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUxmSchema:Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    .line 69
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    invoke-static {p1, p0}, Lcom/upsight/android/internal/util/PreferencesHelper;->registerListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 77
    invoke-direct {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->subscribeManagedVariables()V

    .line 80
    const-string v1, "bundle.schema_hash"

    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->getBundleSchemaHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    const-string v1, "bundle.id"

    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    const-string v1, "bundle.hash"

    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->getBundleHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "Failed to generate UXM hashes because SHA-1 is unavailable on this device"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "hexString":Ljava/lang/String;
    if-eqz p0, :cond_1

    array-length v4, p0

    if-lez v4, :cond_1

    .line 176
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [C

    .line 177
    .local v0, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 178
    aget-byte v4, p0, v2

    and-int/lit16 v3, v4, 0xff

    .line 179
    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    sget-object v5, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->HEX_ARRAY:[C

    ushr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 180
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->HEX_ARRAY:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v3    # "v":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    .end local v1    # "hexString":Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 184
    .end local v0    # "hexChars":[C
    .end local v2    # "i":I
    .restart local v1    # "hexString":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private declared-synchronized generateHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 153
    monitor-enter p0

    const/4 v0, 0x0

    .line 155
    .local v0, "hash":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mDigest:Ljava/security/MessageDigest;

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 159
    .local v1, "inBytes":[B
    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mDigest:Ljava/security/MessageDigest;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 162
    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->bytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 164
    .end local v1    # "inBytes":[B
    :cond_0
    monitor-exit p0

    return-object v0

    .line 153
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private subscribeManagedVariables()V
    .locals 5

    .prologue
    .line 132
    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUxmSchema:Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    invoke-virtual {v3}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->getAllOrdered()Ljava/util/List;

    move-result-object v2

    .line 133
    .local v2, "itemSchemaList":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;

    .line 134
    .local v1, "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    const-string v3, "com.upsight.uxm.string"

    iget-object v4, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget-object v4, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/upsight/android/managedvariables/type/UpsightManagedString;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedString;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mBundleHashObserver:Ljava/util/Observer;

    invoke-virtual {v3, v4}, Lcom/upsight/android/managedvariables/type/UpsightManagedString;->addObserver(Ljava/util/Observer;)V

    goto :goto_0

    .line 136
    :cond_1
    const-string v3, "com.upsight.uxm.boolean"

    iget-object v4, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget-object v4, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mBundleHashObserver:Ljava/util/Observer;

    invoke-virtual {v3, v4}, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;->addObserver(Ljava/util/Observer;)V

    goto :goto_0

    .line 138
    :cond_2
    const-string v3, "com.upsight.uxm.integer"

    iget-object v4, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget-object v4, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedInt;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mBundleHashObserver:Ljava/util/Observer;

    invoke-virtual {v3, v4}, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;->addObserver(Ljava/util/Observer;)V

    goto :goto_0

    .line 140
    :cond_3
    const-string v3, "com.upsight.uxm.float"

    iget-object v4, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget-object v4, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mBundleHashObserver:Ljava/util/Observer;

    invoke-virtual {v3, v4}, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;->addObserver(Ljava/util/Observer;)V

    goto :goto_0

    .line 144
    .end local v1    # "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    :cond_4
    return-void
.end method


# virtual methods
.method public getBundleHash()Ljava/lang/String;
    .locals 7

    .prologue
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUxmSchema:Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    invoke-virtual {v5}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->getAllOrdered()Ljava/util/List;

    move-result-object v2

    .line 101
    .local v2, "itemSchemaList":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;

    .line 102
    .local v1, "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    const/4 v4, 0x0

    .line 103
    .local v4, "value":Ljava/lang/Object;
    const-string v5, "com.upsight.uxm.string"

    iget-object v6, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    iget-object v5, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget-object v6, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->tag:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/upsight/android/managedvariables/type/UpsightManagedString;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/upsight/android/managedvariables/type/UpsightManagedString;->get()Ljava/lang/Object;

    move-result-object v4

    .line 113
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    iget-object v5, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->tag:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    const-string v5, "com.upsight.uxm.boolean"

    iget-object v6, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    iget-object v5, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget-object v6, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->tag:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;->get()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 107
    :cond_2
    const-string v5, "com.upsight.uxm.integer"

    iget-object v6, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 108
    iget-object v5, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget-object v6, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->tag:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedInt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;->get()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 109
    :cond_3
    const-string v5, "com.upsight.uxm.float"

    iget-object v6, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    iget-object v5, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget-object v6, v1, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->tag:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;->get()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 117
    .end local v1    # "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUpsight:Lcom/upsight/android/UpsightContext;

    const-string v1, "uxmBundleId"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/util/PreferencesHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBundleSchemaHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->mUxmSchemaRawString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v0, "uxmBundleId"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "bundle.id"

    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->getBundleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    :cond_0
    return-void
.end method
