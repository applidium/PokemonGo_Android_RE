.class public Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
.super Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
.source "POJOPropertyBuilder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$10;,
        Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;,
        Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$MemberIterator;,
        Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected _ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;",
            ">;"
        }
    .end annotation
.end field

.field protected _fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected final _forSerialization:Z

.field protected _getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _internalName:Lcom/fasterxml/jackson/databind/PropertyName;

.field protected final _name:Lcom/fasterxml/jackson/databind/PropertyName;

.field protected _setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)V
    .locals 0
    .param p1, "internalName"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p2, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p3, "forSerialization"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)V

    .line 50
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)V
    .locals 0
    .param p1, "internalName"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p2, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p3, "annotationIntrospector"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p4, "forSerialization"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_internalName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 56
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 57
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 58
    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_forSerialization:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    .param p2, "newName"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;-><init>()V

    .line 63
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_internalName:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_internalName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 64
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 65
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 66
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 67
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 68
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 69
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 70
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_forSerialization:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_forSerialization:Z

    .line 71
    return-void
.end method

.method private _anyExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 794
    .local p1, "n":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 795
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->name:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isNameExplicit:Z

    if-eqz v0, :cond_0

    .line 796
    const/4 v0, 0x1

    .line 799
    :goto_1
    return v0

    .line 794
    :cond_0
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    .line 799
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private _anyExplicits(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 784
    .local p1, "n":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 785
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->name:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->name:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    const/4 v0, 0x1

    .line 789
    :goto_1
    return v0

    .line 784
    :cond_0
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    .line 789
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private _anyIgnorals(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 830
    .local p1, "n":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 831
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isMarkedIgnored:Z

    if-eqz v0, :cond_0

    .line 832
    const/4 v0, 0x1

    .line 835
    :goto_1
    return v0

    .line 830
    :cond_0
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    .line 835
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private _anyVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 812
    .local p1, "n":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 813
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isVisible:Z

    if-eqz v0, :cond_0

    .line 814
    const/4 v0, 0x1

    .line 817
    :goto_1
    return v0

    .line 812
    :cond_0
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    .line 817
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private _applyAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .locals 2
    .param p2, "ann"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, "node":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 746
    .local v0, "value":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;, "TT;"
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_0

    .line 747
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1, p2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_applyAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withNext(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object p1

    .line 749
    :cond_0
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    return-object v1
.end method

.method private _explode(Ljava/util/Collection;Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, "newNames":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/PropertyName;>;"
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    .local p3, "accessors":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<*>;"
    move-object v0, p3

    .line 881
    .local v0, "firstAcc":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<*>;"
    move-object v5, p3

    .local v5, "node":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<*>;"
    :goto_0
    if-eqz v5, :cond_8

    .line 882
    iget-object v4, v5, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->name:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 883
    .local v4, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    iget-boolean v7, v5, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isNameExplicit:Z

    if-eqz v7, :cond_0

    if-nez v4, :cond_2

    .line 885
    :cond_0
    iget-boolean v7, v5, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isVisible:Z

    if-nez v7, :cond_1

    .line 881
    :goto_1
    iget-object v5, v5, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    .line 889
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Conflicting/ambiguous property name definitions (implicit name \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'): found multiple explicit names: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", but also implicit accessor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 893
    :cond_2
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 894
    .local v6, "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    if-nez v6, :cond_3

    .line 895
    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_internalName:Lcom/fasterxml/jackson/databind/PropertyName;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-boolean v9, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_forSerialization:Z

    invoke-direct {v6, v7, v4, v8, v9}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)V

    .line 896
    .restart local v6    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    invoke-interface {p2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    :cond_3
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-ne v0, v7, :cond_4

    .line 900
    move-object v1, v5

    .line 901
    .local v1, "n2":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;>;"
    iget-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-virtual {v1, v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withNext(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v7

    iput-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_1

    .line 902
    .end local v1    # "n2":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;>;"
    :cond_4
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-ne v0, v7, :cond_5

    .line 903
    move-object v2, v5

    .line 904
    .local v2, "n2":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    iget-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-virtual {v2, v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withNext(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v7

    iput-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_1

    .line 905
    .end local v2    # "n2":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    :cond_5
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-ne v0, v7, :cond_6

    .line 906
    move-object v2, v5

    .line 907
    .restart local v2    # "n2":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    iget-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-virtual {v2, v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withNext(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v7

    iput-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_1

    .line 908
    .end local v2    # "n2":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    :cond_6
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-ne v0, v7, :cond_7

    .line 909
    move-object v3, v5

    .line 910
    .local v3, "n2":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;>;"
    iget-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withNext(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v7

    iput-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_1

    .line 912
    .end local v3    # "n2":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;>;"
    :cond_7
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Internal error: mismatched accessors, property: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 915
    .end local v4    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_8
    return-void
.end method

.method private _findExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<+",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 920
    .local p1, "node":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<+Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;>;"
    .local p2, "renamed":Ljava/util/Set;, "Ljava/util/Set<Lcom/fasterxml/jackson/databind/PropertyName;>;"
    :goto_0
    if-eqz p1, :cond_3

    .line 927
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isNameExplicit:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->name:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v0, :cond_1

    .line 920
    :cond_0
    :goto_1
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    .line 930
    :cond_1
    if-nez p2, :cond_2

    .line 931
    new-instance p2, Ljava/util/HashSet;

    .end local p2    # "renamed":Ljava/util/Set;, "Ljava/util/Set<Lcom/fasterxml/jackson/databind/PropertyName;>;"
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 933
    .restart local p2    # "renamed":Ljava/util/Set;, "Ljava/util/Set<Lcom/fasterxml/jackson/databind/PropertyName;>;"
    :cond_2
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->name:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 935
    :cond_3
    return-object p2
.end method

.method private _getAllAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;"
        }
    .end annotation

    .prologue
    .line 727
    .local p1, "node":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    .line 728
    .local v0, "ann":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getAllAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->merge(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    .line 731
    :cond_0
    return-object v0
.end method

.method private varargs _mergeAnnotations(I[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<+",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;"
        }
    .end annotation

    .prologue
    .line 707
    .local p2, "nodes":[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<+Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;>;"
    aget-object v1, p2, p1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getAllAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    .line 708
    .local v0, "ann":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    add-int/lit8 p1, p1, 0x1

    .line 709
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_0

    .line 710
    aget-object v1, p2, p1

    if-eqz v1, :cond_1

    .line 711
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->merge(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    .line 714
    .end local v0    # "ann":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    :cond_0
    return-object v0

    .line 709
    .restart local v0    # "ann":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private _removeIgnored(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "node":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    if-nez p1, :cond_0

    .line 757
    .end local p1    # "node":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    :goto_0
    return-object p1

    .restart local p1    # "node":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withoutIgnored()Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object p1

    goto :goto_0
.end method

.method private _removeNonVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 762
    .local p1, "node":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    if-nez p1, :cond_0

    .line 765
    .end local p1    # "node":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    :goto_0
    return-object p1

    .restart local p1    # "node":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withoutNonVisible()Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object p1

    goto :goto_0
.end method

.method private _trimByVisibility(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 770
    .local p1, "node":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    if-nez p1, :cond_0

    .line 773
    .end local p1    # "node":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    :goto_0
    return-object p1

    .restart local p1    # "node":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->trimByVisibility()Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object p1

    goto :goto_0
.end method

.method private static merge(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "chain1":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    .local p1, "chain2":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    if-nez p0, :cond_0

    .line 592
    .end local p1    # "chain2":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    :goto_0
    return-object p1

    .line 589
    .restart local p1    # "chain2":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<TT;>;"
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 590
    goto :goto_0

    .line 592
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->append(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected _findDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$7;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$7;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->fromMemberAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected _findDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$5;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$5;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->fromMemberAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected _findIndex()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 501
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$6;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$6;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->fromMemberAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method protected _findRequired()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 482
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$4;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$4;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->fromMemberAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 488
    .local v0, "b":Ljava/lang/Boolean;
    return-object v0
.end method

.method protected _getterPriority(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I
    .locals 4
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 409
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "name":Ljava/lang/String;
    const-string v3, "get"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 413
    const/4 v1, 0x1

    .line 418
    :cond_0
    :goto_0
    return v1

    .line 415
    :cond_1
    const-string v3, "is"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_0

    :cond_2
    move v1, v2

    .line 418
    goto :goto_0
.end method

.method protected _setterPriority(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I
    .locals 3
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    .line 423
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "name":Ljava/lang/String;
    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 426
    const/4 v1, 0x1

    .line 428
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public addAll(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V
    .locals 2
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->merge(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 579
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->merge(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 580
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->merge(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 581
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->merge(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 582
    return-void
.end method

.method public addCtor(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V
    .locals 7
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .param p2, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p3, "explName"    # Z
    .param p4, "visible"    # Z
    .param p5, "ignored"    # Z

    .prologue
    .line 561
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 562
    return-void
.end method

.method public addField(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V
    .locals 7
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .param p2, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p3, "explName"    # Z
    .param p4, "visible"    # Z
    .param p5, "ignored"    # Z

    .prologue
    .line 557
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 558
    return-void
.end method

.method public addGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V
    .locals 7
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p2, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p3, "explName"    # Z
    .param p4, "visible"    # Z
    .param p5, "ignored"    # Z

    .prologue
    .line 565
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 566
    return-void
.end method

.method public addSetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V
    .locals 7
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p2, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p3, "explName"    # Z
    .param p4, "visible"    # Z
    .param p5, "ignored"    # Z

    .prologue
    .line 569
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 570
    return-void
.end method

.method public anyIgnorals()Z
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anyVisible()Z
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)I
    .locals 2
    .param p1, "other"    # Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v0, :cond_1

    .line 105
    const/4 v0, -0x1

    .line 113
    :goto_0
    return v0

    .line 107
    :cond_0
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->compareTo(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)I

    move-result v0

    return v0
.end method

.method public couldDeserialize()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public couldSerialize()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public explode(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 867
    .local p1, "newNames":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/PropertyName;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 868
    .local v0, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_explode(Ljava/util/Collection;Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)V

    .line 869
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_explode(Ljava/util/Collection;Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)V

    .line 870
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_explode(Ljava/util/Collection;Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)V

    .line 871
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_explode(Ljava/util/Collection;Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)V

    .line 872
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public findAccess()Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
    .locals 2

    .prologue
    .line 542
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$9;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$9;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->AUTO:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->fromMemberAnnotationsExcept(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    return-object v0
.end method

.method public findExplicitNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, "renamed":Ljava/util/Set;, "Ljava/util/Set<Lcom/fasterxml/jackson/databind/PropertyName;>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_findExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 848
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_findExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 849
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_findExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 850
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_findExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 851
    if-nez v0, :cond_0

    .line 852
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 854
    .end local v0    # "renamed":Ljava/util/Set;, "Ljava/util/Set<Lcom/fasterxml/jackson/databind/PropertyName;>;"
    :cond_0
    return-object v0
.end method

.method public findInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 534
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v2, :cond_0

    .line 538
    :goto_0
    return-object v1

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    .line 538
    .local v0, "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v1

    goto :goto_0
.end method

.method public findObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 1

    .prologue
    .line 520
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$8;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$8;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->fromMemberAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    return-object v0
.end method

.method public findReferenceType()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .locals 1

    .prologue
    .line 449
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$2;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$2;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->fromMemberAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    return-object v0
.end method

.method public findViews()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 439
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$1;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$1;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->fromMemberAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method protected fromMemberAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 965
    .local p1, "func":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember<TT;>;"
    const/4 v0, 0x0

    .line 966
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v1, :cond_1

    .line 967
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_forSerialization:Z

    if-eqz v1, :cond_2

    .line 968
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_0

    .line 969
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 979
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 983
    :cond_1
    return-object v0

    .line 972
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_3

    .line 973
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 975
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_3
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method

.method protected fromMemberAnnotationsExcept(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "func":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 988
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_1

    move-object v0, v2

    .line 1045
    :cond_0
    :goto_0
    return-object v0

    .line 994
    :cond_1
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_forSerialization:Z

    if-eqz v1, :cond_6

    .line 995
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_2

    .line 996
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 997
    .local v0, "result":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_2

    if-ne v0, p2, :cond_0

    .line 1001
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_3

    .line 1002
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 1003
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_3

    if-ne v0, p2, :cond_0

    .line 1007
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_4

    .line 1008
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 1009
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_4

    if-ne v0, p2, :cond_0

    .line 1013
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_5

    .line 1014
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 1015
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_5

    if-ne v0, p2, :cond_0

    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_5
    move-object v0, v2

    .line 1019
    goto :goto_0

    .line 1021
    :cond_6
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_7

    .line 1022
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 1023
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_7

    if-ne v0, p2, :cond_0

    .line 1027
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_7
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_8

    .line 1028
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 1029
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_8

    if-ne v0, p2, :cond_0

    .line 1033
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_8
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_9

    .line 1034
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 1035
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_9

    if-ne v0, p2, :cond_0

    .line 1039
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_9
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_a

    .line 1040
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 1041
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_a

    if-ne v0, p2, :cond_0

    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_a
    move-object v0, v2

    .line 1045
    goto/16 :goto_0
.end method

.method public getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    .line 371
    .local v0, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-nez v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    .line 374
    :cond_0
    return-object v0
.end method

.method public getConstructorParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 2

    .prologue
    .line 338
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v1, :cond_0

    .line 339
    const/4 v1, 0x0

    .line 356
    :goto_0
    return-object v1

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 351
    .local v0, "curr":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;>;"
    :cond_1
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v1

    instance-of v1, v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    goto :goto_0

    .line 354
    :cond_2
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 355
    if-nez v0, :cond_1

    .line 356
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    goto :goto_0
.end method

.method public getConstructorParameters()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v0, :cond_0

    .line 362
    invoke-static {}, Lcom/fasterxml/jackson/databind/util/EmptyIterator;->instance()Ljava/util/Iterator;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$MemberIterator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$MemberIterator;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)V

    goto :goto_0
.end method

.method public getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .locals 8

    .prologue
    .line 310
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v5, :cond_1

    .line 311
    const/4 v0, 0x0

    .line 332
    :cond_0
    return-object v0

    .line 314
    :cond_1
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, v5, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 315
    .local v0, "field":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v2, v5, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 316
    .local v2, "next":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 317
    iget-object v4, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 318
    .local v4, "nextField":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 319
    .local v1, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 320
    .local v3, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, v3, :cond_4

    .line 321
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 322
    move-object v0, v4

    .line 316
    :cond_2
    iget-object v2, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    .line 325
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 329
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple fields representing property \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object v0
.end method

.method public getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 9

    .prologue
    .line 210
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 211
    .local v0, "curr":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    if-nez v0, :cond_0

    .line 212
    const/4 v6, 0x0

    .line 254
    :goto_0
    return-object v6

    .line 214
    :cond_0
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 215
    .local v2, "next":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    if-nez v2, :cond_1

    .line 216
    iget-object v6, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    goto :goto_0

    .line 219
    :cond_1
    :goto_1
    if-eqz v2, :cond_6

    .line 223
    iget-object v6, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 224
    .local v1, "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 225
    .local v3, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, v3, :cond_4

    .line 226
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 227
    move-object v0, v2

    .line 219
    :cond_2
    :goto_2
    iget-object v2, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_1

    .line 230
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 240
    :cond_4
    iget-object v6, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getterPriority(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I

    move-result v5

    .line 241
    .local v5, "priNext":I
    iget-object v6, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getterPriority(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I

    move-result v4

    .line 243
    .local v4, "priCurr":I
    if-eq v5, v4, :cond_5

    .line 244
    if-ge v5, v4, :cond_2

    .line 245
    move-object v0, v2

    goto :goto_2

    .line 249
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Conflicting getter definitions for property \""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " vs "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 253
    .end local v1    # "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "priCurr":I
    .end local v5    # "priNext":I
    :cond_6
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withoutNext()Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v6

    iput-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 254
    iget-object v6, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    goto/16 :goto_0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_internalName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 5

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_findRequired()Ljava/lang/Boolean;

    move-result-object v0

    .line 471
    .local v0, "b":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_findDescription()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "desc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_findIndex()Ljava/lang/Integer;

    move-result-object v3

    .line 473
    .local v3, "idx":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_findDefaultValue()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "def":Ljava/lang/String;
    if-nez v0, :cond_1

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    .line 475
    if-nez v2, :cond_0

    sget-object v4, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 478
    :goto_0
    return-object v4

    .line 475
    :cond_0
    sget-object v4, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->withDescription(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v4

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4, v2, v3, v1}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->construct(ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v4

    goto :goto_0
.end method

.method public getMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getConstructorParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v0

    .line 381
    .local v0, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    .line 383
    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    .line 387
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNonConstructorMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    .line 393
    .local v0, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    .line 396
    :cond_0
    return-object v0
.end method

.method public getPrimaryMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_forSerialization:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    .line 404
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    goto :goto_0
.end method

.method public getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 9

    .prologue
    .line 261
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 262
    .local v0, "curr":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    if-nez v0, :cond_0

    .line 263
    const/4 v6, 0x0

    .line 304
    :goto_0
    return-object v6

    .line 265
    :cond_0
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 266
    .local v2, "next":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;, "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    if-nez v2, :cond_1

    .line 267
    iget-object v6, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    goto :goto_0

    .line 270
    :cond_1
    :goto_1
    if-eqz v2, :cond_6

    .line 274
    iget-object v6, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 275
    .local v1, "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 276
    .local v3, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, v3, :cond_4

    .line 277
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 278
    move-object v0, v2

    .line 270
    :cond_2
    :goto_2
    iget-object v2, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_1

    .line 281
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 290
    :cond_4
    iget-object v6, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setterPriority(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I

    move-result v5

    .line 291
    .local v5, "priNext":I
    iget-object v6, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setterPriority(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I

    move-result v4

    .line 293
    .local v4, "priCurr":I
    if-eq v5, v4, :cond_5

    .line 294
    if-ge v5, v4, :cond_2

    .line 295
    move-object v0, v2

    goto :goto_2

    .line 299
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Conflicting setter definitions for property \""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " vs "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 303
    .end local v1    # "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "priCurr":I
    .end local v5    # "priNext":I
    :cond_6
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withoutNext()Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v6

    iput-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 304
    iget-object v6, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    goto/16 :goto_0
.end method

.method public getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getPrimaryMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    .line 148
    .local v0, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    goto :goto_0
.end method

.method public hasConstructorParameter()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasField()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGetter()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName(Lcom/fasterxml/jackson/databind/PropertyName;)Z
    .locals 1
    .param p1, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasSetter()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExplicitlyIncluded()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyExplicits(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyExplicits(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyExplicits(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyExplicits(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExplicitlyNamed()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeId()Z
    .locals 2

    .prologue
    .line 459
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$3;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$3;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->fromMemberAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 465
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeAnnotations(Z)V
    .locals 7
    .param p1, "forSerialization"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 683
    if-eqz p1, :cond_2

    .line 684
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_1

    .line 685
    new-array v1, v2, [Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v6

    invoke-direct {p0, v3, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    .line 686
    .local v0, "ann":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_applyAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 703
    .end local v0    # "ann":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_0

    .line 688
    new-array v1, v6, [Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v5

    invoke-direct {p0, v3, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    .line 689
    .restart local v0    # "ann":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_applyAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    .line 692
    .end local v0    # "ann":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_3

    .line 693
    new-array v1, v2, [Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v6

    invoke-direct {p0, v3, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    .line 694
    .restart local v0    # "ann":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_applyAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    .line 695
    .end local v0    # "ann":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_4

    .line 696
    new-array v1, v6, [Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v5

    invoke-direct {p0, v3, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    .line 697
    .restart local v0    # "ann":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_applyAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    .line 698
    .end local v0    # "ann":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_0

    .line 699
    new-array v1, v5, [Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    .line 700
    .restart local v0    # "ann":Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_applyAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0
.end method

.method public removeConstructors()V
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 665
    return-void
.end method

.method public removeIgnored()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 608
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 609
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 610
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 611
    return-void
.end method

.method public removeNonVisible(Z)V
    .locals 4
    .param p1, "inferMutators"    # Z

    .prologue
    const/4 v3, 0x0

    .line 623
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->findAccess()Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    move-result-object v0

    .line 624
    .local v0, "acc":Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
    if-nez v0, :cond_0

    .line 625
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->AUTO:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    .line 627
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$10;->$SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 648
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 649
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 651
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v1, :cond_2

    .line 652
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 653
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 656
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 630
    :pswitch_1
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 631
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 632
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_forSerialization:Z

    if-nez v1, :cond_2

    .line 633
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    .line 641
    :pswitch_2
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 642
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_forSerialization:Z

    if-eqz v1, :cond_2

    .line 643
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 943
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[Property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; ctors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", field(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getter(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setter(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 949
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trimByVisibility()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 675
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 676
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 677
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    .line 678
    return-void
.end method

.method public bridge synthetic withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    .locals 1
    .param p1, "newName"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .prologue
    .line 81
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-object v0
.end method

.method public bridge synthetic withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    .locals 2
    .param p1, "newSimpleName"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/PropertyName;->withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 88
    .local v0, "newName":Lcom/fasterxml/jackson/databind/PropertyName;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-direct {v1, p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;Lcom/fasterxml/jackson/databind/PropertyName;)V

    move-object p0, v1

    goto :goto_0
.end method
