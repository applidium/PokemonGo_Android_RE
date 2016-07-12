.class public Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;
.super Ljava/lang/Object;
.source "MinimalPrettyPrinter.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/PrettyPrinter;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_ROOT_VALUE_SEPARATOR:Ljava/lang/String; = " "

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _rootValueSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, " "

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "rootValueSeparator"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, " "

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public beforeArrayValues(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method

.method public beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 82
    return-void
.end method

.method public setRootValueSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public writeArrayValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 144
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    .line 145
    return-void
.end method

.method public writeEndArray(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
    .locals 1
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "nrOfValues"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 151
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    .line 152
    return-void
.end method

.method public writeEndObject(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
    .locals 1
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "nrOfEntries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 116
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    .line 117
    return-void
.end method

.method public writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 109
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    .line 110
    return-void
.end method

.method public writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 95
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    .line 96
    return-void
.end method

.method public writeRootValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public writeStartArray(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 123
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    .line 124
    return-void
.end method

.method public writeStartObject(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 74
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    .line 75
    return-void
.end method
