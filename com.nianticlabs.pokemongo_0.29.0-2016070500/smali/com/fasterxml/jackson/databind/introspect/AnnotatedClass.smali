.class public final Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
.super Lcom/fasterxml/jackson/databind/introspect/Annotated;
.source "AnnotatedClass.java"


# static fields
.field private static final NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;


# instance fields
.field protected final _annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

.field protected _constructors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation
.end field

.field protected _creatorMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected _creatorsResolved:Z

.field protected _defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

.field protected _fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected _memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

.field protected final _mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

.field protected final _primaryMixIn:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _superTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/util/List;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
    .locals 2
    .param p3, "aintr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p4, "mir"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    .param p5, "classAnnotations"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "superTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z

    .line 117
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 118
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    .line 119
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 120
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 121
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    .line 123
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 124
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private _addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 7
    .param p1, "result"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .param p2, "anns"    # [Ljava/lang/annotation/Annotation;

    .prologue
    .line 908
    if-eqz p2, :cond_2

    .line 909
    const/4 v2, 0x0

    .line 910
    .local v2, "fromBundles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 912
    .local v0, "ann":Ljava/lang/annotation/Annotation;
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    .line 913
    .local v5, "wasNotPresent":Z
    if-eqz v5, :cond_0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 914
    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addFromBundle(Ljava/lang/annotation/Annotation;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 910
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 917
    .end local v0    # "ann":Ljava/lang/annotation/Annotation;
    .end local v5    # "wasNotPresent":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 918
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, p1, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 921
    .end local v1    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v2    # "fromBundles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return-object p1
.end method

.method private _addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V
    .locals 7
    .param p1, "target"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p2, "anns"    # [Ljava/lang/annotation/Annotation;

    .prologue
    .line 941
    if-eqz p2, :cond_2

    .line 942
    const/4 v2, 0x0

    .line 943
    .local v2, "fromBundles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 944
    .local v0, "ann":Ljava/lang/annotation/Annotation;
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->addIfNotPresent(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    .line 945
    .local v5, "wasNotPresent":Z
    if-eqz v5, :cond_0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 946
    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addFromBundle(Ljava/lang/annotation/Annotation;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 943
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 949
    .end local v0    # "ann":Ljava/lang/annotation/Annotation;
    .end local v5    # "wasNotPresent":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 950
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, p1, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V

    .line 953
    .end local v1    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v2    # "fromBundles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return-void
.end method

.method private _addFromBundle(Ljava/lang/annotation/Annotation;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "bundle"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 926
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 928
    .local v0, "a":Ljava/lang/annotation/Annotation;
    instance-of v4, v0, Ljava/lang/annotation/Target;

    if-nez v4, :cond_0

    instance-of v4, v0, Ljava/lang/annotation/Retention;

    if-eqz v4, :cond_1

    .line 926
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 931
    :cond_1
    if-nez p2, :cond_2

    .line 932
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .restart local p2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 936
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_3
    return-object p2
.end method

.method private _addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V
    .locals 7
    .param p1, "target"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p2, "anns"    # [Ljava/lang/annotation/Annotation;

    .prologue
    .line 957
    if-eqz p2, :cond_2

    .line 958
    const/4 v2, 0x0

    .line 959
    .local v2, "fromBundles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 960
    .local v0, "ann":Ljava/lang/annotation/Annotation;
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->addOrOverride(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    .line 961
    .local v5, "wasModified":Z
    if-eqz v5, :cond_0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 962
    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addFromBundle(Ljava/lang/annotation/Annotation;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 959
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 965
    .end local v0    # "ann":Ljava/lang/annotation/Annotation;
    .end local v5    # "wasModified":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 966
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, p1, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V

    .line 969
    .end local v1    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v2    # "fromBundles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return-void
.end method

.method private _emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 1

    .prologue
    .line 827
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>()V

    return-object v0
.end method

.method private _emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 831
    if-nez p1, :cond_1

    .line 832
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 838
    :cond_0
    return-object v1

    .line 834
    :cond_1
    new-array v1, p1, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 835
    .local v1, "maps":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 836
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 835
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final _isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .param p1, "ann"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _isIncludableField(Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v1, 0x0

    .line 869
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 878
    :cond_0
    :goto_0
    return v1

    .line 874
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 875
    .local v0, "mods":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 878
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 6
    .param p1, "aintr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "mir"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 140
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-static {p0, v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v0
.end method

.method public static constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 6
    .param p1, "aintr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "mir"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v0
.end method

.method private resolveClassAnnotations()V
    .locals 5

    .prologue
    .line 302
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>()V

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 304
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v2, :cond_2

    .line 306
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v2, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 310
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 313
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 315
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;)V

    .line 316
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    goto :goto_0

    .line 325
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    const-class v3, Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;)V

    .line 327
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private resolveCreators()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, "constructors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 338
    .local v4, "declaredCtors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v3, v0, v6

    .line 339
    .local v3, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_0

    .line 340
    invoke-virtual {p0, v3, v11}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v9

    iput-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 338
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 342
    :cond_0
    if-nez v1, :cond_1

    .line 343
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "constructors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    const/16 v9, 0xa

    array-length v10, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .restart local v1    # "constructors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {p0, v3, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 348
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    if-nez v1, :cond_7

    .line 349
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    .line 354
    :goto_2
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz v9, :cond_4

    .line 355
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 356
    :cond_3
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addConstructorMixIns(Ljava/lang/Class;)V

    .line 365
    :cond_4
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v9, :cond_8

    .line 366
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v9, :cond_5

    .line 367
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {v9, v10}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 368
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 371
    :cond_5
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-eqz v9, :cond_8

    .line 373
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "i":I
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_8

    .line 374
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v10, v9}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 375
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 351
    .end local v5    # "i":I
    :cond_7
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    goto :goto_2

    .line 380
    :cond_8
    const/4 v2, 0x0

    .line 383
    .local v2, "creatorMethods":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_findClassMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v7, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v7, :cond_b

    aget-object v8, v0, v6

    .line 384
    .local v8, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_9

    .line 383
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 389
    :cond_9
    if-nez v2, :cond_a

    .line 390
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "creatorMethods":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    const/16 v9, 0x8

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    .restart local v2    # "creatorMethods":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    :cond_a
    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructCreatorMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 394
    .end local v8    # "m":Ljava/lang/reflect/Method;
    :cond_b
    if-nez v2, :cond_d

    .line 395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    .line 412
    :cond_c
    iput-boolean v11, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z

    .line 413
    return-void

    .line 397
    :cond_d
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    .line 399
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz v9, :cond_e

    .line 400
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addFactoryMixIns(Ljava/lang/Class;)V

    .line 403
    :cond_e
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v9, :cond_c

    .line 405
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .restart local v5    # "i":I
    :cond_f
    :goto_6
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_c

    .line 406
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v10, v9}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 407
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6
.end method

.method private resolveFields()V
    .locals 3

    .prologue
    .line 472
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_findFields(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 473
    .local v0, "foundFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 474
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    .line 479
    :goto_0
    return-void

    .line 476
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    .line 477
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private resolveMemberMethods()V
    .locals 11

    .prologue
    .line 423
    new-instance v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-direct {v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;-><init>()V

    iput-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    .line 424
    new-instance v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-direct {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;-><init>()V

    .line 426
    .local v7, "mixins":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v8, v9, v10, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMemberMethods(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V

    .line 429
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 430
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-nez v8, :cond_0

    const/4 v6, 0x0

    .line 431
    .local v6, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-virtual {p0, v1, v8, v6, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMemberMethods(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V

    goto :goto_0

    .line 430
    .end local v6    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    invoke-interface {v8, v1}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    goto :goto_1

    .line 434
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-eqz v8, :cond_2

    .line 435
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    const-class v9, Ljava/lang/Object;

    invoke-interface {v8, v9}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    .line 436
    .restart local v6    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v6, :cond_2

    .line 437
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-virtual {p0, v8, v9, v6, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMethodMixIns(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V

    .line 447
    .end local v6    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v8, :cond_4

    .line 448
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 449
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 450
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 451
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 453
    .local v5, "mixIn":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    :try_start_0
    const-class v8, Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 454
    .local v4, "m":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_3

    .line 455
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    .line 456
    .local v0, "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v0, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)V

    .line 457
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->add(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 459
    .end local v0    # "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v8

    goto :goto_2

    .line 463
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    .end local v5    # "mixIn":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    :cond_4
    return-void
.end method


# virtual methods
.method protected _addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;)V
    .locals 1
    .param p1, "annotations"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p2, "toMask":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    invoke-interface {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 498
    :cond_0
    return-void
.end method

.method protected _addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .param p1, "annotations"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p2, "toMask":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_1

    .line 519
    :cond_0
    return-void

    .line 507
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 516
    invoke-static {p3, p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 517
    .local v1, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    goto :goto_0
.end method

.method protected _addConstructorMixIns(Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 529
    const/4 v3, 0x0

    .line 530
    .local v3, "ctorKeys":[Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-nez v8, :cond_1

    move v2, v9

    .line 531
    .local v2, "ctorCount":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v1, v0, v5

    .line 532
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_2

    .line 533
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v8, :cond_0

    .line 534
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {p0, v1, v8, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Z)V

    .line 531
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 530
    .end local v0    # "arr$":[Ljava/lang/reflect/Constructor;
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "ctorCount":I
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_1
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 537
    .restart local v0    # "arr$":[Ljava/lang/reflect/Constructor;
    .restart local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v2    # "ctorCount":I
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    :cond_2
    if-nez v3, :cond_3

    .line 538
    new-array v3, v2, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 539
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_3

    .line 540
    new-instance v10, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-direct {v10, v8}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v10, v3, v4

    .line 539
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 543
    .end local v4    # "i":I
    :cond_3
    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v6, v1}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 545
    .local v6, "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v2, :cond_0

    .line 546
    aget-object v8, v3, v4

    invoke-virtual {v6, v8}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 545
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 549
    :cond_4
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    const/4 v10, 0x1

    invoke-virtual {p0, v1, v8, v10}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Z)V

    goto :goto_2

    .line 554
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "i":I
    .end local v6    # "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    :cond_5
    return-void
.end method

.method protected _addFactoryMixIns(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 559
    .local v7, "methodKeys":[Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 561
    .local v6, "methodCount":I
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    .line 562
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 561
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 565
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-eqz v8, :cond_0

    .line 568
    if-nez v7, :cond_2

    .line 569
    new-array v7, v6, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 570
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v6, :cond_2

    .line 571
    new-instance v9, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-direct {v9, v8}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v9, v7, v1

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 574
    .end local v1    # "i":I
    :cond_2
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v3, v5}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    .line 575
    .local v3, "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v6, :cond_0

    .line 576
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 579
    :cond_3
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    const/4 v9, 0x1

    invoke-virtual {p0, v5, v8, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)V

    goto :goto_1

    .line 583
    .end local v1    # "i":I
    .end local v3    # "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_4
    return-void
.end method

.method protected _addFieldMixIns(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "mixInCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v8, "parents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v8, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-static {p2, p1, v8}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    .line 727
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 728
    .local v5, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 730
    .local v6, "mixinField":Ljava/lang/reflect/Field;
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isIncludableField(Ljava/lang/reflect/Field;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 728
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 733
    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    .line 735
    .local v7, "name":Ljava/lang/String;
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 736
    .local v4, "maskedField":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    if-eqz v4, :cond_1

    .line 737
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v9

    invoke-direct {p0, v4, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V

    goto :goto_1

    .line 741
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "maskedField":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .end local v5    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "mixinField":Ljava/lang/reflect/Field;
    .end local v7    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected _addMemberMethods(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V
    .locals 8
    .param p2, "methods"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
    .param p4, "mixIns"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "mixInCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p3, :cond_0

    .line 596
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMethodMixIns(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V

    .line 598
    :cond_0
    if-nez p1, :cond_2

    .line 633
    :cond_1
    return-void

    .line 602
    :cond_2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_findClassMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 603
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 602
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    :cond_4
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->find(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v5

    .line 607
    .local v5, "old":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-nez v5, :cond_5

    .line 608
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v4

    .line 609
    .local v4, "newM":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->add(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    .line 611
    invoke-virtual {p4, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->remove(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v5

    .line 612
    if-eqz v5, :cond_3

    .line 613
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v4, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)V

    goto :goto_1

    .line 619
    .end local v4    # "newM":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    :cond_5
    invoke-virtual {p0, v3, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixUnders(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    .line 628
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-nez v6, :cond_3

    .line 629
    invoke-virtual {v5, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->withMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->add(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    goto :goto_1
.end method

.method protected _addMethodMixIns(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V
    .locals 9
    .param p2, "methods"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
    .param p4, "mixIns"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "mixInCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v7, "parents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v7, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-static {p3, p1, v7}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    .line 641
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 642
    .local v6, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 643
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 642
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->find(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    .line 651
    .local v0, "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-eqz v0, :cond_2

    .line 652
    invoke-virtual {p0, v5, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixUnders(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    goto :goto_1

    .line 659
    :cond_2
    invoke-virtual {p4, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->find(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    .line 660
    if-eqz v0, :cond_3

    .line 661
    invoke-virtual {p0, v5, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixUnders(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    goto :goto_1

    .line 663
    :cond_3
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v8

    invoke-virtual {p4, v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->add(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    goto :goto_1

    .line 668
    .end local v0    # "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v6    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    return-void
.end method

.method protected _addMixOvers(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Z)V
    .locals 8
    .param p2, "target"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .param p3, "addParamAnnotations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 978
    .local p1, "mixin":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    invoke-direct {p0, p2, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V

    .line 979
    if-eqz p3, :cond_1

    .line 980
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 981
    .local v6, "pa":[[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v4, v6

    .local v4, "len":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 982
    aget-object v1, v6, v2

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    .line 983
    .local v0, "a":Ljava/lang/annotation/Annotation;
    invoke-virtual {p2, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->addOrOverrideParam(ILjava/lang/annotation/Annotation;)V

    .line 982
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 981
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 987
    .end local v1    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len":I
    .end local v5    # "len$":I
    .end local v6    # "pa":[[Ljava/lang/annotation/Annotation;
    :cond_1
    return-void
.end method

.method protected _addMixOvers(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)V
    .locals 8
    .param p1, "mixin"    # Ljava/lang/reflect/Method;
    .param p2, "target"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p3, "addParamAnnotations"    # Z

    .prologue
    .line 996
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    invoke-direct {p0, p2, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V

    .line 997
    if-eqz p3, :cond_1

    .line 998
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 999
    .local v6, "pa":[[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v4, v6

    .local v4, "len":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1000
    aget-object v1, v6, v2

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    .line 1001
    .local v0, "a":Ljava/lang/annotation/Annotation;
    invoke-virtual {p2, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->addOrOverrideParam(ILjava/lang/annotation/Annotation;)V

    .line 1000
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 999
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1005
    .end local v1    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len":I
    .end local v5    # "len$":I
    .end local v6    # "pa":[[Ljava/lang/annotation/Annotation;
    :cond_1
    return-void
.end method

.method protected _addMixUnders(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/reflect/Method;
    .param p2, "target"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    .line 1012
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V

    .line 1013
    return-void
.end method

.method protected _collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 1
    .param p1, "anns"    # [Ljava/lang/annotation/Annotation;

    .prologue
    .line 899
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    return-object v0
.end method

.method protected _collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 4
    .param p1, "anns"    # [[Ljava/lang/annotation/Annotation;

    .prologue
    .line 889
    array-length v1, p1

    .line 890
    .local v1, "len":I
    new-array v2, v1, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 891
    .local v2, "result":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 892
    aget-object v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    aput-object v3, v2, v0

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 894
    :cond_0
    return-object v2
.end method

.method protected _constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 8
    .param p2, "defaultCtor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;Z)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;"
        }
    .end annotation

    .prologue
    .local p1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x0

    .line 763
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v5, :cond_0

    .line 764
    new-instance v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    invoke-direct {p0, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v7

    invoke-direct {v5, p0, p1, v6, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 805
    :goto_0
    return-object v5

    .line 766
    :cond_0
    if-eqz p2, :cond_1

    .line 767
    new-instance v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, p0, p1, v6, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    goto :goto_0

    .line 769
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 770
    .local v2, "paramAnns":[[Ljava/lang/annotation/Annotation;
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v3, v5

    .line 776
    .local v3, "paramCount":I
    const/4 v4, 0x0

    .line 777
    .local v4, "resolvedAnnotations":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    array-length v5, v2

    if-eq v3, v5, :cond_4

    .line 781
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 783
    .local v0, "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_3

    array-length v5, v2

    add-int/lit8 v5, v5, 0x2

    if-ne v3, v5, :cond_3

    .line 784
    move-object v1, v2

    .line 785
    .local v1, "old":[[Ljava/lang/annotation/Annotation;
    array-length v5, v1

    add-int/lit8 v5, v5, 0x2

    new-array v2, v5, [[Ljava/lang/annotation/Annotation;

    .line 786
    const/4 v5, 0x2

    array-length v6, v1

    invoke-static {v1, v7, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    .line 798
    .end local v1    # "old":[[Ljava/lang/annotation/Annotation;
    :cond_2
    :goto_1
    if-nez v4, :cond_5

    .line 799
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Internal error: constructor for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has mismatch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " parameters; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sets of annotations"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 788
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 790
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    if-ne v3, v5, :cond_2

    .line 792
    move-object v1, v2

    .line 793
    .restart local v1    # "old":[[Ljava/lang/annotation/Annotation;
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [[Ljava/lang/annotation/Annotation;

    .line 794
    const/4 v5, 0x1

    array-length v6, v1

    invoke-static {v1, v7, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 795
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    goto :goto_1

    .line 803
    .end local v0    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "old":[[Ljava/lang/annotation/Annotation;
    :cond_4
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    .line 805
    :cond_5
    new-instance v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v6

    invoke-direct {v5, p0, p1, v6, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    goto/16 :goto_0
.end method

.method protected _constructCreatorMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 812
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 814
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    goto :goto_0
.end method

.method protected _constructField(Ljava/lang/reflect/Field;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .locals 2
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 820
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/reflect/Field;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 823
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/reflect/Field;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    goto :goto_0
.end method

.method protected _constructMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v2, 0x0

    .line 755
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 756
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 758
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    goto :goto_0
.end method

.method protected _findClassMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1029
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1046
    :goto_0
    return-object v4

    .line 1030
    :catch_0
    move-exception v2

    .line 1033
    .local v2, "ex":Ljava/lang/NoClassDefFoundError;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1034
    .local v3, "loader":Ljava/lang/ClassLoader;
    if-nez v3, :cond_0

    .line 1036
    throw v2

    .line 1040
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1046
    .local v0, "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    goto :goto_0

    .line 1041
    .end local v0    # "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 1044
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    throw v2
.end method

.method protected _findFields(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 684
    .local v5, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_3

    .line 689
    invoke-virtual {p0, v5, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_findFields(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 690
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 692
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isIncludableField(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 690
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 700
    :cond_0
    if-nez p2, :cond_1

    .line 701
    new-instance p2, Ljava/util/LinkedHashMap;

    .end local p2    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;>;"
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 703
    .restart local p2    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructField(Ljava/lang/reflect/Field;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 706
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_2
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-eqz v6, :cond_3

    .line 707
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    invoke-interface {v6, p1}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 708
    .local v4, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_3

    .line 709
    invoke-virtual {p0, v5, v4, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addFieldMixIns(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V

    .line 713
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-object p2
.end method

.method protected _isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v1, 0x0

    .line 849
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 861
    :cond_0
    :goto_0
    return v1

    .line 856
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v2

    if-nez v2, :cond_0

    .line 860
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v0, v2

    .line 861
    .local v0, "pcount":I
    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public annotations()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveClassAnnotations()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->annotations()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1068
    if-ne p1, p0, :cond_1

    .line 1070
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 1069
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1070
    :cond_3
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public fields()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    if-nez v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveFields()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    return-object v0
.end method

.method public findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;"
        }
    .end annotation

    .prologue
    .line 268
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    if-nez v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveMemberMethods()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->find(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    return-object v0
.end method

.method protected getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveClassAnnotations()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    return-object v0
.end method

.method public getAnnotated()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveClassAnnotations()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveClassAnnotations()V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    return-object v0
.end method

.method public getConstructors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z

    if-nez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveCreators()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultConstructor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z

    if-nez v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveCreators()V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    if-nez v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveFields()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getMemberMethodCount()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    if-nez v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveMemberMethods()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->size()I

    move-result v0

    return v0
.end method

.method public getModifiers()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getStaticMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z

    if-nez v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveCreators()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    return-object v0
.end method

.method public hasAnnotations()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveClassAnnotations()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public memberMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveMemberMethods()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AnnotedClass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

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

.method public bridge synthetic withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    return-object v0
.end method

.method public withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 6
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .prologue
    .line 128
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v0
.end method
