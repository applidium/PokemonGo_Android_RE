package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty.Access;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.util.EmptyIterator;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import spacemadness.com.lunarconsole.C1401R;

public class POJOPropertyBuilder extends BeanPropertyDefinition implements Comparable<POJOPropertyBuilder> {
    protected final AnnotationIntrospector _annotationIntrospector;
    protected Linked<AnnotatedParameter> _ctorParameters;
    protected Linked<AnnotatedField> _fields;
    protected final boolean _forSerialization;
    protected Linked<AnnotatedMethod> _getters;
    protected final PropertyName _internalName;
    protected final PropertyName _name;
    protected Linked<AnnotatedMethod> _setters;

    /* renamed from: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.10 */
    static /* synthetic */ class AnonymousClass10 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access;

        static {
            $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access = new int[Access.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access[Access.READ_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access[Access.READ_WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access[Access.WRITE_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access[Access.AUTO.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private interface WithMember<T> {
        T withMember(AnnotatedMember annotatedMember);
    }

    /* renamed from: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.1 */
    class C01461 implements WithMember<Class<?>[]> {
        C01461() {
        }

        public Class<?>[] withMember(AnnotatedMember annotatedMember) {
            return POJOPropertyBuilder.this._annotationIntrospector.findViews(annotatedMember);
        }
    }

    /* renamed from: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.2 */
    class C01472 implements WithMember<ReferenceProperty> {
        C01472() {
        }

        public ReferenceProperty withMember(AnnotatedMember annotatedMember) {
            return POJOPropertyBuilder.this._annotationIntrospector.findReferenceType(annotatedMember);
        }
    }

    /* renamed from: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.3 */
    class C01483 implements WithMember<Boolean> {
        C01483() {
        }

        public Boolean withMember(AnnotatedMember annotatedMember) {
            return POJOPropertyBuilder.this._annotationIntrospector.isTypeId(annotatedMember);
        }
    }

    /* renamed from: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.4 */
    class C01494 implements WithMember<Boolean> {
        C01494() {
        }

        public Boolean withMember(AnnotatedMember annotatedMember) {
            return POJOPropertyBuilder.this._annotationIntrospector.hasRequiredMarker(annotatedMember);
        }
    }

    /* renamed from: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.5 */
    class C01505 implements WithMember<String> {
        C01505() {
        }

        public String withMember(AnnotatedMember annotatedMember) {
            return POJOPropertyBuilder.this._annotationIntrospector.findPropertyDescription(annotatedMember);
        }
    }

    /* renamed from: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.6 */
    class C01516 implements WithMember<Integer> {
        C01516() {
        }

        public Integer withMember(AnnotatedMember annotatedMember) {
            return POJOPropertyBuilder.this._annotationIntrospector.findPropertyIndex(annotatedMember);
        }
    }

    /* renamed from: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.7 */
    class C01527 implements WithMember<String> {
        C01527() {
        }

        public String withMember(AnnotatedMember annotatedMember) {
            return POJOPropertyBuilder.this._annotationIntrospector.findPropertyDefaultValue(annotatedMember);
        }
    }

    /* renamed from: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.8 */
    class C01538 implements WithMember<ObjectIdInfo> {
        C01538() {
        }

        public ObjectIdInfo withMember(AnnotatedMember annotatedMember) {
            ObjectIdInfo findObjectIdInfo = POJOPropertyBuilder.this._annotationIntrospector.findObjectIdInfo(annotatedMember);
            return findObjectIdInfo != null ? POJOPropertyBuilder.this._annotationIntrospector.findObjectReferenceInfo(annotatedMember, findObjectIdInfo) : findObjectIdInfo;
        }
    }

    /* renamed from: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.9 */
    class C01549 implements WithMember<Access> {
        C01549() {
        }

        public Access withMember(AnnotatedMember annotatedMember) {
            return POJOPropertyBuilder.this._annotationIntrospector.findPropertyAccess(annotatedMember);
        }
    }

    protected static final class Linked<T> {
        public final boolean isMarkedIgnored;
        public final boolean isNameExplicit;
        public final boolean isVisible;
        public final PropertyName name;
        public final Linked<T> next;
        public final T value;

        public Linked(T t, Linked<T> linked, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
            this.value = t;
            this.next = linked;
            PropertyName propertyName2 = (propertyName == null || propertyName.isEmpty()) ? null : propertyName;
            this.name = propertyName2;
            if (z) {
                if (this.name == null) {
                    throw new IllegalArgumentException("Can not pass true for 'explName' if name is null/empty");
                } else if (!propertyName.hasSimpleName()) {
                    z = false;
                }
            }
            this.isNameExplicit = z;
            this.isVisible = z2;
            this.isMarkedIgnored = z3;
        }

        protected Linked<T> append(Linked<T> linked) {
            return this.next == null ? withNext(linked) : withNext(this.next.append(linked));
        }

        public String toString() {
            String str = this.value.toString() + "[visible=" + this.isVisible + ",ignore=" + this.isMarkedIgnored + ",explicitName=" + this.isNameExplicit + "]";
            return this.next != null ? str + ", " + this.next.toString() : str;
        }

        public Linked<T> trimByVisibility() {
            if (this.next == null) {
                return this;
            }
            Linked<T> trimByVisibility = this.next.trimByVisibility();
            if (this.name != null) {
                return trimByVisibility.name == null ? withNext(null) : withNext(trimByVisibility);
            } else {
                if (trimByVisibility.name == null) {
                    if (this.isVisible == trimByVisibility.isVisible) {
                        return withNext(trimByVisibility);
                    }
                    if (this.isVisible) {
                        return withNext(null);
                    }
                }
                return trimByVisibility;
            }
        }

        public Linked<T> withNext(Linked<T> linked) {
            if (linked == this.next) {
                return this;
            }
            return new Linked(this.value, linked, this.name, this.isNameExplicit, this.isVisible, this.isMarkedIgnored);
        }

        public Linked<T> withValue(T t) {
            if (t == this.value) {
                return this;
            }
            return new Linked(t, this.next, this.name, this.isNameExplicit, this.isVisible, this.isMarkedIgnored);
        }

        public Linked<T> withoutIgnored() {
            if (this.isMarkedIgnored) {
                return this.next == null ? null : this.next.withoutIgnored();
            } else {
                if (this.next == null) {
                    return this;
                }
                Linked withoutIgnored = this.next.withoutIgnored();
                return withoutIgnored != this.next ? withNext(withoutIgnored) : this;
            }
        }

        public Linked<T> withoutNext() {
            return this.next == null ? this : new Linked(this.value, null, this.name, this.isNameExplicit, this.isVisible, this.isMarkedIgnored);
        }

        public Linked<T> withoutNonVisible() {
            Linked<T> withoutNonVisible = this.next == null ? null : this.next.withoutNonVisible();
            return this.isVisible ? withNext(withoutNonVisible) : withoutNonVisible;
        }
    }

    protected static class MemberIterator<T extends AnnotatedMember> implements Iterator<T> {
        private Linked<T> next;

        public MemberIterator(Linked<T> linked) {
            this.next = linked;
        }

        public boolean hasNext() {
            return this.next != null;
        }

        public T next() {
            if (this.next == null) {
                throw new NoSuchElementException();
            }
            AnnotatedMember annotatedMember = (AnnotatedMember) this.next.value;
            this.next = this.next.next;
            return annotatedMember;
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public POJOPropertyBuilder(PropertyName propertyName, AnnotationIntrospector annotationIntrospector, boolean z) {
        this(propertyName, propertyName, annotationIntrospector, z);
    }

    protected POJOPropertyBuilder(PropertyName propertyName, PropertyName propertyName2, AnnotationIntrospector annotationIntrospector, boolean z) {
        this._internalName = propertyName;
        this._name = propertyName2;
        this._annotationIntrospector = annotationIntrospector;
        this._forSerialization = z;
    }

    public POJOPropertyBuilder(POJOPropertyBuilder pOJOPropertyBuilder, PropertyName propertyName) {
        this._internalName = pOJOPropertyBuilder._internalName;
        this._name = propertyName;
        this._annotationIntrospector = pOJOPropertyBuilder._annotationIntrospector;
        this._fields = pOJOPropertyBuilder._fields;
        this._ctorParameters = pOJOPropertyBuilder._ctorParameters;
        this._getters = pOJOPropertyBuilder._getters;
        this._setters = pOJOPropertyBuilder._setters;
        this._forSerialization = pOJOPropertyBuilder._forSerialization;
    }

    private <T> boolean _anyExplicitNames(Linked<T> linked) {
        Linked linked2;
        while (linked2 != null) {
            if (linked2.name != null && linked2.isNameExplicit) {
                return true;
            }
            linked2 = linked2.next;
        }
        return false;
    }

    private <T> boolean _anyExplicits(Linked<T> linked) {
        Linked linked2;
        while (linked2 != null) {
            if (linked2.name != null && linked2.name.hasSimpleName()) {
                return true;
            }
            linked2 = linked2.next;
        }
        return false;
    }

    private <T> boolean _anyIgnorals(Linked<T> linked) {
        Linked linked2;
        while (linked2 != null) {
            if (linked2.isMarkedIgnored) {
                return true;
            }
            linked2 = linked2.next;
        }
        return false;
    }

    private <T> boolean _anyVisible(Linked<T> linked) {
        Linked linked2;
        while (linked2 != null) {
            if (linked2.isVisible) {
                return true;
            }
            linked2 = linked2.next;
        }
        return false;
    }

    private <T extends AnnotatedMember> Linked<T> _applyAnnotations(Linked<T> linked, AnnotationMap annotationMap) {
        Linked withNext;
        AnnotatedMember annotatedMember = (AnnotatedMember) ((AnnotatedMember) linked.value).withAnnotations(annotationMap);
        if (linked.next != null) {
            withNext = linked.withNext(_applyAnnotations(linked.next, annotationMap));
        }
        return withNext.withValue(annotatedMember);
    }

    private void _explode(Collection<PropertyName> collection, Map<PropertyName, POJOPropertyBuilder> map, Linked<?> linked) {
        for (Linked linked2 = linked; linked2 != null; linked2 = linked2.next) {
            PropertyName propertyName = linked2.name;
            if (linked2.isNameExplicit && propertyName != null) {
                POJOPropertyBuilder pOJOPropertyBuilder = (POJOPropertyBuilder) map.get(propertyName);
                if (pOJOPropertyBuilder == null) {
                    pOJOPropertyBuilder = new POJOPropertyBuilder(this._internalName, propertyName, this._annotationIntrospector, this._forSerialization);
                    map.put(propertyName, pOJOPropertyBuilder);
                }
                if (linked == this._fields) {
                    pOJOPropertyBuilder._fields = linked2.withNext(pOJOPropertyBuilder._fields);
                } else if (linked == this._getters) {
                    pOJOPropertyBuilder._getters = linked2.withNext(pOJOPropertyBuilder._getters);
                } else if (linked == this._setters) {
                    pOJOPropertyBuilder._setters = linked2.withNext(pOJOPropertyBuilder._setters);
                } else if (linked == this._ctorParameters) {
                    pOJOPropertyBuilder._ctorParameters = linked2.withNext(pOJOPropertyBuilder._ctorParameters);
                } else {
                    throw new IllegalStateException("Internal error: mismatched accessors, property: " + this);
                }
            } else if (linked2.isVisible) {
                throw new IllegalStateException("Conflicting/ambiguous property name definitions (implicit name '" + this._name + "'): found multiple explicit names: " + collection + ", but also implicit accessor: " + linked2);
            }
        }
    }

    private Set<PropertyName> _findExplicitNames(Linked<? extends AnnotatedMember> linked, Set<PropertyName> set) {
        Set<PropertyName> set2 = set;
        Linked linked2;
        while (linked2 != null) {
            if (linked2.isNameExplicit && linked2.name != null) {
                if (set2 == null) {
                    set2 = new HashSet();
                }
                set2.add(linked2.name);
            }
            linked2 = linked2.next;
        }
        return set2;
    }

    private <T extends AnnotatedMember> AnnotationMap _getAllAnnotations(Linked<T> linked) {
        AnnotationMap allAnnotations = ((AnnotatedMember) linked.value).getAllAnnotations();
        return linked.next != null ? AnnotationMap.merge(allAnnotations, _getAllAnnotations(linked.next)) : allAnnotations;
    }

    private AnnotationMap _mergeAnnotations(int i, Linked<? extends AnnotatedMember>... linkedArr) {
        AnnotationMap _getAllAnnotations = _getAllAnnotations(linkedArr[i]);
        for (int i2 = i + 1; i2 < linkedArr.length; i2++) {
            if (linkedArr[i2] != null) {
                return AnnotationMap.merge(_getAllAnnotations, _mergeAnnotations(i2, linkedArr));
            }
        }
        return _getAllAnnotations;
    }

    private <T> Linked<T> _removeIgnored(Linked<T> linked) {
        return linked == null ? linked : linked.withoutIgnored();
    }

    private <T> Linked<T> _removeNonVisible(Linked<T> linked) {
        return linked == null ? linked : linked.withoutNonVisible();
    }

    private <T> Linked<T> _trimByVisibility(Linked<T> linked) {
        return linked == null ? linked : linked.trimByVisibility();
    }

    private static <T> Linked<T> merge(Linked<T> linked, Linked<T> linked2) {
        return linked == null ? linked2 : linked2 != null ? linked.append(linked2) : linked;
    }

    protected String _findDefaultValue() {
        return (String) fromMemberAnnotations(new C01527());
    }

    protected String _findDescription() {
        return (String) fromMemberAnnotations(new C01505());
    }

    protected Integer _findIndex() {
        return (Integer) fromMemberAnnotations(new C01516());
    }

    protected Boolean _findRequired() {
        return (Boolean) fromMemberAnnotations(new C01494());
    }

    protected int _getterPriority(AnnotatedMethod annotatedMethod) {
        String name = annotatedMethod.getName();
        return (!name.startsWith("get") || name.length() <= 3) ? (!name.startsWith("is") || name.length() <= 2) ? 3 : 2 : 1;
    }

    protected int _setterPriority(AnnotatedMethod annotatedMethod) {
        String name = annotatedMethod.getName();
        return (!name.startsWith("set") || name.length() <= 3) ? 2 : 1;
    }

    public void addAll(POJOPropertyBuilder pOJOPropertyBuilder) {
        this._fields = merge(this._fields, pOJOPropertyBuilder._fields);
        this._ctorParameters = merge(this._ctorParameters, pOJOPropertyBuilder._ctorParameters);
        this._getters = merge(this._getters, pOJOPropertyBuilder._getters);
        this._setters = merge(this._setters, pOJOPropertyBuilder._setters);
    }

    public void addCtor(AnnotatedParameter annotatedParameter, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
        this._ctorParameters = new Linked(annotatedParameter, this._ctorParameters, propertyName, z, z2, z3);
    }

    public void addField(AnnotatedField annotatedField, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
        this._fields = new Linked(annotatedField, this._fields, propertyName, z, z2, z3);
    }

    public void addGetter(AnnotatedMethod annotatedMethod, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
        this._getters = new Linked(annotatedMethod, this._getters, propertyName, z, z2, z3);
    }

    public void addSetter(AnnotatedMethod annotatedMethod, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
        this._setters = new Linked(annotatedMethod, this._setters, propertyName, z, z2, z3);
    }

    public boolean anyIgnorals() {
        return _anyIgnorals(this._fields) || _anyIgnorals(this._getters) || _anyIgnorals(this._setters) || _anyIgnorals(this._ctorParameters);
    }

    public boolean anyVisible() {
        return _anyVisible(this._fields) || _anyVisible(this._getters) || _anyVisible(this._setters) || _anyVisible(this._ctorParameters);
    }

    public int compareTo(POJOPropertyBuilder pOJOPropertyBuilder) {
        if (this._ctorParameters != null) {
            if (pOJOPropertyBuilder._ctorParameters == null) {
                return -1;
            }
        } else if (pOJOPropertyBuilder._ctorParameters != null) {
            return 1;
        }
        return getName().compareTo(pOJOPropertyBuilder.getName());
    }

    public boolean couldDeserialize() {
        return (this._ctorParameters == null && this._setters == null && this._fields == null) ? false : true;
    }

    public boolean couldSerialize() {
        return (this._getters == null && this._fields == null) ? false : true;
    }

    public Collection<POJOPropertyBuilder> explode(Collection<PropertyName> collection) {
        Object hashMap = new HashMap();
        _explode(collection, hashMap, this._fields);
        _explode(collection, hashMap, this._getters);
        _explode(collection, hashMap, this._setters);
        _explode(collection, hashMap, this._ctorParameters);
        return hashMap.values();
    }

    public Access findAccess() {
        return (Access) fromMemberAnnotationsExcept(new C01549(), Access.AUTO);
    }

    public Set<PropertyName> findExplicitNames() {
        Set<PropertyName> _findExplicitNames = _findExplicitNames(this._ctorParameters, _findExplicitNames(this._setters, _findExplicitNames(this._getters, _findExplicitNames(this._fields, null))));
        return _findExplicitNames == null ? Collections.emptySet() : _findExplicitNames;
    }

    public Include findInclusion() {
        if (this._annotationIntrospector == null) {
            return null;
        }
        return this._annotationIntrospector.findSerializationInclusion(getAccessor(), null);
    }

    public ObjectIdInfo findObjectIdInfo() {
        return (ObjectIdInfo) fromMemberAnnotations(new C01538());
    }

    public ReferenceProperty findReferenceType() {
        return (ReferenceProperty) fromMemberAnnotations(new C01472());
    }

    public Class<?>[] findViews() {
        return (Class[]) fromMemberAnnotations(new C01461());
    }

    protected <T> T fromMemberAnnotations(WithMember<T> withMember) {
        T t = null;
        if (this._annotationIntrospector == null) {
            return null;
        }
        if (!this._forSerialization) {
            if (this._ctorParameters != null) {
                t = withMember.withMember((AnnotatedMember) this._ctorParameters.value);
            }
            if (t == null && this._setters != null) {
                t = withMember.withMember((AnnotatedMember) this._setters.value);
            }
        } else if (this._getters != null) {
            t = withMember.withMember((AnnotatedMember) this._getters.value);
        }
        return (t != null || this._fields == null) ? t : withMember.withMember((AnnotatedMember) this._fields.value);
    }

    protected <T> T fromMemberAnnotationsExcept(WithMember<T> withMember, T t) {
        if (this._annotationIntrospector == null) {
            return null;
        }
        T withMember2;
        if (this._forSerialization) {
            if (this._getters != null) {
                withMember2 = withMember.withMember((AnnotatedMember) this._getters.value);
                if (!(withMember2 == null || withMember2 == t)) {
                    return withMember2;
                }
            }
            if (this._fields != null) {
                withMember2 = withMember.withMember((AnnotatedMember) this._fields.value);
                if (!(withMember2 == null || withMember2 == t)) {
                    return withMember2;
                }
            }
            if (this._ctorParameters != null) {
                withMember2 = withMember.withMember((AnnotatedMember) this._ctorParameters.value);
                if (!(withMember2 == null || withMember2 == t)) {
                    return withMember2;
                }
            }
            if (this._setters != null) {
                withMember2 = withMember.withMember((AnnotatedMember) this._setters.value);
                if (!(withMember2 == null || withMember2 == t)) {
                    return withMember2;
                }
            }
            return null;
        }
        if (this._ctorParameters != null) {
            withMember2 = withMember.withMember((AnnotatedMember) this._ctorParameters.value);
            if (!(withMember2 == null || withMember2 == t)) {
                return withMember2;
            }
        }
        if (this._setters != null) {
            withMember2 = withMember.withMember((AnnotatedMember) this._setters.value);
            if (!(withMember2 == null || withMember2 == t)) {
                return withMember2;
            }
        }
        if (this._fields != null) {
            withMember2 = withMember.withMember((AnnotatedMember) this._fields.value);
            if (!(withMember2 == null || withMember2 == t)) {
                return withMember2;
            }
        }
        if (this._getters != null) {
            withMember2 = withMember.withMember((AnnotatedMember) this._getters.value);
            if (!(withMember2 == null || withMember2 == t)) {
                return withMember2;
            }
        }
        return null;
    }

    public AnnotatedMember getAccessor() {
        AnnotatedMember getter = getGetter();
        return getter == null ? getField() : getter;
    }

    public AnnotatedParameter getConstructorParameter() {
        if (this._ctorParameters == null) {
            return null;
        }
        Linked linked = this._ctorParameters;
        while (!(((AnnotatedParameter) linked.value).getOwner() instanceof AnnotatedConstructor)) {
            Linked linked2 = linked.next;
            if (linked2 == null) {
                return (AnnotatedParameter) this._ctorParameters.value;
            }
            linked = linked2;
        }
        return (AnnotatedParameter) linked.value;
    }

    public Iterator<AnnotatedParameter> getConstructorParameters() {
        return this._ctorParameters == null ? EmptyIterator.instance() : new MemberIterator(this._ctorParameters);
    }

    public AnnotatedField getField() {
        if (this._fields == null) {
            return null;
        }
        AnnotatedField annotatedField = (AnnotatedField) this._fields.value;
        Linked linked = this._fields.next;
        AnnotatedField annotatedField2 = annotatedField;
        while (linked != null) {
            annotatedField = (AnnotatedField) linked.value;
            Class declaringClass = annotatedField2.getDeclaringClass();
            Class declaringClass2 = annotatedField.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (!declaringClass.isAssignableFrom(declaringClass2)) {
                    if (declaringClass2.isAssignableFrom(declaringClass)) {
                        annotatedField = annotatedField2;
                    }
                }
                linked = linked.next;
                annotatedField2 = annotatedField;
            }
            throw new IllegalArgumentException("Multiple fields representing property \"" + getName() + "\": " + annotatedField2.getFullName() + " vs " + annotatedField.getFullName());
        }
        return annotatedField2;
    }

    public PropertyName getFullName() {
        return this._name;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.fasterxml.jackson.databind.introspect.AnnotatedMethod getGetter() {
        /*
        r5 = this;
        r2 = r5._getters;
        if (r2 != 0) goto L_0x0006;
    L_0x0004:
        r0 = 0;
    L_0x0005:
        return r0;
    L_0x0006:
        r1 = r2.next;
        if (r1 != 0) goto L_0x000f;
    L_0x000a:
        r0 = r2.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        goto L_0x0005;
    L_0x000f:
        if (r1 == 0) goto L_0x008b;
    L_0x0011:
        r0 = r2.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        r3 = r0.getDeclaringClass();
        r0 = r1.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        r0 = r0.getDeclaringClass();
        if (r3 == r0) goto L_0x0034;
    L_0x0023:
        r4 = r3.isAssignableFrom(r0);
        if (r4 == 0) goto L_0x002e;
    L_0x0029:
        r0 = r1;
    L_0x002a:
        r1 = r1.next;
        r2 = r0;
        goto L_0x000f;
    L_0x002e:
        r0 = r0.isAssignableFrom(r3);
        if (r0 != 0) goto L_0x0097;
    L_0x0034:
        r0 = r1.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        r3 = r5._getterPriority(r0);
        r0 = r2.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        r0 = r5._getterPriority(r0);
        if (r3 == r0) goto L_0x004a;
    L_0x0046:
        if (r3 >= r0) goto L_0x0097;
    L_0x0048:
        r0 = r1;
        goto L_0x002a;
    L_0x004a:
        r3 = new java.lang.IllegalArgumentException;
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r4 = "Conflicting getter definitions for property \"";
        r0 = r0.append(r4);
        r4 = r5.getName();
        r0 = r0.append(r4);
        r4 = "\": ";
        r4 = r0.append(r4);
        r0 = r2.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        r0 = r0.getFullName();
        r0 = r4.append(r0);
        r2 = " vs ";
        r2 = r0.append(r2);
        r0 = r1.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        r0 = r0.getFullName();
        r0 = r2.append(r0);
        r0 = r0.toString();
        r3.<init>(r0);
        throw r3;
    L_0x008b:
        r0 = r2.withoutNext();
        r5._getters = r0;
        r0 = r2.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        goto L_0x0005;
    L_0x0097:
        r0 = r2;
        goto L_0x002a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.getGetter():com.fasterxml.jackson.databind.introspect.AnnotatedMethod");
    }

    public String getInternalName() {
        return this._internalName.getSimpleName();
    }

    public PropertyMetadata getMetadata() {
        Boolean _findRequired = _findRequired();
        String _findDescription = _findDescription();
        Integer _findIndex = _findIndex();
        String _findDefaultValue = _findDefaultValue();
        return (_findRequired == null && _findIndex == null && _findDefaultValue == null) ? _findDescription == null ? PropertyMetadata.STD_REQUIRED_OR_OPTIONAL : PropertyMetadata.STD_REQUIRED_OR_OPTIONAL.withDescription(_findDescription) : PropertyMetadata.construct(_findRequired.booleanValue(), _findDescription, _findIndex, _findDefaultValue);
    }

    public AnnotatedMember getMutator() {
        AnnotatedMember constructorParameter = getConstructorParameter();
        if (constructorParameter != null) {
            return constructorParameter;
        }
        constructorParameter = getSetter();
        return constructorParameter == null ? getField() : constructorParameter;
    }

    public String getName() {
        return this._name == null ? null : this._name.getSimpleName();
    }

    public AnnotatedMember getNonConstructorMutator() {
        AnnotatedMember setter = getSetter();
        return setter == null ? getField() : setter;
    }

    public AnnotatedMember getPrimaryMember() {
        return this._forSerialization ? getAccessor() : getMutator();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.fasterxml.jackson.databind.introspect.AnnotatedMethod getSetter() {
        /*
        r5 = this;
        r2 = r5._setters;
        if (r2 != 0) goto L_0x0006;
    L_0x0004:
        r0 = 0;
    L_0x0005:
        return r0;
    L_0x0006:
        r1 = r2.next;
        if (r1 != 0) goto L_0x000f;
    L_0x000a:
        r0 = r2.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        goto L_0x0005;
    L_0x000f:
        if (r1 == 0) goto L_0x008b;
    L_0x0011:
        r0 = r2.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        r3 = r0.getDeclaringClass();
        r0 = r1.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        r0 = r0.getDeclaringClass();
        if (r3 == r0) goto L_0x0034;
    L_0x0023:
        r4 = r3.isAssignableFrom(r0);
        if (r4 == 0) goto L_0x002e;
    L_0x0029:
        r0 = r1;
    L_0x002a:
        r1 = r1.next;
        r2 = r0;
        goto L_0x000f;
    L_0x002e:
        r0 = r0.isAssignableFrom(r3);
        if (r0 != 0) goto L_0x0097;
    L_0x0034:
        r0 = r1.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        r3 = r5._setterPriority(r0);
        r0 = r2.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        r0 = r5._setterPriority(r0);
        if (r3 == r0) goto L_0x004a;
    L_0x0046:
        if (r3 >= r0) goto L_0x0097;
    L_0x0048:
        r0 = r1;
        goto L_0x002a;
    L_0x004a:
        r3 = new java.lang.IllegalArgumentException;
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r4 = "Conflicting setter definitions for property \"";
        r0 = r0.append(r4);
        r4 = r5.getName();
        r0 = r0.append(r4);
        r4 = "\": ";
        r4 = r0.append(r4);
        r0 = r2.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        r0 = r0.getFullName();
        r0 = r4.append(r0);
        r2 = " vs ";
        r2 = r0.append(r2);
        r0 = r1.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        r0 = r0.getFullName();
        r0 = r2.append(r0);
        r0 = r0.toString();
        r3.<init>(r0);
        throw r3;
    L_0x008b:
        r0 = r2.withoutNext();
        r5._setters = r0;
        r0 = r2.value;
        r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedMethod) r0;
        goto L_0x0005;
    L_0x0097:
        r0 = r2;
        goto L_0x002a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.getSetter():com.fasterxml.jackson.databind.introspect.AnnotatedMethod");
    }

    public PropertyName getWrapperName() {
        Annotated primaryMember = getPrimaryMember();
        return (primaryMember == null || this._annotationIntrospector == null) ? null : this._annotationIntrospector.findWrapperName(primaryMember);
    }

    public boolean hasConstructorParameter() {
        return this._ctorParameters != null;
    }

    public boolean hasField() {
        return this._fields != null;
    }

    public boolean hasGetter() {
        return this._getters != null;
    }

    public boolean hasName(PropertyName propertyName) {
        return this._name.equals(propertyName);
    }

    public boolean hasSetter() {
        return this._setters != null;
    }

    public boolean isExplicitlyIncluded() {
        return _anyExplicits(this._fields) || _anyExplicits(this._getters) || _anyExplicits(this._setters) || _anyExplicits(this._ctorParameters);
    }

    public boolean isExplicitlyNamed() {
        return _anyExplicitNames(this._fields) || _anyExplicitNames(this._getters) || _anyExplicitNames(this._setters) || _anyExplicitNames(this._ctorParameters);
    }

    public boolean isTypeId() {
        Boolean bool = (Boolean) fromMemberAnnotations(new C01483());
        return bool != null && bool.booleanValue();
    }

    public void mergeAnnotations(boolean z) {
        if (z) {
            if (this._getters != null) {
                this._getters = _applyAnnotations(this._getters, _mergeAnnotations(0, this._getters, this._fields, this._ctorParameters, this._setters));
            } else if (this._fields != null) {
                this._fields = _applyAnnotations(this._fields, _mergeAnnotations(0, this._fields, this._ctorParameters, this._setters));
            }
        } else if (this._ctorParameters != null) {
            this._ctorParameters = _applyAnnotations(this._ctorParameters, _mergeAnnotations(0, this._ctorParameters, this._setters, this._fields, this._getters));
        } else if (this._setters != null) {
            this._setters = _applyAnnotations(this._setters, _mergeAnnotations(0, this._setters, this._fields, this._getters));
        } else if (this._fields != null) {
            this._fields = _applyAnnotations(this._fields, _mergeAnnotations(0, this._fields, this._getters));
        }
    }

    public void removeConstructors() {
        this._ctorParameters = null;
    }

    public void removeIgnored() {
        this._fields = _removeIgnored(this._fields);
        this._getters = _removeIgnored(this._getters);
        this._setters = _removeIgnored(this._setters);
        this._ctorParameters = _removeIgnored(this._ctorParameters);
    }

    public void removeNonVisible(boolean z) {
        Access findAccess = findAccess();
        if (findAccess == null) {
            findAccess = Access.AUTO;
        }
        switch (AnonymousClass10.$SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access[findAccess.ordinal()]) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                this._setters = null;
                this._ctorParameters = null;
                if (!this._forSerialization) {
                    this._fields = null;
                }
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                this._getters = null;
                if (this._forSerialization) {
                    this._fields = null;
                }
            default:
                this._getters = _removeNonVisible(this._getters);
                this._ctorParameters = _removeNonVisible(this._ctorParameters);
                if (!z || this._getters == null) {
                    this._fields = _removeNonVisible(this._fields);
                    this._setters = _removeNonVisible(this._setters);
                }
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("[Property '").append(this._name).append("'; ctors: ").append(this._ctorParameters).append(", field(s): ").append(this._fields).append(", getter(s): ").append(this._getters).append(", setter(s): ").append(this._setters);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public void trimByVisibility() {
        this._fields = _trimByVisibility(this._fields);
        this._getters = _trimByVisibility(this._getters);
        this._setters = _trimByVisibility(this._setters);
        this._ctorParameters = _trimByVisibility(this._ctorParameters);
    }

    public POJOPropertyBuilder withName(PropertyName propertyName) {
        return new POJOPropertyBuilder(this, propertyName);
    }

    public POJOPropertyBuilder withSimpleName(String str) {
        PropertyName withSimpleName = this._name.withSimpleName(str);
        return withSimpleName == this._name ? this : new POJOPropertyBuilder(this, withSimpleName);
    }
}
