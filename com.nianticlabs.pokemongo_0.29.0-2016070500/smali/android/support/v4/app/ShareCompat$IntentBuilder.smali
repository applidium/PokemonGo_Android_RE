.class public Landroid/support/v4/app/ShareCompat$IntentBuilder;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBccAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCcAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChooserTitle:Ljava/lang/CharSequence;

.field private mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mToAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "launchingActivity"    # Landroid/app/Activity;

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    .line 282
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.support.v4.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.support.v4.app.EXTRA_CALLING_ACTIVITY"

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 284
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    return-void
.end method

.method private combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 345
    iget-object v4, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "currentAddresses":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v1, v0

    .line 347
    .local v1, "currentLength":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v1

    new-array v2, v4, [Ljava/lang/String;

    .line 348
    .local v2, "finalAddresses":[Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 349
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    return-void

    .end local v1    # "currentLength":I
    .end local v2    # "finalAddresses":[Ljava/lang/String;
    :cond_1
    move v1, v3

    .line 346
    goto :goto_0
.end method

.method private combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "add"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 357
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "old":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    .line 360
    .local v2, "oldLength":I
    :goto_0
    array-length v5, p2

    add-int/2addr v5, v2

    new-array v3, v5, [Ljava/lang/String;

    .line 361
    .local v3, "result":[Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    :cond_0
    array-length v5, p2

    invoke-static {p2, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    return-void

    .end local v2    # "oldLength":I
    .end local v3    # "result":[Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 359
    goto :goto_0
.end method

.method public static from(Landroid/app/Activity;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p0, "launchingActivity"    # Landroid/app/Activity;

    .prologue
    .line 276
    new-instance v0, Landroid/support/v4/app/ShareCompat$IntentBuilder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public addEmailBcc(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 606
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    .line 609
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    return-object p0
.end method

.method public addEmailBcc([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 621
    const-string v0, "android.intent.extra.BCC"

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 622
    return-object p0
.end method

.method public addEmailCc(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 566
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    .line 569
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    return-object p0
.end method

.method public addEmailCc([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 581
    const-string v0, "android.intent.extra.CC"

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 582
    return-object p0
.end method

.method public addEmailTo(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 529
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    return-object p0
.end method

.method public addEmailTo([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 541
    const-string v0, "android.intent.extra.EMAIL"

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 542
    return-object p0
.end method

.method public addStream(Landroid/net/Uri;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 3
    .param p1, "streamUri"    # Landroid/net/Uri;

    .prologue
    .line 487
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 488
    .local v0, "currentStream":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setStream(Landroid/net/Uri;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object p0

    .line 499
    .end local p0    # "this":Landroid/support/v4/app/ShareCompat$IntentBuilder;
    :goto_0
    return-object p0

    .line 491
    .restart local p0    # "this":Landroid/support/v4/app/ShareCompat$IntentBuilder;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 492
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    .line 494
    :cond_1
    if-eqz v0, :cond_2

    .line 495
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createChooserIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mChooserTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 297
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 298
    const-string v3, "android.intent.extra.EMAIL"

    iget-object v4, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 299
    iput-object v6, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 301
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 302
    const-string v3, "android.intent.extra.CC"

    iget-object v4, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 303
    iput-object v6, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    .line 305
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 306
    const-string v3, "android.intent.extra.BCC"

    iget-object v4, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 307
    iput-object v6, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    .line 311
    :cond_2
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_5

    .line 312
    .local v1, "needsSendMultiple":Z
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    .local v0, "isSendMultiple":Z
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 317
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 319
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    iget-object v5, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 323
    :goto_1
    iput-object v6, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    .line 326
    :cond_3
    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 329
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 331
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 337
    :cond_4
    :goto_2
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v2

    .end local v0    # "isSendMultiple":Z
    .end local v1    # "needsSendMultiple":Z
    :cond_5
    move v1, v2

    .line 311
    goto :goto_0

    .line 321
    .restart local v0    # "isSendMultiple":Z
    .restart local v1    # "needsSendMultiple":Z
    :cond_6
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_1

    .line 333
    :cond_7
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setChooserTitle(I)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setChooserTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setChooserTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 397
    iput-object p1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mChooserTitle:Ljava/lang/CharSequence;

    .line 398
    return-object p0
.end method

.method public setEmailBcc([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 2
    .param p1, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.BCC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    return-object p0
.end method

.method public setEmailCc([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 2
    .param p1, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 554
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    return-object p0
.end method

.method public setEmailTo([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 2
    .param p1, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 511
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 514
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    return-object p0
.end method

.method public setHtmlText(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 2
    .param p1, "htmlText"    # Ljava/lang/String;

    .prologue
    .line 448
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    .line 453
    :cond_0
    return-object p0
.end method

.method public setStream(Landroid/net/Uri;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 2
    .param p1, "streamUri"    # Landroid/net/Uri;

    .prologue
    .line 467
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    .line 471
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 472
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 633
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 432
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 433
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    return-object p0
.end method

.method public startChooser()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 388
    return-void
.end method
