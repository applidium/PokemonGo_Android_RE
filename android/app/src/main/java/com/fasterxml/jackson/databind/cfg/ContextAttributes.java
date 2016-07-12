package com.fasterxml.jackson.databind.cfg;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public abstract class ContextAttributes {

    public static class Impl extends ContextAttributes implements Serializable {
        protected static final Impl EMPTY;
        protected static final Object NULL_SURROGATE;
        private static final long serialVersionUID = 1;
        protected transient Map<Object, Object> _nonShared;
        protected final Map<Object, Object> _shared;

        static {
            EMPTY = new Impl(Collections.emptyMap());
            NULL_SURROGATE = new Object();
        }

        protected Impl(Map<Object, Object> map) {
            this._shared = map;
            this._nonShared = null;
        }

        protected Impl(Map<Object, Object> map, Map<Object, Object> map2) {
            this._shared = map;
            this._nonShared = map2;
        }

        private Map<Object, Object> _copy(Map<Object, Object> map) {
            return new HashMap(map);
        }

        public static ContextAttributes getEmpty() {
            return EMPTY;
        }

        public Object getAttribute(Object obj) {
            if (this._nonShared != null) {
                Object obj2 = this._nonShared.get(obj);
                if (obj2 != null) {
                    return obj2 == NULL_SURROGATE ? null : obj2;
                }
            }
            return this._shared.get(obj);
        }

        protected ContextAttributes nonSharedInstance(Object obj, Object obj2) {
            Map hashMap = new HashMap();
            if (obj2 == null) {
                obj2 = NULL_SURROGATE;
            }
            hashMap.put(obj, obj2);
            return new Impl(this._shared, hashMap);
        }

        public ContextAttributes withPerCallAttribute(Object obj, Object obj2) {
            if (obj2 == null) {
                if (!this._shared.containsKey(obj)) {
                    return this;
                }
                obj2 = NULL_SURROGATE;
            }
            if (this._nonShared == null) {
                return nonSharedInstance(obj, obj2);
            }
            this._nonShared.put(obj, obj2);
            return this;
        }

        public ContextAttributes withSharedAttribute(Object obj, Object obj2) {
            Map hashMap = this == EMPTY ? new HashMap(8) : _copy(this._shared);
            hashMap.put(obj, obj2);
            return new Impl(hashMap);
        }

        public ContextAttributes withSharedAttributes(Map<Object, Object> map) {
            return new Impl(map);
        }

        public ContextAttributes withoutSharedAttribute(Object obj) {
            if (this._shared.isEmpty() || !this._shared.containsKey(obj)) {
                return this;
            }
            if (this._shared.size() == 1) {
                return EMPTY;
            }
            Map _copy = _copy(this._shared);
            _copy.remove(obj);
            return new Impl(_copy);
        }
    }

    public static ContextAttributes getEmpty() {
        return Impl.getEmpty();
    }

    public abstract Object getAttribute(Object obj);

    public abstract ContextAttributes withPerCallAttribute(Object obj, Object obj2);

    public abstract ContextAttributes withSharedAttribute(Object obj, Object obj2);

    public abstract ContextAttributes withSharedAttributes(Map<Object, Object> map);

    public abstract ContextAttributes withoutSharedAttribute(Object obj);
}
