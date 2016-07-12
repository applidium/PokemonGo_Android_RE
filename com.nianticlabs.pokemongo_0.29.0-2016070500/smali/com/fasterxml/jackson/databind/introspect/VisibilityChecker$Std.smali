.class public Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
.super Ljava/lang/Object;
.source "VisibilityChecker.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonAutoDetect;
    creatorVisibility = .enum Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ANY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    fieldVisibility = .enum Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    getterVisibility = .enum Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    isGetterVisibility = .enum Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ANY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Std"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
        "<",
        "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field protected static final DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

.field protected final _fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

.field protected final _getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

.field protected final _isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

.field protected final _setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 170
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    const-class v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    const-class v2, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect;)V

    sput-object v1, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V
    .locals 1
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    .line 218
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 219
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 220
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 221
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 222
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 230
    :goto_0
    return-void

    .line 224
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 225
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 226
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 227
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 228
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V
    .locals 0
    .param p1, "getter"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    .param p2, "isGetter"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    .param p3, "setter"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    .param p4, "creator"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    .param p5, "field"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 202
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 203
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 204
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 205
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect;)V
    .locals 1
    .param p1, "ann"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;->getterVisibility()Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 190
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;->isGetterVisibility()Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 191
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;->setterVisibility()Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 192
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;->creatorVisibility()Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 193
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;->fieldVisibility()Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 194
    return-void
.end method

.method public static defaultInstance()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    return-object v0
.end method


# virtual methods
.method public isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
    .locals 1
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->isCreatorVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isCreatorVisible(Ljava/lang/reflect/Member;)Z
    .locals 1
    .param p1, "m"    # Ljava/lang/reflect/Member;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isFieldVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .prologue
    .line 343
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->isFieldVisible(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0
.end method

.method public isFieldVisible(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isGetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    .line 353
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->isGetterVisible(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public isGetterVisible(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isIsGetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    .line 363
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->isIsGetterVisible(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public isIsGetterVisible(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isSetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    .line 373
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->isSetterVisible(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public isSetterVisible(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Visibility:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " getter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGetter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 1
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 256
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    .line 257
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    .line 259
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/annotation/JsonAutoDetect;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 2
    .param p1, "ann"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    .prologue
    .line 242
    move-object v0, p0

    .line 243
    .local v0, "curr":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    if-eqz p1, :cond_0

    .line 244
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;->getterVisibility()Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    .line 245
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;->isGetterVisibility()Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withIsGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    .line 246
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;->setterVisibility()Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withSetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    .line 247
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;->creatorVisibility()Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withCreatorVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    .line 248
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;->fieldVisibility()Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withFieldVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    .line 250
    :cond_0
    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->with(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/annotation/JsonAutoDetect;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->with(Lcom/fasterxml/jackson/annotation/JsonAutoDetect;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withCreatorVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 6
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 308
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object p1, v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne v0, p1, :cond_1

    .line 310
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withCreatorVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withCreatorVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withFieldVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 6
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 315
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object p1, v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne v0, p1, :cond_1

    .line 317
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withFieldVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withFieldVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 6
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 287
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object p1, v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne v0, p1, :cond_1

    .line 289
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withIsGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 6
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 294
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object p1, v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne v0, p1, :cond_1

    .line 296
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withIsGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withIsGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withSetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 6
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 301
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object p1, v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne v0, p1, :cond_1

    .line 303
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withSetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withSetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 2
    .param p1, "method"    # Lcom/fasterxml/jackson/annotation/PropertyAccessor;
    .param p2, "v"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 265
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$1;->$SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 281
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    :goto_0
    return-object p0

    .line 267
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withSetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 271
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withCreatorVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 273
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withFieldVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 275
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withIsGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 277
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->with(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/annotation/PropertyAccessor;
    .param p2, "x1"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method
