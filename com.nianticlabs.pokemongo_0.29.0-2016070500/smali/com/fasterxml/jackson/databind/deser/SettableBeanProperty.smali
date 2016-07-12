.class public abstract Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.super Ljava/lang/Object;
.source "SettableBeanProperty.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/BeanProperty;
.implements Ljava/io/Serializable;


# static fields
.field protected static final MISSING_VALUE_DESERIALIZER:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final transient _contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

.field protected _managedReferenceName:Ljava/lang/String;

.field protected final _metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

.field protected _objectIdInfo:Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

.field protected final _propName:Lcom/fasterxml/jackson/databind/PropertyName;

.field protected _propertyIndex:I

.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

.field protected _viewMatcher:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

.field protected final _wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/FailingDeserializer;

    const-string v1, "No _valueDeserializer assigned"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/FailingDeserializer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->MISSING_VALUE_DESERIALIZER:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 2
    .param p1, "propName"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "metadata"    # Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/PropertyMetadata;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    .line 187
    if-nez p1, :cond_0

    .line 188
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->NO_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 192
    :goto_0
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 193
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 194
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 195
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 196
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_viewMatcher:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    .line 197
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 198
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 199
    return-void

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->internSimpleName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propName:Lcom/fasterxml/jackson/databind/PropertyName;

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V
    .locals 1
    .param p1, "propName"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "wrapper"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p4, "typeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .param p5, "contextAnnotations"    # Lcom/fasterxml/jackson/databind/util/Annotations;
    .param p6, "metadata"    # Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    .line 159
    if-nez p1, :cond_1

    .line 160
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->NO_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 164
    :goto_0
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 165
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 166
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 167
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_viewMatcher:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    .line 171
    if-eqz p4, :cond_0

    .line 172
    invoke-virtual {p4, p0}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object p4

    .line 174
    :cond_0
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 175
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->MISSING_VALUE_DESERIALIZER:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 176
    return-void

    .line 162
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->internSimpleName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propName:Lcom/fasterxml/jackson/databind/PropertyName;

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    .line 206
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propName:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 207
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 208
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 209
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 210
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 211
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 212
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 213
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    .line 214
    iget v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    .line 215
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_viewMatcher:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_viewMatcher:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    .line 216
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    .line 224
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propName:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 225
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 226
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 227
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 228
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 229
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 230
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    .line 231
    iget v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    .line 233
    if-nez p2, :cond_0

    .line 234
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->MISSING_VALUE_DESERIALIZER:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 238
    :goto_0
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_viewMatcher:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_viewMatcher:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    .line 239
    return-void

    .line 236
    :cond_0
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p2, "newName"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    .line 251
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 252
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 253
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 254
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 255
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 256
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 257
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 258
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    .line 259
    iget v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    .line 260
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_viewMatcher:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_viewMatcher:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    .line 261
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p2, "newName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v0, p2}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 244
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;)V
    .locals 7
    .param p1, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "typeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .param p4, "contextAnnotations"    # Lcom/fasterxml/jackson/databind/util/Annotations;

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v6

    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 139
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Z)V
    .locals 7
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "wrapper"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p4, "typeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .param p5, "contextAnnotations"    # Lcom/fasterxml/jackson/databind/util/Annotations;
    .param p6, "isRequired"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 146
    new-instance v1, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    invoke-static {p6, v0, v0, v0}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->construct(ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v6

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 148
    return-void
.end method


# virtual methods
.method protected _throwAsIOE(Ljava/lang/Exception;)Ljava/io/IOException;
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 554
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 556
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_0
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 557
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 560
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v0, p1

    .line 561
    .local v0, "th":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 562
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 564
    :cond_2
    new-instance v1, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected _throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    instance-of v3, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v3, :cond_2

    .line 536
    if-nez p2, :cond_0

    const-string v0, "[NULL]"

    .line 537
    .local v0, "actType":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Problem deserializing property \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 538
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string v3, "\' (expected type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 539
    const-string v3, "; actual type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "origMsg":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 542
    const-string v3, ", problem: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :goto_1
    new-instance v3, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    throw v3

    .line 536
    .end local v0    # "actType":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "origMsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 544
    .restart local v0    # "actType":Ljava/lang/String;
    .restart local v1    # "msg":Ljava/lang/StringBuilder;
    .restart local v2    # "origMsg":Ljava/lang/String;
    :cond_1
    const-string v3, " (no error message provided)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 548
    .end local v0    # "actType":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "origMsg":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_throwAsIOE(Ljava/lang/Exception;)Ljava/io/IOException;

    .line 549
    return-void
.end method

.method public assignIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 321
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' already had index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), trying to assign "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    .line 325
    return-void
.end method

.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;)V
    .locals 1
    .param p1, "objectVisitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->isRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;->property(Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;->optionalProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)V

    goto :goto_0
.end method

.method public final deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 512
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 514
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 520
    :goto_0
    return-object v1

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-eqz v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    invoke-virtual {v1, p1, p2, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public findFormatOverrides(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 2
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 370
    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    .line 372
    .local v0, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    .line 376
    .end local v0    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method public getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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
    .line 365
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/util/Annotations;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorIndex()I
    .locals 1

    .prologue
    .line 441
    const/4 v0, -0x1

    return v0
.end method

.method protected final getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propName:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object v0
.end method

.method public getInjectableValueId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return-object v0
.end method

.method public getManagedReferenceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method

.method public getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_objectIdInfo:Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    return-object v0
.end method

.method public getPropertyIndex()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propertyIndex:I

    return v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 412
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->MISSING_VALUE_DESERIALIZER:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-ne v0, v1, :cond_0

    .line 413
    const/4 v0, 0x0

    .line 415
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    return-object v0
.end method

.method public getValueTypeDeserializer()Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    return-object v0
.end method

.method public getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object v0
.end method

.method public hasValueDeserializer()Z
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->MISSING_VALUE_DESERIALIZER:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValueTypeDeserializer()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasViews()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_viewMatcher:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->isRequired()Z

    move-result v0

    return v0
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setManagedReferenceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)V
    .locals 0
    .param p1, "objectIdInfo"    # Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_objectIdInfo:Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .line 307
    return-void
.end method

.method public setViews([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_viewMatcher:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ViewMatcher;->construct([Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_viewMatcher:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visibleInView(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_viewMatcher:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_viewMatcher:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/ViewMatcher;->isVisibleForView(Ljava/lang/Class;)Z

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

.method public abstract withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.end method

.method public withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1
    .param p1, "simpleName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 298
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    return-object v0
.end method

.method public withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 2
    .param p1, "simpleName"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v1, :cond_0

    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "n":Lcom/fasterxml/jackson/databind/PropertyName;
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-ne v0, v1, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :goto_1
    return-object p0

    .line 291
    .end local v0    # "n":Lcom/fasterxml/jackson/databind/PropertyName;
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_propName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/PropertyName;->withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    goto :goto_0

    .line 293
    .restart local v0    # "n":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p0

    goto :goto_1
.end method

.method public abstract withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;"
        }
    .end annotation
.end method
