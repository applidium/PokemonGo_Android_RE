.class public Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
.super Ljava/lang/Object;
.source "CreatorCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$Vanilla;
    }
.end annotation


# static fields
.field protected static final C_BOOLEAN:I = 0x5

.field protected static final C_DEFAULT:I = 0x0

.field protected static final C_DELEGATE:I = 0x6

.field protected static final C_DOUBLE:I = 0x4

.field protected static final C_INT:I = 0x2

.field protected static final C_LONG:I = 0x3

.field protected static final C_PROPS:I = 0x7

.field protected static final C_STRING:I = 0x1

.field protected static final TYPE_DESCS:[Ljava/lang/String;


# instance fields
.field protected final _beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

.field protected final _canFixAccess:Z

.field protected final _creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _delegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field protected _explicitCreators:I

.field protected _hasNonDefaultCreator:Z

.field protected _incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

.field protected _propertyBasedArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "String"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "int"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "long"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "double"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "delegate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "property-based"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->TYPE_DESCS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/BeanDescription;Z)V
    .locals 2
    .param p1, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p2, "canFixAccess"    # Z

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 59
    iput v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_explicitCreators:I

    .line 61
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_hasNonDefaultCreator:Z

    .line 78
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 79
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_canFixAccess:Z

    .line 80
    return-void
.end method

.method private _fixAccess(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;, "TT;"
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_canFixAccess:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 282
    :cond_0
    return-object p1
.end method


# virtual methods
.method public addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 232
    return-void
.end method

.method public addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .prologue
    .line 171
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 172
    return-void
.end method

.method public addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z
    .param p3, "injectables"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 177
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 178
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 179
    return-void
.end method

.method public addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "injectables"    # [Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 237
    return-void
.end method

.method public addDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 228
    return-void
.end method

.method public addDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .prologue
    .line 168
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 169
    return-void
.end method

.method public addIncompeteParameter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V
    .locals 1
    .param p1, "parameter"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    if-nez v0, :cond_0

    .line 207
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 209
    :cond_0
    return-void
.end method

.method public addIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 220
    return-void
.end method

.method public addIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .prologue
    .line 162
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 163
    return-void
.end method

.method public addLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 224
    return-void
.end method

.method public addLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .prologue
    .line 165
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 166
    return-void
.end method

.method public addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 8
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z
    .param p3, "properties"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 184
    const/4 v5, 0x7

    invoke-virtual {p0, p1, v5, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 186
    array-length v5, p3

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 187
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v3, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p3

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 189
    aget-object v5, p3, v0

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, p3, v0

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 197
    .local v4, "old":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 198
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate creator property \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "old":Ljava/lang/Integer;
    :cond_2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 203
    return-void
.end method

.method public addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "properties"    # [Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 242
    return-void
.end method

.method public addStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 216
    return-void
.end method

.method public addStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 160
    return-void
.end method

.method public constructValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 14
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .prologue
    .line 85
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_hasNonDefaultCreator:Z

    if-nez v1, :cond_2

    const/4 v11, 0x1

    .line 87
    .local v11, "maybeVanilla":Z
    :goto_0
    if-nez v11, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    if-nez v1, :cond_3

    .line 88
    :cond_0
    const/4 v3, 0x0

    .line 104
    .local v3, "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v13

    .line 108
    .local v13, "type":Lcom/fasterxml/jackson/databind/JavaType;
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_hasNonDefaultCreator:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_2
    and-int/2addr v11, v1

    .line 110
    if-eqz v11, :cond_a

    .line 114
    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v12

    .line 115
    .local v12, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Collection;

    if-eq v12, v1, :cond_1

    const-class v1, Ljava/util/List;

    if-eq v12, v1, :cond_1

    const-class v1, Ljava/util/ArrayList;

    if-ne v12, v1, :cond_7

    .line 116
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$Vanilla;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$Vanilla;-><init>(I)V

    .line 136
    .end local v12    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    return-object v0

    .line 85
    .end local v3    # "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v11    # "maybeVanilla":Z
    .end local v13    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 91
    .restart local v11    # "maybeVanilla":Z
    :cond_3
    const/4 v9, 0x0

    .line 92
    .local v9, "ix":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    if-eqz v1, :cond_4

    .line 93
    const/4 v8, 0x0

    .local v8, "i":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v10, v1

    .local v10, "len":I
    :goto_4
    if-ge v8, v10, :cond_4

    .line 94
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aget-object v1, v1, v8

    if-nez v1, :cond_5

    .line 95
    move v9, v8

    .line 100
    .end local v8    # "i":I
    .end local v10    # "len":I
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->bindingsForBeanType()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v7

    .line 101
    .local v7, "bindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getGenericParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .restart local v3    # "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_1

    .line 93
    .end local v3    # "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v7    # "bindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .restart local v8    # "i":I
    .restart local v10    # "len":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 108
    .end local v8    # "i":I
    .end local v9    # "ix":I
    .end local v10    # "len":I
    .restart local v3    # "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v13    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 118
    .restart local v12    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    const-class v1, Ljava/util/Map;

    if-eq v12, v1, :cond_8

    const-class v1, Ljava/util/LinkedHashMap;

    if-ne v12, v1, :cond_9

    .line 119
    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$Vanilla;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$Vanilla;-><init>(I)V

    goto :goto_3

    .line 121
    :cond_9
    const-class v1, Ljava/util/HashMap;

    if-ne v12, v1, :cond_a

    .line 122
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$Vanilla;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$Vanilla;-><init>(I)V

    goto :goto_3

    .line 126
    .end local v12    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;

    invoke-direct {v0, p1, v13}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 127
    .local v0, "inst":Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v4, 0x6

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromObjectSettings(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 130
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 131
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 132
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 133
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 134
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 135
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureIncompleteParameter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    goto/16 :goto_3
.end method

.method public hasDefaultCreator()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 254
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasDelegatingCreator()Z
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPropertyBasedCreator()Z
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 3
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .prologue
    .line 155
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_fixAccess(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aput-object v0, v1, v2

    .line 156
    return-void
.end method

.method protected verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V
    .locals 8
    .param p1, "newOne"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "typeIndex"    # I
    .param p3, "explicit"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 287
    shl-int v0, v4, p2

    .line 288
    .local v0, "mask":I
    iput-boolean v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_hasNonDefaultCreator:Z

    .line 289
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aget-object v2, v6, p2

    .line 291
    .local v2, "oldOne":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    if-eqz v2, :cond_5

    .line 294
    iget v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_explicitCreators:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_2

    .line 296
    if-nez p3, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const/4 v4, 0x1

    .line 307
    .local v4, "verify":Z
    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-ne v6, v7, :cond_5

    .line 309
    invoke-virtual {v2, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v3

    .line 310
    .local v3, "oldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v1

    .line 312
    .local v1, "newType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v3, v1, :cond_4

    .line 313
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conflicting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->TYPE_DESCS:[Ljava/lang/String;

    aget-object v7, v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " creators: already had explicitly marked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", encountered "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 303
    .end local v1    # "newType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "oldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "verify":Z
    :cond_2
    if-nez p3, :cond_3

    .restart local v4    # "verify":Z
    :goto_2
    goto :goto_1

    .end local v4    # "verify":Z
    :cond_3
    move v4, v5

    goto :goto_2

    .line 317
    .restart local v1    # "newType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "oldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "verify":Z
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 324
    .end local v1    # "newType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "oldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "verify":Z
    :cond_5
    if-eqz p3, :cond_6

    .line 325
    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_explicitCreators:I

    or-int/2addr v5, v0

    iput v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_explicitCreators:I

    .line 327
    :cond_6
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_fixAccess(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aput-object v5, v6, p2

    goto :goto_0
.end method
