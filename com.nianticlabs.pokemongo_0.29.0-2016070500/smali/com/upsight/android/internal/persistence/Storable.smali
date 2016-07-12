.class public final Lcom/upsight/android/internal/persistence/Storable;
.super Ljava/lang/Object;
.source "Storable.java"


# instance fields
.field id:Ljava/lang/String;

.field type:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/Storable;->id:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/Storable;->type:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/upsight/android/internal/persistence/Storable;->value:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/internal/persistence/Storable;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 13
    new-instance v0, Lcom/upsight/android/internal/persistence/Storable;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/internal/persistence/Storable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/Storable;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/Storable;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/Storable;->value:Ljava/lang/String;

    return-object v0
.end method
