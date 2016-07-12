.class public abstract Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.super Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.source "MapperConfigBase.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CFG::",
        "Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;",
        "T:",
        "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase",
        "<TCFG;TT;>;>",
        "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAPPER_FEATURES:I


# instance fields
.field protected final _attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

.field protected final _mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

.field protected final _rootName:Lcom/fasterxml/jackson/databind/PropertyName;

.field protected final _rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

.field protected final _subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

.field protected final _view:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->DEFAULT_MAPPER_FEATURES:I

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;)V
    .locals 2
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .param p2, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .param p3, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    .param p4, "rootNames"    # Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    .prologue
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    const/4 v1, 0x0

    .line 95
    sget v0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->DEFAULT_MAPPER_FEATURES:I

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;I)V

    .line 96
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 97
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 98
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    .line 99
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 100
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 102
    invoke-static {}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;->getEmpty()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 103
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 112
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 113
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 114
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    .line 115
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 116
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 117
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 118
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;I)V
    .locals 1
    .param p2, "mapperFeatures"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;I)V

    .line 134
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 135
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 136
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    .line 137
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 138
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 139
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 140
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 1
    .param p2, "rootName"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 154
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 155
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 156
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    .line 157
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 158
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 159
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 160
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
    .locals 1
    .param p2, "base"    # Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;",
            "Lcom/fasterxml/jackson/databind/cfg/BaseSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    .line 123
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 124
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 125
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    .line 126
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 127
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 128
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 129
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V
    .locals 1
    .param p2, "attr"    # Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;",
            "Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 193
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 194
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 195
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    .line 196
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 197
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 198
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 199
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V
    .locals 1
    .param p2, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;",
            "Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 179
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 180
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 181
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    .line 182
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 183
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 184
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 185
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;)V
    .locals 1
    .param p2, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    .param p3, "rootNames"    # Lcom/fasterxml/jackson/databind/util/RootNameLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;",
            "Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;",
            "Lcom/fasterxml/jackson/databind/util/RootNameLookup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 208
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 209
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 210
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    .line 211
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 212
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 213
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 214
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V
    .locals 1
    .param p2, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;",
            "Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 144
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 145
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 146
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    .line 147
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 148
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 149
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 150
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    .local p2, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 165
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 166
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 167
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    .line 168
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 169
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 170
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 171
    return-void
.end method


# virtual methods
.method public copy()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    .locals 1

    .prologue
    .line 487
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public findRootName(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1
    .param p1, "rootType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 455
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 458
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    invoke-virtual {v0, p1, p0}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->findRootName(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    goto :goto_0
.end method

.method public findRootName(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/PropertyName;"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    .local p1, "rawRootType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 466
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    invoke-virtual {v0, p1, p0}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->findRootName(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    goto :goto_0
.end method

.method public final getActiveView()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    return-object v0
.end method

.method public final getAttributes()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
    .locals 1

    .prologue
    .line 444
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    return-object v0
.end method

.method public final getFullRootName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .prologue
    .line 434
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object v0
.end method

.method public final getRootName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 427
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .locals 1

    .prologue
    .line 419
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    return-object v0
.end method

.method public final mixInCount()I
    .locals 1

    .prologue
    .line 495
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->localSize()I

    move-result v0

    return v0
.end method

.method public abstract with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/Base64Variant;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;)TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;)TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DateFormat;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")TT;"
        }
    .end annotation
.end method

.method public withAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getAttributes()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;->withSharedAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    return-object v0
.end method

.method public withAttributes(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getAttributes()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;->withSharedAttributes(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ")TT;"
        }
    .end annotation
.end method

.method public withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "rootName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    if-nez p1, :cond_0

    .line 303
    const/4 v0, 0x0

    check-cast v0, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation
.end method

.method public abstract withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/PropertyAccessor;",
            "Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public withoutAttribute(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<TCFG;TT;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getAttributes()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;->withoutSharedAttribute(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    return-object v0
.end method
