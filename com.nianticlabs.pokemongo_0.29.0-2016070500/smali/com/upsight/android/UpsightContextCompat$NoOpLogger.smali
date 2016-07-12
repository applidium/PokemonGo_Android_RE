.class Lcom/upsight/android/UpsightContextCompat$NoOpLogger;
.super Ljava/lang/Object;
.source "UpsightContextCompat.java"

# interfaces
.implements Lcom/upsight/android/logger/UpsightLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/UpsightContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoOpLogger"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/UpsightContextCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/UpsightContextCompat$1;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/upsight/android/UpsightContextCompat$NoOpLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 165
    return-void
.end method

.method public varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 170
    return-void
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 195
    return-void
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 200
    return-void
.end method

.method public varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 175
    return-void
.end method

.method public varargs i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 180
    return-void
.end method

.method public setLogLevel(Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 0
    .param p1, "logTagRegularExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/upsight/android/logger/UpsightLogger$Level;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "levels":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/upsight/android/logger/UpsightLogger$Level;>;"
    return-void
.end method

.method public varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 155
    return-void
.end method

.method public varargs v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 160
    return-void
.end method

.method public varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 185
    return-void
.end method

.method public varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 190
    return-void
.end method
