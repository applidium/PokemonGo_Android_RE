.class public Lcom/nianticproject/holoholo/sfida/unity/EncounterPokemonClickCallback;
.super Ljava/lang/Object;
.source "EncounterPokemonClickCallback.java"

# interfaces
.implements Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;


# instance fields
.field private pokemonId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pokemonId"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/unity/EncounterPokemonClickCallback;->pokemonId:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/EncounterPokemonClickCallback;->pokemonId:Ljava/lang/String;

    return-object v0
.end method

.method public onClick()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
