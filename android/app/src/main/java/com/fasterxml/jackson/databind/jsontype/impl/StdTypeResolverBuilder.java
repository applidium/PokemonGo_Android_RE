package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo.As;
import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.util.Collection;
import spacemadness.com.lunarconsole.C1401R;

public class StdTypeResolverBuilder implements TypeResolverBuilder<StdTypeResolverBuilder> {
    protected TypeIdResolver _customIdResolver;
    protected Class<?> _defaultImpl;
    protected Id _idType;
    protected As _includeAs;
    protected boolean _typeIdVisible;
    protected String _typeProperty;

    /* renamed from: com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder.1 */
    static /* synthetic */ class C01571 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As;
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id;

        static {
            $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id = new int[Id.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[Id.CLASS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[Id.MINIMAL_CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[Id.NAME.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[Id.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[Id.CUSTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As = new int[As.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[As.WRAPPER_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[As.PROPERTY.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[As.WRAPPER_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[As.EXTERNAL_PROPERTY.ordinal()] = 4;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[As.EXISTING_PROPERTY.ordinal()] = 5;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    public StdTypeResolverBuilder() {
        this._typeIdVisible = false;
    }

    public static StdTypeResolverBuilder noTypeInfoBuilder() {
        return new StdTypeResolverBuilder().init(Id.NONE, null);
    }

    public TypeDeserializer buildTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, Collection<NamedType> collection) {
        if (this._idType == Id.NONE) {
            return null;
        }
        TypeIdResolver idResolver = idResolver(deserializationConfig, javaType, collection, false, true);
        switch (C01571.$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[this._includeAs.ordinal()]) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return new AsArrayTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, this._defaultImpl);
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
            case Place.TYPE_ART_GALLERY /*5*/:
                return new AsPropertyTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, this._defaultImpl, this._includeAs);
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return new AsWrapperTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, this._defaultImpl);
            case Place.TYPE_AQUARIUM /*4*/:
                return new AsExternalTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, this._defaultImpl);
            default:
                throw new IllegalStateException("Do not know how to construct standard type serializer for inclusion type: " + this._includeAs);
        }
    }

    public TypeSerializer buildTypeSerializer(SerializationConfig serializationConfig, JavaType javaType, Collection<NamedType> collection) {
        if (this._idType == Id.NONE) {
            return null;
        }
        TypeIdResolver idResolver = idResolver(serializationConfig, javaType, collection, true, false);
        switch (C01571.$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[this._includeAs.ordinal()]) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return new AsArrayTypeSerializer(idResolver, null);
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                return new AsPropertyTypeSerializer(idResolver, null, this._typeProperty);
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return new AsWrapperTypeSerializer(idResolver, null);
            case Place.TYPE_AQUARIUM /*4*/:
                return new AsExternalTypeSerializer(idResolver, null, this._typeProperty);
            case Place.TYPE_ART_GALLERY /*5*/:
                return new AsExistingPropertyTypeSerializer(idResolver, null, this._typeProperty);
            default:
                throw new IllegalStateException("Do not know how to construct standard type serializer for inclusion type: " + this._includeAs);
        }
    }

    public StdTypeResolverBuilder defaultImpl(Class<?> cls) {
        this._defaultImpl = cls;
        return this;
    }

    public Class<?> getDefaultImpl() {
        return this._defaultImpl;
    }

    public String getTypeProperty() {
        return this._typeProperty;
    }

    protected TypeIdResolver idResolver(MapperConfig<?> mapperConfig, JavaType javaType, Collection<NamedType> collection, boolean z, boolean z2) {
        if (this._customIdResolver != null) {
            return this._customIdResolver;
        }
        if (this._idType == null) {
            throw new IllegalStateException("Can not build, 'init()' not yet called");
        }
        switch (C01571.$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id[this._idType.ordinal()]) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return new ClassNameIdResolver(javaType, mapperConfig.getTypeFactory());
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                return new MinimalClassNameIdResolver(javaType, mapperConfig.getTypeFactory());
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return TypeNameIdResolver.construct(mapperConfig, javaType, collection, z, z2);
            case Place.TYPE_AQUARIUM /*4*/:
                return null;
            default:
                throw new IllegalStateException("Do not know how to construct standard type id resolver for idType: " + this._idType);
        }
    }

    public StdTypeResolverBuilder inclusion(As as) {
        if (as == null) {
            throw new IllegalArgumentException("includeAs can not be null");
        }
        this._includeAs = as;
        return this;
    }

    public StdTypeResolverBuilder init(Id id, TypeIdResolver typeIdResolver) {
        if (id == null) {
            throw new IllegalArgumentException("idType can not be null");
        }
        this._idType = id;
        this._customIdResolver = typeIdResolver;
        this._typeProperty = id.getDefaultPropertyName();
        return this;
    }

    public boolean isTypeIdVisible() {
        return this._typeIdVisible;
    }

    public StdTypeResolverBuilder typeIdVisibility(boolean z) {
        this._typeIdVisible = z;
        return this;
    }

    public StdTypeResolverBuilder typeProperty(String str) {
        if (str == null || str.length() == 0) {
            str = this._idType.getDefaultPropertyName();
        }
        this._typeProperty = str;
        return this;
    }
}
