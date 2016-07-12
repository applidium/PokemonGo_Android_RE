.class public interface abstract Lcom/upsight/android/logger/UpsightLogger;
.super Ljava/lang/Object;
.source "UpsightLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/logger/UpsightLogger$Level;
    }
.end annotation


# static fields
.field public static final MAX_LENGTH:I = 0xfa0


# virtual methods
.method public varargs abstract d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract setLogLevel(Ljava/lang/String;Ljava/util/EnumSet;)V
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
.end method

.method public varargs abstract v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method
