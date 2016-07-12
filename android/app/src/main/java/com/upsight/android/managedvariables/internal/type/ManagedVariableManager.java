package com.upsight.android.managedvariables.internal.type;

import com.upsight.android.UpsightException;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import com.upsight.android.managedvariables.internal.type.UxmSchema.BaseSchema;
import com.upsight.android.managedvariables.type.UpsightManagedBoolean;
import com.upsight.android.managedvariables.type.UpsightManagedFloat;
import com.upsight.android.managedvariables.type.UpsightManagedInt;
import com.upsight.android.managedvariables.type.UpsightManagedString;
import com.upsight.android.managedvariables.type.UpsightManagedVariable.Listener;
import com.upsight.android.persistence.UpsightDataStore;
import com.upsight.android.persistence.UpsightSubscription;
import com.upsight.android.persistence.annotation.Created;
import com.upsight.android.persistence.annotation.Removed;
import com.upsight.android.persistence.annotation.Updated;
import java.util.HashMap;
import java.util.Map;
import rx.Observable;
import rx.Scheduler;
import rx.functions.Action1;
import rx.functions.Func1;

public class ManagedVariableManager {
    private static final Map<Class<? extends ManagedVariable>, Class<? extends ManagedVariableModel>> sModelMap;
    private final Map<String, ManagedVariable> mCache;
    private Scheduler mCallbackScheduler;
    private UpsightDataStore mDataStore;
    private UxmSchema mUxmSchema;

    /* renamed from: com.upsight.android.managedvariables.internal.type.ManagedVariableManager.1 */
    static final class C09391 extends HashMap<Class<? extends ManagedVariable>, Class<? extends ManagedVariableModel>> {
        C09391() {
            put(UpsightManagedString.class, Model.class);
            put(UpsightManagedBoolean.class, Model.class);
            put(UpsightManagedInt.class, Model.class);
            put(UpsightManagedFloat.class, Model.class);
        }
    }

    /* renamed from: com.upsight.android.managedvariables.internal.type.ManagedVariableManager.2 */
    class C09402 implements Action1<T> {
        final /* synthetic */ Listener val$listener;

        C09402(Listener listener) {
            this.val$listener = listener;
        }

        public void call(T t) {
            this.val$listener.onSuccess(t);
        }
    }

    /* renamed from: com.upsight.android.managedvariables.internal.type.ManagedVariableManager.3 */
    class C09413 implements Action1<ManagedVariableModel> {
        final /* synthetic */ Class val$clazz;
        final /* synthetic */ Listener val$listener;
        final /* synthetic */ String val$tag;

        C09413(String str, Listener listener, Class cls) {
            this.val$tag = str;
            this.val$listener = listener;
            this.val$clazz = cls;
        }

        public void call(ManagedVariableModel managedVariableModel) {
            synchronized (ManagedVariableManager.this.mCache) {
                ManagedVariable managedVariable = (ManagedVariable) ManagedVariableManager.this.mCache.get(this.val$tag);
                if (managedVariable != null) {
                    this.val$listener.onSuccess(managedVariable);
                } else {
                    managedVariable = ManagedVariableManager.this.fromModel(this.val$clazz, this.val$tag, managedVariableModel);
                    if (managedVariable != null) {
                        ManagedVariableManager.this.mCache.put(this.val$tag, managedVariable);
                        this.val$listener.onSuccess(managedVariable);
                    } else {
                        this.val$listener.onFailure(new UpsightException("Invalid managed variable tag", new Object[0]));
                    }
                }
            }
        }
    }

    /* renamed from: com.upsight.android.managedvariables.internal.type.ManagedVariableManager.4 */
    class C09424 implements Action1<Throwable> {
        final /* synthetic */ Listener val$listener;

        C09424(Listener listener) {
            this.val$listener = listener;
        }

        public void call(Throwable th) {
            this.val$listener.onFailure(new UpsightException(th));
        }
    }

    /* renamed from: com.upsight.android.managedvariables.internal.type.ManagedVariableManager.5 */
    class C09435 implements Func1<ManagedVariableModel, Boolean> {
        final /* synthetic */ Class val$clazz;
        final /* synthetic */ String val$tag;

        C09435(Class cls, String str) {
            this.val$clazz = cls;
            this.val$tag = str;
        }

        public Boolean call(ManagedVariableModel managedVariableModel) {
            return Boolean.valueOf(ManagedVariableManager.this.mUxmSchema.get(this.val$clazz, this.val$tag).tag.equals(managedVariableModel.getTag()));
        }
    }

    static {
        sModelMap = new C09391();
    }

    ManagedVariableManager(Scheduler scheduler, UpsightDataStore upsightDataStore, UxmSchema uxmSchema) {
        this.mCache = new HashMap();
        this.mCallbackScheduler = scheduler;
        this.mDataStore = upsightDataStore;
        this.mUxmSchema = uxmSchema;
        upsightDataStore.subscribe(this);
    }

    private <T extends ManagedVariable> Observable<? extends ManagedVariableModel> fetchDataStoreObservable(Class<T> cls, String str) {
        return this.mDataStore.fetchObservable((Class) sModelMap.get(cls)).filter(new C09435(cls, str)).defaultIfEmpty(null);
    }

    private <T extends ManagedVariable> T fromModel(Class<T> cls, String str, ManagedVariableModel managedVariableModel) {
        T t = null;
        BaseSchema baseSchema = this.mUxmSchema.get(cls, str);
        if (baseSchema == null) {
            return null;
        }
        if (UpsightManagedString.class.equals(cls)) {
            String str2 = (String) baseSchema.defaultValue;
            if (managedVariableModel != null) {
                t = managedVariableModel.getValue();
            }
            return new ManagedString(str, str2, (String) t);
        } else if (UpsightManagedBoolean.class.equals(cls)) {
            Boolean bool = (Boolean) baseSchema.defaultValue;
            if (managedVariableModel != null) {
                t = managedVariableModel.getValue();
            }
            return new ManagedBoolean(str, bool, (Boolean) t);
        } else if (UpsightManagedInt.class.equals(cls)) {
            Integer num = (Integer) baseSchema.defaultValue;
            if (managedVariableModel != null) {
                t = managedVariableModel.getValue();
            }
            return new ManagedInt(str, num, (Integer) t);
        } else if (!UpsightManagedFloat.class.equals(cls)) {
            return null;
        } else {
            Float f = (Float) baseSchema.defaultValue;
            if (managedVariableModel != null) {
                t = managedVariableModel.getValue();
            }
            return new ManagedFloat(str, f, (Float) t);
        }
    }

    private <T extends ManagedVariable> void resetValue(Class<T> cls, String str) {
        synchronized (this.mCache) {
            ManagedVariable managedVariable = (ManagedVariable) this.mCache.get(str);
            if (managedVariable != null && cls.isInstance(managedVariable)) {
                managedVariable.set(null);
            }
        }
    }

    private <T extends ManagedVariable> void updateValue(Class<T> cls, String str, Object obj) {
        synchronized (this.mCache) {
            ManagedVariable managedVariable = (ManagedVariable) this.mCache.get(str);
            if (managedVariable != null && cls.isInstance(managedVariable)) {
                managedVariable.set(obj);
            }
        }
    }

    public <T extends ManagedVariable> T fetch(Class<T> cls, String str) {
        T t;
        synchronized (this.mCache) {
            t = (ManagedVariable) this.mCache.get(str);
            if (t == null) {
                t = fromModel(cls, str, (ManagedVariableModel) fetchDataStoreObservable(cls, str).toBlocking().first());
                if (t != null) {
                    this.mCache.put(str, t);
                }
            }
        }
        return t;
    }

    public <T extends ManagedVariable> UpsightSubscription fetch(Class<T> cls, String str, Listener<T> listener) {
        UpsightSubscription from;
        synchronized (this.mCache) {
            ManagedVariable managedVariable = (ManagedVariable) this.mCache.get(str);
            from = managedVariable != null ? Subscriptions.from(Observable.just(managedVariable).observeOn(this.mCallbackScheduler).subscribe(new C09402(listener))) : Subscriptions.from(fetchDataStoreObservable(cls, str).subscribe(new C09413(str, listener, cls), new C09424(listener)));
        }
        return from;
    }

    @Removed
    public void handleManagedVariableRemoval(Model model) {
        resetValue(UpsightManagedBoolean.class, model.getTag());
    }

    @Removed
    public void handleManagedVariableRemoval(Model model) {
        resetValue(UpsightManagedFloat.class, model.getTag());
    }

    @Removed
    public void handleManagedVariableRemoval(Model model) {
        resetValue(UpsightManagedInt.class, model.getTag());
    }

    @Removed
    public void handleManagedVariableRemoval(Model model) {
        resetValue(UpsightManagedString.class, model.getTag());
    }

    @Created
    @Updated
    public void handleManagedVariableUpdate(Model model) {
        updateValue(UpsightManagedBoolean.class, model.getTag(), model.getValue());
    }

    @Created
    @Updated
    public void handleManagedVariableUpdate(Model model) {
        updateValue(UpsightManagedFloat.class, model.getTag(), model.getValue());
    }

    @Created
    @Updated
    public void handleManagedVariableUpdate(Model model) {
        updateValue(UpsightManagedInt.class, model.getTag(), model.getValue());
    }

    @Created
    @Updated
    public void handleManagedVariableUpdate(Model model) {
        updateValue(UpsightManagedString.class, model.getTag(), model.getValue());
    }
}
