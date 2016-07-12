.class public Lcom/fasterxml/jackson/databind/type/TypeBindings;
.super Ljava/lang/Object;
.source "TypeBindings.java"


# static fields
.field private static final NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

.field public static final UNBOUND:Lcom/fasterxml/jackson/databind/JavaType;


# instance fields
.field protected _bindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;"
        }
    .end annotation
.end field

.field protected final _contextClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _contextType:Lcom/fasterxml/jackson/databind/JavaType;

.field private final _parentBindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

.field protected _placeholders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/JavaType;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 18
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->UNBOUND:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 2
    .param p1, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 70
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "tf"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .param p2, "parent"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p4, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p3, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 86
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_parentBindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 87
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    .line 88
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Ljava/lang/Class;)V
    .locals 1
    .param p1, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 65
    return-void
.end method


# virtual methods
.method public _addPlaceholder(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_placeholders:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_placeholders:Ljava/util/HashSet;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_placeholders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method protected _resolve()V
    .locals 5

    .prologue
    .line 212
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolveBindings(Ljava/lang/reflect/Type;)V

    .line 215
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeCount()I

    move-result v0

    .line 217
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 219
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 221
    .local v3, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->addBinding(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 228
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    .line 230
    :cond_1
    return-void
.end method

.method protected _resolveBindings(Ljava/lang/reflect/Type;)V
    .locals 22
    .param p1, "t"    # Ljava/lang/reflect/Type;

    .prologue
    .line 241
    if-nez p1, :cond_1

    .line 330
    :cond_0
    return-void

    .line 244
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v12, p1

    .line 245
    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    .line 246
    .local v12, "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 247
    .local v3, "args":[Ljava/lang/reflect/Type;
    if-eqz v3, :cond_5

    array-length v0, v3

    move/from16 v19, v0

    if-lez v19, :cond_5

    .line 248
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v14

    check-cast v14, Ljava/lang/Class;

    .line 249
    .local v14, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v14}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    .line 250
    .local v18, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 251
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Strange parametrized type (in class "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "): number of type arguments != number of type parameters ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v3

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " vs "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 253
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v9, v3

    .local v9, "len":I
    :goto_0
    if-ge v6, v9, :cond_5

    .line 254
    aget-object v16, v18, v6

    .line 255
    .local v16, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v11

    .line 256
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 257
    new-instance v19, Ljava/util/LinkedHashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    .line 265
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-object/from16 v20, v0

    aget-object v21, v3, v6

    invoke-virtual/range {v20 .. v22}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 262
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    goto :goto_1

    .line 270
    .end local v6    # "i":I
    .end local v9    # "len":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v14    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v18    # "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_5
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v13

    check-cast v13, Ljava/lang/Class;

    .line 326
    .end local v3    # "args":[Ljava/lang/reflect/Type;
    .end local v12    # "pt":Ljava/lang/reflect/ParameterizedType;
    .local v13, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-virtual {v13}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolveBindings(Ljava/lang/reflect/Type;)V

    .line 327
    invoke-virtual {v13}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/reflect/Type;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v10, :cond_0

    aget-object v8, v4, v7

    .line 328
    .local v8, "intType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolveBindings(Ljava/lang/reflect/Type;)V

    .line 327
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 271
    .end local v4    # "arr$":[Ljava/lang/reflect/Type;
    .end local v7    # "i$":I
    .end local v8    # "intType":Ljava/lang/reflect/Type;
    .end local v10    # "len$":I
    .end local v13    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v13, p1

    .line 272
    check-cast v13, Ljava/lang/Class;

    .line 278
    .restart local v13    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    .line 283
    .local v5, "decl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_8

    invoke-virtual {v5, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 284
    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolveBindings(Ljava/lang/reflect/Type;)V

    .line 290
    :cond_8
    invoke-virtual {v13}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    .line 291
    .restart local v18    # "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    if-eqz v18, :cond_6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_6

    .line 292
    const/4 v15, 0x0

    .line 294
    .local v15, "typeParams":[Lcom/fasterxml/jackson/databind/JavaType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    .line 298
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_6

    .line 299
    aget-object v16, v18, v6

    .line 301
    .restart local v16    # "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v11

    .line 302
    .restart local v11    # "name":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v17, v19, v20

    .line 303
    .local v17, "varType":Ljava/lang/reflect/Type;
    if-eqz v17, :cond_b

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    move-object/from16 v19, v0

    if-nez v19, :cond_c

    .line 305
    new-instance v19, Ljava/util/LinkedHashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    .line 309
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    .line 311
    if-eqz v15, :cond_d

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v6, :cond_d

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    move-object/from16 v19, v0

    aget-object v20, v15, v6

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_b
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 307
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    goto :goto_4

    .line 314
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public addBinding(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 188
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public childInstance()Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public findType(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->findType(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public findType(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mustFind"    # Z

    .prologue
    .line 125
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolve()V

    .line 128
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JavaType;

    .line 129
    .local v2, "t":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v2, :cond_1

    .line 168
    .end local v2    # "t":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    return-object v2

    .line 132
    .restart local v2    # "t":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_placeholders:Ljava/util/HashSet;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_placeholders:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;->UNBOUND:Lcom/fasterxml/jackson/databind/JavaType;

    goto :goto_0

    .line 135
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_parentBindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    if-eqz v3, :cond_3

    .line 136
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_parentBindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->findType(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    goto :goto_0

    .line 145
    :cond_3
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 146
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    .line 147
    .local v1, "enclosing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_4

    .line 150
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 151
    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;->UNBOUND:Lcom/fasterxml/jackson/databind/JavaType;

    goto :goto_0

    .line 167
    .end local v1    # "enclosing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    if-nez p2, :cond_5

    .line 168
    const/4 v2, 0x0

    goto :goto_0

    .line 172
    :cond_5
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    if-eqz v3, :cond_6

    .line 173
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "className":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type variable \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' can not be resolved (with context of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    .end local v0    # "className":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v3, :cond_7

    .line 175
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "className":Ljava/lang/String;
    goto :goto_1

    .line 177
    .end local v0    # "className":Ljava/lang/String;
    :cond_7
    const-string v0, "UNKNOWN"

    .restart local v0    # "className":Ljava/lang/String;
    goto :goto_1
.end method

.method public getBindingCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolve()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public resolveType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1, p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1, p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 335
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolve()V

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TypeBindings for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :goto_0
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public typesAsArray()[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolve()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 199
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 201
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/fasterxml/jackson/databind/JavaType;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/JavaType;

    goto :goto_0
.end method
