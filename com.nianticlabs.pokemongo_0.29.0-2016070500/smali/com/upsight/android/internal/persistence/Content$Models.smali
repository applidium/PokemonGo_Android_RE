.class final Lcom/upsight/android/internal/persistence/Content$Models;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Lcom/upsight/android/internal/persistence/Content$ModelColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/internal/persistence/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Models"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "model"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.upsight.model"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.upsight.model"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
