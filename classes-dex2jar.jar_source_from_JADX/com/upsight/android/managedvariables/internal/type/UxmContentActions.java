package com.upsight.android.managedvariables.internal.type;

import android.text.TextUtils;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.squareup.otto.Bus;
import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightException;
import com.upsight.android.UpsightManagedVariablesExtension;
import com.upsight.android.analytics.event.uxm.UpsightUxmEnumerateEvent;
import com.upsight.android.analytics.internal.action.Action;
import com.upsight.android.analytics.internal.action.ActionContext;
import com.upsight.android.analytics.internal.action.ActionFactory;
import com.upsight.android.analytics.internal.session.Clock;
import com.upsight.android.internal.util.PreferencesHelper;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.managedvariables.UpsightManagedVariablesComponent;
import com.upsight.android.persistence.UpsightDataStore;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import rx.Observable;
import rx.Scheduler.Worker;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func1;

public final class UxmContentActions {
    private static final Map<String, InternalFactory> FACTORY_MAP;

    private interface InternalFactory {
        Action<UxmContent, UxmContentActionContext> create(UxmContentActionContext uxmContentActionContext, String str, JsonNode jsonNode);
    }

    /* renamed from: com.upsight.android.managedvariables.internal.type.UxmContentActions.1 */
    static final class C09501 extends HashMap<String, InternalFactory> {

        /* renamed from: com.upsight.android.managedvariables.internal.type.UxmContentActions.1.1 */
        class C09451 implements InternalFactory {
            C09451() {
            }

            public Action<UxmContent, UxmContentActionContext> create(UxmContentActionContext uxmContentActionContext, String str, JsonNode jsonNode) {
                return new UxmEnumerate(str, jsonNode, null);
            }
        }

        /* renamed from: com.upsight.android.managedvariables.internal.type.UxmContentActions.1.2 */
        class C09462 implements InternalFactory {
            C09462() {
            }

            public Action<UxmContent, UxmContentActionContext> create(UxmContentActionContext uxmContentActionContext, String str, JsonNode jsonNode) {
                return new SetBundleId(str, jsonNode, null);
            }
        }

        /* renamed from: com.upsight.android.managedvariables.internal.type.UxmContentActions.1.3 */
        class C09473 implements InternalFactory {
            C09473() {
            }

            public Action<UxmContent, UxmContentActionContext> create(UxmContentActionContext uxmContentActionContext, String str, JsonNode jsonNode) {
                return new ModifyValue(str, jsonNode, null);
            }
        }

        /* renamed from: com.upsight.android.managedvariables.internal.type.UxmContentActions.1.4 */
        class C09484 implements InternalFactory {
            C09484() {
            }

            public Action<UxmContent, UxmContentActionContext> create(UxmContentActionContext uxmContentActionContext, String str, JsonNode jsonNode) {
                return new NotifyUxmValuesSynchronized(str, jsonNode, null);
            }
        }

        /* renamed from: com.upsight.android.managedvariables.internal.type.UxmContentActions.1.5 */
        class C09495 implements InternalFactory {
            C09495() {
            }

            public Action<UxmContent, UxmContentActionContext> create(UxmContentActionContext uxmContentActionContext, String str, JsonNode jsonNode) {
                return new Destroy(str, jsonNode, null);
            }
        }

        C09501() {
            put("action_uxm_enumerate", new C09451());
            put("action_set_bundle_id", new C09462());
            put("action_modify_value", new C09473());
            put("action_notify_uxm_values_synchronized", new C09484());
            put("action_destroy", new C09495());
        }
    }

    static class Destroy extends Action<UxmContent, UxmContentActionContext> {
        private Destroy(UxmContentActionContext uxmContentActionContext, String str, JsonNode jsonNode) {
            super(uxmContentActionContext, str, jsonNode);
        }

        public void execute(UxmContent uxmContent) {
            Bus bus = ((UxmContentActionContext) getActionContext()).mBus;
            uxmContent.signalActionCompleted(bus);
            uxmContent.signalActionMapCompleted(bus);
        }
    }

    static class ModifyValue extends Action<UxmContent, UxmContentActionContext> {
        private static final String MATCH = "match";
        private static final String OPERATOR = "operator";
        private static final String OPERATOR_SET = "set";
        private static final String PROPERTY_NAME = "property_name";
        private static final String PROPERTY_VALUE = "property_value";
        private static final String TYPE = "type";
        private static final String VALUES = "values";

        /* renamed from: com.upsight.android.managedvariables.internal.type.UxmContentActions.ModifyValue.1 */
        class C09511 implements Func1<T, JsonNode> {
            final /* synthetic */ ObjectMapper val$mapper;

            C09511(ObjectMapper objectMapper) {
                this.val$mapper = objectMapper;
            }

            public JsonNode call(T t) {
                return this.val$mapper.valueToTree(t);
            }
        }

        /* renamed from: com.upsight.android.managedvariables.internal.type.UxmContentActions.ModifyValue.2 */
        class C09522 implements Func1<ObjectNode, Boolean> {
            final /* synthetic */ String val$propertyName;
            final /* synthetic */ JsonNode val$propertyValue;

            C09522(String str, JsonNode jsonNode) {
                this.val$propertyName = str;
                this.val$propertyValue = jsonNode;
            }

            public Boolean call(ObjectNode objectNode) {
                return Boolean.valueOf(objectNode.path(this.val$propertyName).equals(this.val$propertyValue));
            }
        }

        /* renamed from: com.upsight.android.managedvariables.internal.type.UxmContentActions.ModifyValue.3 */
        class C09533 implements Func1<ObjectNode, ObjectNode> {
            final /* synthetic */ String val$propertyName;
            final /* synthetic */ JsonNode val$propertyValue;

            C09533(String str, JsonNode jsonNode) {
                this.val$propertyName = str;
                this.val$propertyValue = jsonNode;
            }

            public ObjectNode call(ObjectNode objectNode) {
                objectNode.replace(this.val$propertyName, this.val$propertyValue);
                return objectNode;
            }
        }

        /* renamed from: com.upsight.android.managedvariables.internal.type.UxmContentActions.ModifyValue.4 */
        class C09574 implements Action1<ObjectNode> {
            final /* synthetic */ UxmContentActionContext val$actionContext;
            final /* synthetic */ Class val$clazz;
            final /* synthetic */ UxmContent val$content;
            final /* synthetic */ UpsightDataStore val$dataStore;
            final /* synthetic */ UpsightLogger val$logger;
            final /* synthetic */ ObjectMapper val$mapper;

            /* renamed from: com.upsight.android.managedvariables.internal.type.UxmContentActions.ModifyValue.4.1 */
            class C09541 implements Action1<T> {
                final /* synthetic */ ObjectNode val$modelNode;

                C09541(ObjectNode objectNode) {
                    this.val$modelNode = objectNode;
                }

                public void call(T t) {
                    C09574.this.val$logger.m197d(Upsight.LOG_TAG, "Modified managed variable of class " + C09574.this.val$clazz + " with value " + this.val$modelNode, new Object[0]);
                }
            }

            /* renamed from: com.upsight.android.managedvariables.internal.type.UxmContentActions.ModifyValue.4.2 */
            class C09552 implements Action1<Throwable> {
                C09552() {
                }

                public void call(Throwable th) {
                    C09574.this.val$logger.m200e(Upsight.LOG_TAG, th, "Failed to modify managed variable of class " + C09574.this.val$clazz, new Object[0]);
                }
            }

            /* renamed from: com.upsight.android.managedvariables.internal.type.UxmContentActions.ModifyValue.4.3 */
            class C09563 implements Action0 {
                C09563() {
                }

                public void call() {
                    C09574.this.val$content.signalActionCompleted(C09574.this.val$actionContext.mBus);
                }
            }

            C09574(UpsightDataStore upsightDataStore, ObjectMapper objectMapper, Class cls, UxmContentActionContext uxmContentActionContext, UpsightLogger upsightLogger, UxmContent uxmContent) {
                this.val$dataStore = upsightDataStore;
                this.val$mapper = objectMapper;
                this.val$clazz = cls;
                this.val$actionContext = uxmContentActionContext;
                this.val$logger = upsightLogger;
                this.val$content = uxmContent;
            }

            public void call(ObjectNode objectNode) {
                try {
                    this.val$dataStore.storeObservable(this.val$mapper.treeToValue(objectNode, this.val$clazz)).subscribeOn(this.val$actionContext.mUpsight.getCoreComponent().subscribeOnScheduler()).observeOn(this.val$actionContext.mUpsight.getCoreComponent().observeOnScheduler()).subscribe(new C09541(objectNode), new C09552(), new C09563());
                } catch (Throwable e) {
                    this.val$logger.m200e(Upsight.LOG_TAG, e, "Failed to parse managed variable of class " + this.val$clazz, new Object[0]);
                    this.val$content.signalActionCompleted(this.val$actionContext.mBus);
                }
            }
        }

        /* renamed from: com.upsight.android.managedvariables.internal.type.UxmContentActions.ModifyValue.5 */
        class C09585 implements Action1<Throwable> {
            final /* synthetic */ UxmContentActionContext val$actionContext;
            final /* synthetic */ Class val$clazz;
            final /* synthetic */ UxmContent val$content;
            final /* synthetic */ UpsightLogger val$logger;

            C09585(UpsightLogger upsightLogger, Class cls, UxmContent uxmContent, UxmContentActionContext uxmContentActionContext) {
                this.val$logger = upsightLogger;
                this.val$clazz = cls;
                this.val$content = uxmContent;
                this.val$actionContext = uxmContentActionContext;
            }

            public void call(Throwable th) {
                this.val$logger.m200e(Upsight.LOG_TAG, th, "Failed to fetch managed variable of class " + this.val$clazz, new Object[0]);
                this.val$content.signalActionCompleted(this.val$actionContext.mBus);
            }
        }

        private ModifyValue(UxmContentActionContext uxmContentActionContext, String str, JsonNode jsonNode) {
            super(uxmContentActionContext, str, jsonNode);
        }

        private <T> void modifyValue(UxmContent uxmContent, Class<T> cls, JsonNode jsonNode, JsonNode jsonNode2) {
            UxmContentActionContext uxmContentActionContext = (UxmContentActionContext) getActionContext();
            ObjectMapper objectMapper = uxmContentActionContext.mMapper;
            UpsightLogger logger = uxmContentActionContext.mUpsight.getLogger();
            UpsightDataStore dataStore = uxmContentActionContext.mUpsight.getDataStore();
            Observable cast = dataStore.fetchObservable(cls).map(new C09511(objectMapper)).cast(ObjectNode.class);
            ObjectNode createObjectNode = objectMapper.createObjectNode();
            Iterator it = jsonNode.iterator();
            Observable observable = cast;
            while (it.hasNext()) {
                JsonNode jsonNode3 = (JsonNode) it.next();
                String asText = jsonNode3.path(PROPERTY_NAME).asText();
                JsonNode path = jsonNode3.path(PROPERTY_VALUE);
                cast = observable.filter(new C09522(asText, path));
                createObjectNode.replace(asText, path);
                observable = cast;
            }
            cast = observable.defaultIfEmpty(createObjectNode);
            Iterator it2 = jsonNode2.iterator();
            observable = cast;
            while (it2.hasNext()) {
                jsonNode3 = (JsonNode) it2.next();
                String asText2 = jsonNode3.path(OPERATOR).asText();
                asText = jsonNode3.path(PROPERTY_NAME).asText();
                jsonNode3 = jsonNode3.path(PROPERTY_VALUE);
                if (OPERATOR_SET.equals(asText2)) {
                    observable = observable.map(new C09533(asText, jsonNode3));
                }
            }
            observable.subscribeOn(uxmContentActionContext.mUpsight.getCoreComponent().subscribeOnScheduler()).observeOn(uxmContentActionContext.mUpsight.getCoreComponent().observeOnScheduler()).subscribe(new C09574(dataStore, objectMapper, cls, uxmContentActionContext, logger, uxmContent), new C09585(logger, cls, uxmContent, uxmContentActionContext));
        }

        public void execute(UxmContent uxmContent) {
            int i;
            ActionContext actionContext = getActionContext();
            if (uxmContent.shouldApplyBundle()) {
                Object optParamString = optParamString(TYPE);
                JsonNode optParamJsonArray = optParamJsonArray(MATCH);
                JsonNode optParamJsonArray2 = optParamJsonArray(VALUES);
                if (!(TextUtils.isEmpty(optParamString) || optParamJsonArray == null || optParamJsonArray2 == null)) {
                    Class cls = null;
                    if ("com.upsight.uxm.string".equals(optParamString)) {
                        cls = Model.class;
                    } else if ("com.upsight.uxm.boolean".equals(optParamString)) {
                        cls = Model.class;
                    } else if ("com.upsight.uxm.integer".equals(optParamString)) {
                        cls = Model.class;
                    } else if ("com.upsight.uxm.float".equals(optParamString)) {
                        cls = Model.class;
                    }
                    if (cls != null) {
                        modifyValue(uxmContent, cls, optParamJsonArray, optParamJsonArray2);
                        i = 0;
                    } else {
                        actionContext.mLogger.m199e(Upsight.LOG_TAG, "Failed to execute action_modify_value due to unknown managed variable type " + optParamString, new Object[0]);
                        i = 1;
                    }
                    if (i != 0) {
                        uxmContent.signalActionCompleted(actionContext.mBus);
                    }
                }
            }
            i = 1;
            if (i != 0) {
                uxmContent.signalActionCompleted(actionContext.mBus);
            }
        }
    }

    static class NotifyUxmValuesSynchronized extends Action<UxmContent, UxmContentActionContext> {
        private static final String TAGS = "tags";

        private NotifyUxmValuesSynchronized(UxmContentActionContext uxmContentActionContext, String str, JsonNode jsonNode) {
            super(uxmContentActionContext, str, jsonNode);
        }

        public void execute(UxmContent uxmContent) {
            List arrayList = new ArrayList();
            ArrayNode optParamJsonArray = optParamJsonArray(TAGS);
            if (uxmContent.shouldApplyBundle() && optParamJsonArray != null) {
                Iterator it = optParamJsonArray.iterator();
                while (it.hasNext()) {
                    JsonNode jsonNode = (JsonNode) it.next();
                    if (jsonNode.isTextual()) {
                        arrayList.add(jsonNode.asText());
                    }
                }
            }
            Bus bus = ((UxmContentActionContext) getActionContext()).mBus;
            bus.post(new ScheduleSyncNotificationEvent(arrayList, null));
            uxmContent.signalActionCompleted(bus);
        }
    }

    public static class ScheduleSyncNotificationEvent {
        public final String mId;
        public final List<String> mTags;

        private ScheduleSyncNotificationEvent(String str, List<String> list) {
            this.mId = str;
            this.mTags = list;
        }
    }

    static class SetBundleId extends Action<UxmContent, UxmContentActionContext> {
        private static final String BUNDLE_ID = "bundle.id";

        private SetBundleId(UxmContentActionContext uxmContentActionContext, String str, JsonNode jsonNode) {
            super(uxmContentActionContext, str, jsonNode);
        }

        public void execute(UxmContent uxmContent) {
            if (uxmContent.shouldApplyBundle()) {
                PreferencesHelper.putString(((UxmContentActionContext) getActionContext()).mUpsight, UxmContent.PREFERENCES_KEY_UXM_BUNDLE_ID, optParamString(BUNDLE_ID));
            }
            uxmContent.signalActionCompleted(((UxmContentActionContext) getActionContext()).mBus);
        }
    }

    public static class UxmContentActionContext extends ActionContext {
        public UxmContentActionContext(UpsightContext upsightContext, Bus bus, ObjectMapper objectMapper, Clock clock, Worker worker, UpsightLogger upsightLogger) {
            super(upsightContext, bus, objectMapper, clock, worker, upsightLogger);
        }
    }

    public static class UxmContentActionFactory implements ActionFactory<UxmContent, UxmContentActionContext> {
        public static final String TYPE = "datastore_factory";

        public Action<UxmContent, UxmContentActionContext> create(UxmContentActionContext uxmContentActionContext, JsonNode jsonNode) throws UpsightException {
            if (jsonNode == null) {
                throw new UpsightException("Failed to create Action. JSON is null.", new Object[0]);
            }
            String asText = jsonNode.get(ActionFactory.KEY_ACTION_TYPE).asText();
            JsonNode jsonNode2 = jsonNode.get(ActionFactory.KEY_ACTION_PARAMS);
            InternalFactory internalFactory = (InternalFactory) UxmContentActions.FACTORY_MAP.get(asText);
            if (internalFactory != null) {
                return internalFactory.create(uxmContentActionContext, asText, jsonNode2);
            }
            throw new UpsightException("Failed to create Action. Unknown action type.", new Object[0]);
        }
    }

    static class UxmEnumerate extends Action<UxmContent, UxmContentActionContext> {
        private UxmEnumerate(UxmContentActionContext uxmContentActionContext, String str, JsonNode jsonNode) {
            super(uxmContentActionContext, str, jsonNode);
        }

        public void execute(UxmContent uxmContent) {
            ActionContext actionContext = getActionContext();
            try {
                UpsightUxmEnumerateEvent.createBuilder(new JSONArray(((UpsightManagedVariablesComponent) actionContext.mUpsight.getUpsightExtension(UpsightManagedVariablesExtension.EXTENSION_NAME).getComponent()).uxmSchema().mSchemaJsonString)).record(actionContext.mUpsight);
            } catch (Throwable e) {
                actionContext.mUpsight.getLogger().m200e(Upsight.LOG_TAG, e, "Failed to send UXM enumerate event", new Object[0]);
            }
            uxmContent.signalActionCompleted(actionContext.mBus);
        }
    }

    static {
        FACTORY_MAP = new C09501();
    }

    private UxmContentActions() {
    }
}
