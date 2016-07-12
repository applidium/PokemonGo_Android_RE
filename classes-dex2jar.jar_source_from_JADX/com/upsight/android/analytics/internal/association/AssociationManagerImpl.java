package com.upsight.android.analytics.internal.association;

import android.text.TextUtils;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.upsight.android.analytics.internal.association.Association.UpsightDataFilter;
import com.upsight.android.analytics.internal.session.Clock;
import com.upsight.android.persistence.UpsightDataStore;
import com.upsight.android.persistence.annotation.Created;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import rx.functions.Action1;

class AssociationManagerImpl implements AssociationManager {
    static final long ASSOCIATION_EXPIRY = 604800000;
    private static final String KEY_UPSIGHT_DATA = "upsight_data";
    private final Map<String, Set<Association>> mAssociations;
    private final Clock mClock;
    private final UpsightDataStore mDataStore;
    private boolean mIsLaunched;

    /* renamed from: com.upsight.android.analytics.internal.association.AssociationManagerImpl.1 */
    class C08821 implements Action1<Association> {
        C08821() {
        }

        public void call(Association association) {
            AssociationManagerImpl.this.addAssociation(association.getWith(), association);
        }
    }

    AssociationManagerImpl(UpsightDataStore upsightDataStore, Clock clock) {
        this.mIsLaunched = false;
        this.mDataStore = upsightDataStore;
        this.mClock = clock;
        this.mAssociations = new HashMap();
    }

    void addAssociation(String str, Association association) {
        synchronized (this) {
            if (!(TextUtils.isEmpty(str) || association == null)) {
                Set set = (Set) this.mAssociations.get(str);
                if (set == null) {
                    set = new HashSet();
                }
                set.add(association);
                this.mAssociations.put(str, set);
            }
        }
    }

    public void associate(String str, ObjectNode objectNode) {
        synchronized (this) {
            associateInner(str, objectNode);
        }
    }

    void associateInner(String str, ObjectNode objectNode) {
        synchronized (this) {
            Set set = (Set) this.mAssociations.get(str);
            if (set != null) {
                Iterator it = set.iterator();
                Object obj = null;
                while (it.hasNext()) {
                    Association association = (Association) it.next();
                    if (this.mClock.currentTimeMillis() - association.getTimestampMs() > ASSOCIATION_EXPIRY) {
                        it.remove();
                        this.mDataStore.removeObservable(Association.class, association.getId()).subscribe();
                    } else if (obj == null) {
                        UpsightDataFilter upsightDataFilter = association.getUpsightDataFilter();
                        JsonNode path = objectNode.path(KEY_UPSIGHT_DATA);
                        if (path.isObject()) {
                            ObjectNode objectNode2 = (ObjectNode) path;
                            JsonNode path2 = objectNode2.path(upsightDataFilter.matchKey);
                            if (path2.isValueNode()) {
                                Iterator it2 = upsightDataFilter.matchValues.iterator();
                                while (it2.hasNext()) {
                                    if (path2.equals((JsonNode) it2.next())) {
                                        Iterator fields = association.getUpsightData().fields();
                                        while (fields.hasNext()) {
                                            Entry entry = (Entry) fields.next();
                                            objectNode2.put((String) entry.getKey(), (JsonNode) entry.getValue());
                                        }
                                        it.remove();
                                        this.mDataStore.removeObservable(Association.class, association.getId()).subscribe();
                                        obj = 1;
                                    }
                                }
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
    }

    @Created
    public void handleCreate(Association association) {
        addAssociation(association.getWith(), association);
    }

    public void launch() {
        synchronized (this) {
            if (!this.mIsLaunched) {
                this.mIsLaunched = true;
                launchInner();
            }
        }
    }

    void launchInner() {
        synchronized (this) {
            this.mDataStore.subscribe(this);
            this.mDataStore.fetchObservable(Association.class).subscribe(new C08821());
        }
    }
}
