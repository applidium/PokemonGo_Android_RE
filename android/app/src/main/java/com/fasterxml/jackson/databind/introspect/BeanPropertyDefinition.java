package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.util.EmptyIterator;
import com.fasterxml.jackson.databind.util.Named;
import java.util.Iterator;

public abstract class BeanPropertyDefinition implements Named {
    public boolean couldDeserialize() {
        return getMutator() != null;
    }

    public boolean couldSerialize() {
        return getAccessor() != null;
    }

    public Include findInclusion() {
        return null;
    }

    public ObjectIdInfo findObjectIdInfo() {
        return null;
    }

    public ReferenceProperty findReferenceType() {
        return null;
    }

    public Class<?>[] findViews() {
        return null;
    }

    public abstract AnnotatedMember getAccessor();

    public abstract AnnotatedParameter getConstructorParameter();

    public Iterator<AnnotatedParameter> getConstructorParameters() {
        return EmptyIterator.instance();
    }

    public abstract AnnotatedField getField();

    public abstract PropertyName getFullName();

    public abstract AnnotatedMethod getGetter();

    public abstract String getInternalName();

    public abstract PropertyMetadata getMetadata();

    public abstract AnnotatedMember getMutator();

    public abstract String getName();

    public abstract AnnotatedMember getNonConstructorMutator();

    public abstract AnnotatedMember getPrimaryMember();

    public abstract AnnotatedMethod getSetter();

    public abstract PropertyName getWrapperName();

    public abstract boolean hasConstructorParameter();

    public abstract boolean hasField();

    public abstract boolean hasGetter();

    public boolean hasName(PropertyName propertyName) {
        return getFullName().equals(propertyName);
    }

    public abstract boolean hasSetter();

    public abstract boolean isExplicitlyIncluded();

    public boolean isExplicitlyNamed() {
        return isExplicitlyIncluded();
    }

    public boolean isRequired() {
        PropertyMetadata metadata = getMetadata();
        return metadata != null && metadata.isRequired();
    }

    public boolean isTypeId() {
        return false;
    }

    public abstract BeanPropertyDefinition withName(PropertyName propertyName);

    public abstract BeanPropertyDefinition withSimpleName(String str);
}
