package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.util.InternCache;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;

public class PropertyName implements Serializable {
    public static final PropertyName NO_NAME;
    public static final PropertyName USE_DEFAULT;
    private static final String _NO_NAME = "";
    private static final String _USE_DEFAULT = "";
    private static final long serialVersionUID = 1;
    protected SerializableString _encodedSimple;
    protected final String _namespace;
    protected final String _simpleName;

    static {
        USE_DEFAULT = new PropertyName(_USE_DEFAULT, null);
        NO_NAME = new PropertyName(new String(_USE_DEFAULT), null);
    }

    public PropertyName(String str) {
        this(str, null);
    }

    public PropertyName(String str, String str2) {
        if (str == null) {
            str = _USE_DEFAULT;
        }
        this._simpleName = str;
        this._namespace = str2;
    }

    public static PropertyName construct(String str) {
        return (str == null || str.length() == 0) ? USE_DEFAULT : new PropertyName(InternCache.instance.intern(str), null);
    }

    public static PropertyName construct(String str, String str2) {
        if (str == null) {
            str = _USE_DEFAULT;
        }
        return (str2 == null && str.length() == 0) ? USE_DEFAULT : new PropertyName(InternCache.instance.intern(str), str2);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r5) {
        /*
        r4 = this;
        r0 = 1;
        r1 = 0;
        if (r5 != r4) goto L_0x0005;
    L_0x0004:
        return r0;
    L_0x0005:
        if (r5 == 0) goto L_0x003a;
    L_0x0007:
        r2 = r5.getClass();
        r3 = r4.getClass();
        if (r2 != r3) goto L_0x003a;
    L_0x0011:
        r5 = (com.fasterxml.jackson.databind.PropertyName) r5;
        r2 = r4._simpleName;
        if (r2 != 0) goto L_0x0025;
    L_0x0017:
        r2 = r5._simpleName;
        if (r2 != 0) goto L_0x003a;
    L_0x001b:
        r2 = r4._namespace;
        if (r2 != 0) goto L_0x0031;
    L_0x001f:
        r2 = r5._namespace;
        if (r2 == 0) goto L_0x0004;
    L_0x0023:
        r0 = r1;
        goto L_0x0004;
    L_0x0025:
        r2 = r4._simpleName;
        r3 = r5._simpleName;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x001b;
    L_0x002f:
        r0 = r1;
        goto L_0x0004;
    L_0x0031:
        r0 = r4._namespace;
        r1 = r5._namespace;
        r0 = r0.equals(r1);
        goto L_0x0004;
    L_0x003a:
        r0 = r1;
        goto L_0x0004;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.PropertyName.equals(java.lang.Object):boolean");
    }

    public String getNamespace() {
        return this._namespace;
    }

    public String getSimpleName() {
        return this._simpleName;
    }

    public boolean hasNamespace() {
        return this._namespace != null;
    }

    public boolean hasSimpleName() {
        return this._simpleName.length() > 0;
    }

    public boolean hasSimpleName(String str) {
        return str == null ? this._simpleName == null : str.equals(this._simpleName);
    }

    public int hashCode() {
        return this._namespace == null ? this._simpleName.hashCode() : this._namespace.hashCode() ^ this._simpleName.hashCode();
    }

    public PropertyName internSimpleName() {
        if (this._simpleName.length() == 0) {
            return this;
        }
        String intern = InternCache.instance.intern(this._simpleName);
        return intern != this._simpleName ? new PropertyName(intern, this._namespace) : this;
    }

    public boolean isEmpty() {
        return this._namespace == null && this._simpleName.isEmpty();
    }

    protected Object readResolve() {
        return (this._simpleName == null || _USE_DEFAULT.equals(this._simpleName)) ? USE_DEFAULT : (this._simpleName.equals(_USE_DEFAULT) && this._namespace == null) ? NO_NAME : this;
    }

    public SerializableString simpleAsEncoded(MapperConfig<?> mapperConfig) {
        SerializableString serializableString = this._encodedSimple;
        if (serializableString == null) {
            serializableString = mapperConfig == null ? new SerializedString(this._simpleName) : mapperConfig.compileString(this._simpleName);
            this._encodedSimple = serializableString;
        }
        return serializableString;
    }

    public String toString() {
        return this._namespace == null ? this._simpleName : "{" + this._namespace + "}" + this._simpleName;
    }

    public PropertyName withNamespace(String str) {
        if (str == null) {
            if (this._namespace == null) {
                return this;
            }
        } else if (str.equals(this._namespace)) {
            return this;
        }
        return new PropertyName(this._simpleName, str);
    }

    public PropertyName withSimpleName(String str) {
        if (str == null) {
            str = _USE_DEFAULT;
        }
        return str.equals(this._simpleName) ? this : new PropertyName(str, this._namespace);
    }
}
