.class public final Lcom/fasterxml/jackson/databind/SerializationConfig;
.super Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.source "SerializationConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase",
        "<",
        "Lcom/fasterxml/jackson/databind/SerializationFeature;",
        "Lcom/fasterxml/jackson/databind/SerializationConfig;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

.field protected final _filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

.field protected final _generatorFeatures:I

.field protected final _generatorFeaturesToChange:I

.field protected final _serFeatures:I

.field protected _serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationConfig;->DEFAULT_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIII)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "mapperFeatures"    # I
    .param p3, "serFeatures"    # I
    .param p4, "generatorFeatures"    # I
    .param p5, "generatorFeatureMask"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;I)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 119
    iput p3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 120
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 121
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 122
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 123
    iput p4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 124
    iput p5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 125
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "incl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 163
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 164
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 165
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 166
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 167
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 168
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 169
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/core/PrettyPrinter;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "defaultPP"    # Lcom/fasterxml/jackson/core/PrettyPrinter;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 216
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 217
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 218
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 219
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 220
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 221
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 222
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "rootName"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 174
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 175
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 176
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 177
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 178
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 179
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 180
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "base"    # Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 130
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 131
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 132
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 133
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 134
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 135
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 136
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "attrs"    # Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 188
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 189
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 190
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 191
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 192
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 193
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 194
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 202
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 203
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 204
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 205
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 206
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 207
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 208
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    .param p3, "rootNames"    # Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    .prologue
    .line 233
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 234
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 235
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 236
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 237
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 238
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 239
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 240
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 106
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 107
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 108
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 109
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 110
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 111
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 112
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/FilterProvider;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "filters"    # Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 141
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 142
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 143
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 144
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 145
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 146
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 147
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/Class;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 152
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 153
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 154
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 155
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 156
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 157
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 158
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;)V
    .locals 3
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .param p2, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .param p3, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    .param p4, "rootNames"    # Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;)V

    .line 56
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 96
    const-class v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 97
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 98
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationConfig;->DEFAULT_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 99
    iput v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 100
    iput v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 101
    return-void
.end method

.method private final _withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "newBase"    # Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    if-ne v0, p1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public constructDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 601
    .local v0, "pp":Lcom/fasterxml/jackson/core/PrettyPrinter;
    instance-of v1, v0, Lcom/fasterxml/jackson/core/util/Instantiatable;

    if-eqz v1, :cond_0

    .line 602
    check-cast v0, Lcom/fasterxml/jackson/core/util/Instantiatable;

    .end local v0    # "pp":Lcom/fasterxml/jackson/core/PrettyPrinter;
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/Instantiatable;->createInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 604
    .restart local v0    # "pp":Lcom/fasterxml/jackson/core/PrettyPrinter;
    :cond_0
    return-object v0
.end method

.method public getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 664
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->nopInstance()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    return-object v0
.end method

.method public getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 692
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v0

    .line 693
    .local v0, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->withGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v0

    .line 697
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_IS_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 698
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->withIsGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v0

    .line 700
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 701
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->withFieldVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v0

    .line 703
    :cond_2
    return-object v0
.end method

.method public getFilterProvider()Lcom/fasterxml/jackson/databind/ser/FilterProvider;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    return-object v0
.end method

.method public final getSerializationFeatures()I
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    return v0
.end method

.method public getSerializationInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 750
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0
.end method

.method public final hasSerializationFeatures(I)Z
    .locals 1
    .param p1, "featureMask"    # I

    .prologue
    .line 738
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 6
    .param p1, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .prologue
    .line 622
    sget-object v4, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/SerializationFeature;->enabledIn(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 624
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->getPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;

    move-result-object v4

    if-nez v4, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->constructDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;

    move-result-object v2

    .line 626
    .local v2, "pp":Lcom/fasterxml/jackson/core/PrettyPrinter;
    if-eqz v2, :cond_0

    .line 627
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 632
    .end local v2    # "pp":Lcom/fasterxml/jackson/core/PrettyPrinter;
    :cond_0
    sget-object v4, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/SerializationFeature;->enabledIn(I)Z

    move-result v3

    .line 633
    .local v3, "useBigDec":Z
    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    if-nez v4, :cond_1

    if-eqz v3, :cond_3

    .line 634
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->getFeatureMask()I

    move-result v1

    .line 635
    .local v1, "orig":I
    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v1

    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    or-int v0, v4, v5

    .line 637
    .local v0, "newFlags":I
    if-eqz v3, :cond_2

    .line 638
    sget-object v4, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v4

    or-int/2addr v0, v4

    .line 640
    :cond_2
    if-eq v1, v0, :cond_3

    .line 641
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setFeatureMask(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 644
    .end local v0    # "newFlags":I
    .end local v1    # "orig":I
    :cond_3
    return-void
.end method

.method public introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectDirectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forDirectClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Lcom/fasterxml/jackson/core/JsonFactory;)Z
    .locals 3
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .param p2, "factory"    # Lcom/fasterxml/jackson/core/JsonFactory;

    .prologue
    .line 724
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v0

    .line 725
    .local v0, "mask":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 726
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 728
    :goto_0
    return v1

    .line 726
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 728
    :cond_1
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    goto :goto_0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 713
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SerializationConfig: flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useRootWrapping()Z
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 658
    :goto_0
    return v0

    .line 656
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 658
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "base64"    # Lcom/fasterxml/jackson/core/Base64Variant;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 6
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    .line 510
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int v4, v0, v1

    .line 511
    .local v4, "newSet":I
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int v5, v0, v1

    .line 512
    .local v5, "newMask":I
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    if-ne v0, v5, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 6
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/MapperFeature;
    .param p2, "state"    # Z

    .prologue
    .line 284
    if-eqz p2, :cond_0

    .line 285
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result v1

    or-int v2, v0, v1

    .line 289
    .local v2, "newMapperFlags":I
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    if-ne v2, v0, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_1
    return-object p0

    .line 287
    .end local v2    # "newMapperFlags":I
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int v2, v0, v1

    .restart local v2    # "newMapperFlags":I
    goto :goto_0

    .line 289
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "pns"    # Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 6
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 419
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v1

    or-int v3, v0, v1

    .line 420
    .local v3, "newSerFeatures":I
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne v3, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public varargs with(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 10
    .param p1, "first"    # Lcom/fasterxml/jackson/databind/SerializationFeature;
    .param p2, "features"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 431
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v1

    or-int v3, v0, v1

    .line 432
    .local v3, "newSerFeatures":I
    move-object v6, p2

    .local v6, "arr$":[Lcom/fasterxml/jackson/databind/SerializationFeature;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v7, v6, v8

    .line 433
    .local v7, "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v0

    or-int/2addr v3, v0

    .line 432
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 435
    .end local v7    # "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne v3, v0, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "attrs"    # Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "hi"    # Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withHandlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "ci"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withClassIntrospector(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "vc":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withVisibilityChecker(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "trb":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withTypeResolverBuilder(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "tf"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 2
    .param p1, "df"    # Ljava/text/DateFormat;

    .prologue
    .line 321
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    .line 323
    .local v0, "cfg":Lcom/fasterxml/jackson/databind/SerializationConfig;
    if-nez p1, :cond_0

    .line 324
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 326
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public varargs with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 10
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/MapperFeature;

    .prologue
    .line 255
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    .line 256
    .local v2, "newMapperFlags":I
    move-object v6, p1

    .local v6, "arr$":[Lcom/fasterxml/jackson/databind/MapperFeature;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v7, v6, v8

    .line 257
    .local v7, "f":Lcom/fasterxml/jackson/databind/MapperFeature;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result v0

    or-int/2addr v2, v0

    .line 256
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 259
    .end local v7    # "f":Lcom/fasterxml/jackson/databind/MapperFeature;
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    if-ne v2, v0, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/MapperFeature;
    .param p2, "x1"    # Z

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .locals 1
    .param p1, "x0"    # [Lcom/fasterxml/jackson/databind/MapperFeature;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/Base64Variant;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Ljava/text/DateFormat;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Ljava/util/Locale;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Ljava/util/TimeZone;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withDefaultPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "pp"    # Lcom/fasterxml/jackson/core/PrettyPrinter;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-ne v0, p1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/core/PrettyPrinter;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 11
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    .line 525
    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 526
    .local v4, "newSet":I
    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 527
    .local v5, "newMask":I
    move-object v6, p1

    .local v6, "arr$":[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v7, v6, v8

    .line 528
    .local v7, "f":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v10

    .line 529
    .local v10, "mask":I
    or-int/2addr v4, v10

    .line 530
    or-int/2addr v5, v10

    .line 527
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 532
    .end local v7    # "f":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .end local v10    # "mask":I
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    if-ne v0, v5, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 10
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 446
    iget v3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 447
    .local v3, "newSerFeatures":I
    move-object v6, p1

    .local v6, "arr$":[Lcom/fasterxml/jackson/databind/SerializationFeature;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v7, v6, v8

    .line 448
    .local v7, "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v0

    or-int/2addr v3, v0

    .line 447
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 450
    .end local v7    # "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne v3, v0, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public withFilters(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "filterProvider"    # Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/FilterProvider;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "rootName"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .prologue
    .line 343
    if-nez p1, :cond_1

    .line 344
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v0, :cond_2

    .line 350
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_0
    :goto_0
    return-object p0

    .line 347
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/PropertyName;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "incl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v0, p1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_view:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "forMethod"    # Lcom/fasterxml/jackson/annotation/PropertyAccessor;
    .param p2, "visibility"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/annotation/PropertyAccessor;
    .param p2, "x1"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public without(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 6
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    .line 545
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int v4, v0, v1

    .line 546
    .local v4, "newSet":I
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int v5, v0, v1

    .line 547
    .local v5, "newMask":I
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    if-ne v0, v5, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 6
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 461
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int v3, v0, v1

    .line 462
    .local v3, "newSerFeatures":I
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne v3, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public varargs without(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 10
    .param p1, "first"    # Lcom/fasterxml/jackson/databind/SerializationFeature;
    .param p2, "features"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 473
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int v3, v0, v1

    .line 474
    .local v3, "newSerFeatures":I
    move-object v6, p2

    .local v6, "arr$":[Lcom/fasterxml/jackson/databind/SerializationFeature;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v7, v6, v8

    .line 475
    .local v7, "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v3, v0

    .line 474
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 477
    .end local v7    # "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne v3, v0, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public varargs without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 10
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/MapperFeature;

    .prologue
    .line 271
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    .line 272
    .local v2, "newMapperFlags":I
    move-object v6, p1

    .local v6, "arr$":[Lcom/fasterxml/jackson/databind/MapperFeature;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v7, v6, v8

    .line 273
    .local v7, "f":Lcom/fasterxml/jackson/databind/MapperFeature;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v2, v0

    .line 272
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 275
    .end local v7    # "f":Lcom/fasterxml/jackson/databind/MapperFeature;
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    if-ne v2, v0, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public bridge synthetic without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .locals 1
    .param p1, "x0"    # [Lcom/fasterxml/jackson/databind/MapperFeature;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 11
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    .line 560
    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 561
    .local v4, "newSet":I
    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 562
    .local v5, "newMask":I
    move-object v6, p1

    .local v6, "arr$":[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v7, v6, v8

    .line 563
    .local v7, "f":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v10

    .line 564
    .local v10, "mask":I
    xor-int/lit8 v0, v10, -0x1

    and-int/2addr v4, v0

    .line 565
    or-int/2addr v5, v10

    .line 562
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 567
    .end local v7    # "f":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .end local v10    # "mask":I
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    if-ne v0, v5, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIII)V

    move-object p0, v0

    goto :goto_1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 10
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 488
    iget v3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 489
    .local v3, "newSerFeatures":I
    move-object v6, p1

    .local v6, "arr$":[Lcom/fasterxml/jackson/databind/SerializationFeature;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v7, v6, v8

    .line 490
    .local v7, "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v3, v0

    .line 489
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 492
    .end local v7    # "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne v3, v0, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;IIII)V

    move-object p0, v0

    goto :goto_1
.end method
