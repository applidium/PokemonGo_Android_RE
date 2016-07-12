package com.google.gson.internal;

import com.google.gson.InstanceCreator;
import com.google.gson.JsonIOException;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

public final class ConstructorConstructor {
    private final Map<Type, InstanceCreator<?>> instanceCreators;

    /* renamed from: com.google.gson.internal.ConstructorConstructor.12 */
    class AnonymousClass12 implements ObjectConstructor<T> {
        private final UnsafeAllocator unsafeAllocator;
        final /* synthetic */ Class val$rawType;
        final /* synthetic */ Type val$type;

        AnonymousClass12(Class cls, Type type) {
            this.val$rawType = cls;
            this.val$type = type;
            this.unsafeAllocator = UnsafeAllocator.create();
        }

        public T construct() {
            try {
                return this.unsafeAllocator.newInstance(this.val$rawType);
            } catch (Throwable e) {
                throw new RuntimeException("Unable to invoke no-args constructor for " + this.val$type + ". " + "Register an InstanceCreator with Gson for this type may fix this problem.", e);
            }
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor.1 */
    class C06931 implements ObjectConstructor<T> {
        final /* synthetic */ Type val$type;
        final /* synthetic */ InstanceCreator val$typeCreator;

        C06931(InstanceCreator instanceCreator, Type type) {
            this.val$typeCreator = instanceCreator;
            this.val$type = type;
        }

        public T construct() {
            return this.val$typeCreator.createInstance(this.val$type);
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor.2 */
    class C06942 implements ObjectConstructor<T> {
        final /* synthetic */ InstanceCreator val$rawTypeCreator;
        final /* synthetic */ Type val$type;

        C06942(InstanceCreator instanceCreator, Type type) {
            this.val$rawTypeCreator = instanceCreator;
            this.val$type = type;
        }

        public T construct() {
            return this.val$rawTypeCreator.createInstance(this.val$type);
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor.3 */
    class C06953 implements ObjectConstructor<T> {
        final /* synthetic */ Constructor val$constructor;

        C06953(Constructor constructor) {
            this.val$constructor = constructor;
        }

        public T construct() {
            try {
                return this.val$constructor.newInstance(null);
            } catch (Throwable e) {
                throw new RuntimeException("Failed to invoke " + this.val$constructor + " with no args", e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to invoke " + this.val$constructor + " with no args", e2.getTargetException());
            } catch (IllegalAccessException e3) {
                throw new AssertionError(e3);
            }
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor.4 */
    class C06964 implements ObjectConstructor<T> {
        C06964() {
        }

        public T construct() {
            return new TreeSet();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor.5 */
    class C06975 implements ObjectConstructor<T> {
        final /* synthetic */ Type val$type;

        C06975(Type type) {
            this.val$type = type;
        }

        public T construct() {
            if (this.val$type instanceof ParameterizedType) {
                Type type = ((ParameterizedType) this.val$type).getActualTypeArguments()[0];
                if (type instanceof Class) {
                    return EnumSet.noneOf((Class) type);
                }
                throw new JsonIOException("Invalid EnumSet type: " + this.val$type.toString());
            }
            throw new JsonIOException("Invalid EnumSet type: " + this.val$type.toString());
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor.6 */
    class C06986 implements ObjectConstructor<T> {
        C06986() {
        }

        public T construct() {
            return new LinkedHashSet();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor.7 */
    class C06997 implements ObjectConstructor<T> {
        C06997() {
        }

        public T construct() {
            return new LinkedList();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor.8 */
    class C07008 implements ObjectConstructor<T> {
        C07008() {
        }

        public T construct() {
            return new ArrayList();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor.9 */
    class C07019 implements ObjectConstructor<T> {
        C07019() {
        }

        public T construct() {
            return new TreeMap();
        }
    }

    public ConstructorConstructor(Map<Type, InstanceCreator<?>> map) {
        this.instanceCreators = map;
    }

    private <T> ObjectConstructor<T> newDefaultConstructor(Class<? super T> cls) {
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new C06953(declaredConstructor);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    private <T> ObjectConstructor<T> newDefaultImplementationConstructor(Type type, Class<? super T> cls) {
        return Collection.class.isAssignableFrom(cls) ? SortedSet.class.isAssignableFrom(cls) ? new C06964() : EnumSet.class.isAssignableFrom(cls) ? new C06975(type) : Set.class.isAssignableFrom(cls) ? new C06986() : Queue.class.isAssignableFrom(cls) ? new C06997() : new C07008() : Map.class.isAssignableFrom(cls) ? SortedMap.class.isAssignableFrom(cls) ? new C07019() : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(TypeToken.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) ? new ObjectConstructor<T>() {
            public T construct() {
                return new LinkedTreeMap();
            }
        } : new ObjectConstructor<T>() {
            public T construct() {
                return new LinkedHashMap();
            }
        } : null;
    }

    private <T> ObjectConstructor<T> newUnsafeAllocator(Type type, Class<? super T> cls) {
        return new AnonymousClass12(cls, type);
    }

    public <T> ObjectConstructor<T> get(TypeToken<T> typeToken) {
        Type type = typeToken.getType();
        Class rawType = typeToken.getRawType();
        InstanceCreator instanceCreator = (InstanceCreator) this.instanceCreators.get(type);
        if (instanceCreator != null) {
            return new C06931(instanceCreator, type);
        }
        instanceCreator = (InstanceCreator) this.instanceCreators.get(rawType);
        if (instanceCreator != null) {
            return new C06942(instanceCreator, type);
        }
        ObjectConstructor<T> newDefaultConstructor = newDefaultConstructor(rawType);
        if (newDefaultConstructor != null) {
            return newDefaultConstructor;
        }
        newDefaultConstructor = newDefaultImplementationConstructor(type, rawType);
        return newDefaultConstructor == null ? newUnsafeAllocator(type, rawType) : newDefaultConstructor;
    }

    public String toString() {
        return this.instanceCreators.toString();
    }
}
