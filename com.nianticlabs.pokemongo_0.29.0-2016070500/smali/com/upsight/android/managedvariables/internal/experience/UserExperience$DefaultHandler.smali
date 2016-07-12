.class Lcom/upsight/android/managedvariables/internal/experience/UserExperience$DefaultHandler;
.super Ljava/lang/Object;
.source "UserExperience.java"

# interfaces
.implements Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/experience/UserExperience;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/managedvariables/internal/experience/UserExperience$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/managedvariables/internal/experience/UserExperience$1;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/upsight/android/managedvariables/internal/experience/UserExperience$DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public onSynchronize(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
