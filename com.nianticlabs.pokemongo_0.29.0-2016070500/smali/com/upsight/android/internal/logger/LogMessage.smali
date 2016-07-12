.class public final Lcom/upsight/android/internal/logger/LogMessage;
.super Ljava/lang/Object;
.source "LogMessage.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "com.upsight.message.log"
.end annotation


# instance fields
.field public id:Ljava/lang/String;
    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field private level:Lcom/upsight/android/logger/UpsightLogger$Level;

.field private message:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private throwableString:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/upsight/android/internal/logger/LogMessage;)V
    .locals 4
    .param p1, "source"    # Lcom/upsight/android/internal/logger/LogMessage;

    .prologue
    .line 39
    iget-object v0, p1, Lcom/upsight/android/internal/logger/LogMessage;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/upsight/android/internal/logger/LogMessage;->level:Lcom/upsight/android/logger/UpsightLogger$Level;

    iget-object v2, p1, Lcom/upsight/android/internal/logger/LogMessage;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/upsight/android/internal/logger/LogMessage;->throwableString:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/upsight/android/internal/logger/LogMessage;-><init>(Ljava/lang/String;Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/upsight/android/logger/UpsightLogger$Level;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "throwableString"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->tag:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/upsight/android/internal/logger/LogMessage;->level:Lcom/upsight/android/logger/UpsightLogger$Level;

    .line 34
    iput-object p3, p0, Lcom/upsight/android/internal/logger/LogMessage;->message:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/upsight/android/internal/logger/LogMessage;->throwableString:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 82
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/upsight/android/internal/logger/LogMessage;

    .line 87
    .local v0, "that":Lcom/upsight/android/internal/logger/LogMessage;
    iget-object v3, p0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 88
    goto :goto_0

    .line 87
    :cond_4
    iget-object v3, v0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getLevel()Lcom/upsight/android/logger/UpsightLogger$Level;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->level:Lcom/upsight/android/logger/UpsightLogger$Level;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowableString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->throwableString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLevel(Lcom/upsight/android/logger/UpsightLogger$Level;)V
    .locals 0
    .param p1, "level"    # Lcom/upsight/android/logger/UpsightLogger$Level;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->level:Lcom/upsight/android/logger/UpsightLogger$Level;

    .line 74
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->message:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->tag:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setThrowableString(Ljava/lang/String;)V
    .locals 0
    .param p1, "throwableString"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->throwableString:Ljava/lang/String;

    .line 66
    return-void
.end method
