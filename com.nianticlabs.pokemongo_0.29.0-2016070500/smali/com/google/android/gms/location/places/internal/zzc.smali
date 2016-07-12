.class public Lcom/google/android/gms/location/places/internal/zzc;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/lang/String;Ljava/util/List;Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;",
            ">;",
            "Landroid/text/style/CharacterStyle;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    if-nez p2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;

    invoke-static {p2}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;->getOffset()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;->getOffset()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;->getLength()I

    move-result v0

    add-int/2addr v0, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_1
    move-object p0, v1

    goto :goto_0
.end method
