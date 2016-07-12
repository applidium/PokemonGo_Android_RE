.class public final Lcom/fasterxml/jackson/databind/introspect/MemberKey;
.super Ljava/lang/Object;
.source "MemberKey.java"


# static fields
.field static final NO_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final _argTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final _name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->NO_CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->_name:Ljava/lang/String;

    .line 31
    if-nez p2, :cond_0

    sget-object p2, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->NO_CLASSES:[Ljava/lang/Class;

    .end local p2    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->_argTypes:[Ljava/lang/Class;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 20
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 48
    if-ne p1, p0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v6

    .line 49
    :cond_1
    if-nez p1, :cond_2

    move v6, v7

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v8, v9, :cond_3

    move v6, v7

    .line 51
    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 53
    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 54
    .local v2, "other":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->_name:Ljava/lang/String;

    iget-object v9, v2, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    move v6, v7

    .line 55
    goto :goto_0

    .line 57
    :cond_4
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->_argTypes:[Ljava/lang/Class;

    .line 58
    .local v3, "otherArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->_argTypes:[Ljava/lang/Class;

    array-length v1, v8

    .line 59
    .local v1, "len":I
    array-length v8, v3

    if-eq v8, v1, :cond_5

    move v6, v7

    .line 60
    goto :goto_0

    .line 62
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 63
    aget-object v4, v3, v0

    .line 64
    .local v4, "type1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->_argTypes:[Ljava/lang/Class;

    aget-object v5, v8, v0

    .line 65
    .local v5, "type2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v4, v5, :cond_6

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v6, v7

    .line 85
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->_argTypes:[Ljava/lang/Class;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->_argTypes:[Ljava/lang/Class;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-args)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
