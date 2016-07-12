.class public Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers;
.super Lcom/fasterxml/jackson/databind/deser/Deserializers$Base;
.source "CoreXMLDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$Std;
    }
.end annotation


# static fields
.field protected static final TYPE_DURATION:I = 0x1

.field protected static final TYPE_G_CALENDAR:I = 0x2

.field protected static final TYPE_QNAME:I = 0x3

.field static final _dataTypeFactory:Ljavax/xml/datatype/DatatypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    :try_start_0
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v1

    sput-object v1, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers;->_dataTypeFactory:Ljavax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/Deserializers$Base;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public findBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 41
    .local v0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljavax/xml/namespace/QName;

    if-ne v0, v1, :cond_0

    .line 42
    new-instance v1, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$Std;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$Std;-><init>(Ljava/lang/Class;I)V

    .line 50
    :goto_0
    return-object v1

    .line 44
    :cond_0
    const-class v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-ne v0, v1, :cond_1

    .line 45
    new-instance v1, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$Std;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$Std;-><init>(Ljava/lang/Class;I)V

    goto :goto_0

    .line 47
    :cond_1
    const-class v1, Ljavax/xml/datatype/Duration;

    if-ne v0, v1, :cond_2

    .line 48
    new-instance v1, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$Std;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$Std;-><init>(Ljava/lang/Class;I)V

    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
