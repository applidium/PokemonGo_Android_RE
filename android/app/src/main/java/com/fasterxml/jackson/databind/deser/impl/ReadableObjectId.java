package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator.IdKey;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;

public class ReadableObjectId {
    protected final IdKey _key;
    protected LinkedList<Referring> _referringProperties;
    protected ObjectIdResolver _resolver;
    @Deprecated
    public final Object id;
    @Deprecated
    public Object item;

    public static abstract class Referring {
        private final Class<?> _beanType;
        private final UnresolvedForwardReference _reference;

        public Referring(UnresolvedForwardReference unresolvedForwardReference, Class<?> cls) {
            this._reference = unresolvedForwardReference;
            this._beanType = cls;
        }

        public Class<?> getBeanType() {
            return this._beanType;
        }

        public JsonLocation getLocation() {
            return this._reference.getLocation();
        }

        public abstract void handleResolvedForwardReference(Object obj, Object obj2) throws IOException;

        public boolean hasId(Object obj) {
            return obj.equals(this._reference.getUnresolvedId());
        }
    }

    public ReadableObjectId(IdKey idKey) {
        this._key = idKey;
        this.id = idKey.key;
    }

    @Deprecated
    public ReadableObjectId(Object obj) {
        this.id = obj;
        this._key = null;
    }

    public void appendReferring(Referring referring) {
        if (this._referringProperties == null) {
            this._referringProperties = new LinkedList();
        }
        this._referringProperties.add(referring);
    }

    public void bindItem(Object obj) throws IOException {
        this._resolver.bindItem(this._key, obj);
        this.item = obj;
        if (this._referringProperties != null) {
            Iterator it = this._referringProperties.iterator();
            this._referringProperties = null;
            while (it.hasNext()) {
                ((Referring) it.next()).handleResolvedForwardReference(this.id, obj);
            }
        }
    }

    public IdKey getKey() {
        return this._key;
    }

    public boolean hasReferringProperties() {
        return (this._referringProperties == null || this._referringProperties.isEmpty()) ? false : true;
    }

    public Iterator<Referring> referringProperties() {
        return this._referringProperties == null ? Collections.emptyList().iterator() : this._referringProperties.iterator();
    }

    public Object resolve() {
        Object resolveId = this._resolver.resolveId(this._key);
        this.item = resolveId;
        return resolveId;
    }

    public void setResolver(ObjectIdResolver objectIdResolver) {
        this._resolver = objectIdResolver;
    }

    public String toString() {
        return String.valueOf(this._key);
    }

    public boolean tryToResolveUnresolved(DeserializationContext deserializationContext) {
        return false;
    }
}
