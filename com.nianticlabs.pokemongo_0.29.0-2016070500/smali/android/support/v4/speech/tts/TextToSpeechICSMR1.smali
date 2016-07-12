.class Landroid/support/v4/speech/tts/TextToSpeechICSMR1;
.super Ljava/lang/Object;
.source "TextToSpeechICSMR1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;
    }
.end annotation


# static fields
.field public static final KEY_FEATURE_EMBEDDED_SYNTHESIS:Ljava/lang/String; = "embeddedTts"

.field public static final KEY_FEATURE_NETWORK_SYNTHESIS:Ljava/lang/String; = "networkTts"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static getFeatures(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)Ljava/util/Set;
    .locals 2
    .param p0, "tts"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/speech/tts/TextToSpeech;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;)V
    .locals 2
    .param p0, "tts"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "listener"    # Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 47
    new-instance v0, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$1;

    invoke-direct {v0, p1}, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$1;-><init>(Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;)V

    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$2;

    invoke-direct {v0, p1}, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$2;-><init>(Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;)V

    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto :goto_0
.end method
