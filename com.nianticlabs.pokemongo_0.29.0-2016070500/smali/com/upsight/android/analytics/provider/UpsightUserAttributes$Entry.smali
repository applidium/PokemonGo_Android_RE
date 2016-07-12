.class public Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
.super Ljava/lang/Object;
.source "UpsightUserAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/provider/UpsightUserAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private mDefaultValue:Ljava/lang/Object;

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->mKey:Ljava/lang/String;

    .line 252
    iput-object p2, p0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->mDefaultValue:Ljava/lang/Object;

    .line 253
    return-void
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->mDefaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
