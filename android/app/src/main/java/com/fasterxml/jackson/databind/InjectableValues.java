package com.fasterxml.jackson.databind;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public abstract class InjectableValues {

    public static class Std extends InjectableValues implements Serializable {
        private static final long serialVersionUID = 1;
        protected final Map<String, Object> _values;

        public Std() {
            this(new HashMap());
        }

        public Std(Map<String, Object> map) {
            this._values = map;
        }

        public Std addValue(Class<?> cls, Object obj) {
            this._values.put(cls.getName(), obj);
            return this;
        }

        public Std addValue(String str, Object obj) {
            this._values.put(str, obj);
            return this;
        }

        public Object findInjectableValue(Object obj, DeserializationContext deserializationContext, BeanProperty beanProperty, Object obj2) {
            if (obj instanceof String) {
                String str = (String) obj;
                Object obj3 = this._values.get(str);
                if (obj3 != null || this._values.containsKey(str)) {
                    return obj3;
                }
                throw new IllegalArgumentException("No injectable id with value '" + str + "' found (for property '" + beanProperty.getName() + "')");
            }
            throw new IllegalArgumentException("Unrecognized inject value id type (" + (obj == null ? "[null]" : obj.getClass().getName()) + "), expecting String");
        }
    }

    public abstract Object findInjectableValue(Object obj, DeserializationContext deserializationContext, BeanProperty beanProperty, Object obj2);
}
