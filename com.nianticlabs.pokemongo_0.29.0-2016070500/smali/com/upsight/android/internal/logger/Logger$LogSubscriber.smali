.class public final Lcom/upsight/android/internal/logger/Logger$LogSubscriber;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/internal/logger/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogSubscriber"
.end annotation


# instance fields
.field private final mLevels:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/upsight/android/logger/UpsightLogger$Level;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/util/regex/Pattern;

.field private final mWriter:Lcom/upsight/android/internal/logger/LogWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/EnumSet;Lcom/upsight/android/internal/logger/LogWriter;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p3, "writer"    # Lcom/upsight/android/internal/logger/LogWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/upsight/android/logger/UpsightLogger$Level;",
            ">;",
            "Lcom/upsight/android/internal/logger/LogWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "levels":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/upsight/android/logger/UpsightLogger$Level;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/logger/Logger$LogSubscriber;->mTag:Ljava/util/regex/Pattern;

    .line 152
    iput-object p2, p0, Lcom/upsight/android/internal/logger/Logger$LogSubscriber;->mLevels:Ljava/util/EnumSet;

    .line 153
    iput-object p3, p0, Lcom/upsight/android/internal/logger/Logger$LogSubscriber;->mWriter:Lcom/upsight/android/internal/logger/LogWriter;

    .line 154
    return-void
.end method


# virtual methods
.method public onLogMessageCreated(Lcom/upsight/android/internal/logger/LogMessage;)V
    .locals 5
    .param p1, "message"    # Lcom/upsight/android/internal/logger/LogMessage;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 158
    iget-object v1, p0, Lcom/upsight/android/internal/logger/Logger$LogSubscriber;->mTag:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/upsight/android/internal/logger/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 159
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/upsight/android/internal/logger/Logger$LogSubscriber;->mLevels:Ljava/util/EnumSet;

    invoke-virtual {p1}, Lcom/upsight/android/internal/logger/LogMessage;->getLevel()Lcom/upsight/android/logger/UpsightLogger$Level;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/upsight/android/internal/logger/Logger$LogSubscriber;->mWriter:Lcom/upsight/android/internal/logger/LogWriter;

    invoke-virtual {p1}, Lcom/upsight/android/internal/logger/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/upsight/android/internal/logger/LogMessage;->getLevel()Lcom/upsight/android/logger/UpsightLogger$Level;

    move-result-object v3

    invoke-virtual {p1}, Lcom/upsight/android/internal/logger/LogMessage;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/internal/logger/LogWriter;->write(Ljava/lang/String;Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;)V

    goto :goto_0
.end method
