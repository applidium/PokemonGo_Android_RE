package com.upsight.android.marketing.internal.content;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import android.widget.ImageView;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.squareup.otto.Bus;
import com.squareup.otto.Subscribe;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightException;
import com.upsight.android.analytics.event.UpsightDynamicEvent;
import com.upsight.android.analytics.event.UpsightDynamicEvent.Builder;
import com.upsight.android.analytics.event.datacollection.UpsightDataCollectionEvent;
import com.upsight.android.analytics.internal.action.Action;
import com.upsight.android.analytics.internal.action.ActionContext;
import com.upsight.android.analytics.internal.action.ActionFactory;
import com.upsight.android.analytics.internal.association.Association;
import com.upsight.android.analytics.internal.session.Clock;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.marketing.C0962R;
import com.upsight.android.marketing.UpsightPurchase;
import com.upsight.android.marketing.UpsightReward;
import com.upsight.android.marketing.internal.content.MarketingContent.ContentLoadedEvent;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.functions.Action0;

public final class MarketingContentActions {
    private static final Map<String, InternalFactory> FACTORY_MAP;

    private interface InternalFactory {
        Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode);
    }

    /* renamed from: com.upsight.android.marketing.internal.content.MarketingContentActions.1 */
    static final class C09781 extends HashMap<String, InternalFactory> {

        /* renamed from: com.upsight.android.marketing.internal.content.MarketingContentActions.1.1 */
        class C09691 implements InternalFactory {
            C09691() {
            }

            public Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
                return new Trigger(str, jsonNode, null);
            }
        }

        /* renamed from: com.upsight.android.marketing.internal.content.MarketingContentActions.1.2 */
        class C09702 implements InternalFactory {
            C09702() {
            }

            public Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
                return new TriggerIfContentBuilt(str, jsonNode, null);
            }
        }

        /* renamed from: com.upsight.android.marketing.internal.content.MarketingContentActions.1.3 */
        class C09713 implements InternalFactory {
            C09713() {
            }

            public Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
                return new TriggerIfContentAvailable(str, jsonNode, null);
            }
        }

        /* renamed from: com.upsight.android.marketing.internal.content.MarketingContentActions.1.4 */
        class C09724 implements InternalFactory {
            C09724() {
            }

            public Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
                return new PresentScopedContent(str, jsonNode, null);
            }
        }

        /* renamed from: com.upsight.android.marketing.internal.content.MarketingContentActions.1.5 */
        class C09735 implements InternalFactory {
            C09735() {
            }

            public Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
                return new PresentScopelessContent(str, jsonNode, null);
            }
        }

        /* renamed from: com.upsight.android.marketing.internal.content.MarketingContentActions.1.6 */
        class C09746 implements InternalFactory {
            C09746() {
            }

            public Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
                return new PresentCloseButton(str, jsonNode, null);
            }
        }

        /* renamed from: com.upsight.android.marketing.internal.content.MarketingContentActions.1.7 */
        class C09757 implements InternalFactory {
            C09757() {
            }

            public Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
                return new Destroy(str, jsonNode, null);
            }
        }

        /* renamed from: com.upsight.android.marketing.internal.content.MarketingContentActions.1.8 */
        class C09768 implements InternalFactory {
            C09768() {
            }

            public Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
                return new OpenUrl(str, jsonNode, null);
            }
        }

        /* renamed from: com.upsight.android.marketing.internal.content.MarketingContentActions.1.9 */
        class C09779 implements InternalFactory {
            C09779() {
            }

            public Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
                return new SendEvent(str, jsonNode, null);
            }
        }

        C09781() {
            put("action_trigger", new C09691());
            put("action_trigger_if_content_built", new C09702());
            put("action_trigger_if_content_available", new C09713());
            put("action_present_scoped_content", new C09724());
            put("action_present_scopeless_content", new C09735());
            put("action_present_close_button", new C09746());
            put("action_destroy", new C09757());
            put("action_open_url", new C09768());
            put("action_send_event", new C09779());
            put("action_send_form_data", new InternalFactory() {
                public Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
                    return new SendFormData(str, jsonNode, null);
                }
            });
            put("action_notify_rewards", new InternalFactory() {
                public Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
                    return new NotifyRewards(str, jsonNode, null);
                }
            });
            put("action_notify_purchases", new InternalFactory() {
                public Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
                    return new NotifyPurchases(str, jsonNode, null);
                }
            });
            put("action_associate_once", new InternalFactory() {
                public Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
                    return new AssociateOnce(str, jsonNode, null);
                }
            });
        }
    }

    static class AssociateOnce extends Action<MarketingContent, MarketingContentActionContext> {
        public static final String UPSIGHT_DATA = "upsight_data";
        public static final String UPSIGHT_DATA_FILTER = "upsight_data_filter";
        public static final String WITH = "with";

        private AssociateOnce(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
            super(marketingContentActionContext, str, jsonNode);
        }

        public void execute(MarketingContent marketingContent) {
            Throwable e;
            ActionContext actionContext = getActionContext();
            String optParamString = optParamString(WITH);
            ObjectNode optParamJsonObject = optParamJsonObject(UPSIGHT_DATA_FILTER);
            ObjectNode optParamJsonObject2 = optParamJsonObject(UPSIGHT_DATA);
            try {
                actionContext.mUpsight.getDataStore().store(Association.from(optParamString, optParamJsonObject, optParamJsonObject2, actionContext.mMapper, actionContext.mClock));
            } catch (IllegalArgumentException e2) {
                e = e2;
                actionContext.mLogger.m200e(getClass().getSimpleName(), e, "Failed to parse Association with=" + optParamString + " upsightDataFilter=" + optParamJsonObject + " upsightData" + optParamJsonObject2, new Object[0]);
                marketingContent.signalActionCompleted(actionContext.mBus);
            } catch (JsonProcessingException e3) {
                e = e3;
                actionContext.mLogger.m200e(getClass().getSimpleName(), e, "Failed to parse Association with=" + optParamString + " upsightDataFilter=" + optParamJsonObject + " upsightData" + optParamJsonObject2, new Object[0]);
                marketingContent.signalActionCompleted(actionContext.mBus);
            }
            marketingContent.signalActionCompleted(actionContext.mBus);
        }
    }

    static class Destroy extends Action<MarketingContent, MarketingContentActionContext> {
        private Destroy(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
            super(marketingContentActionContext, str, jsonNode);
        }

        public void execute(MarketingContent marketingContent) {
            String id = marketingContent.getId();
            MarketingContentActionContext marketingContentActionContext = (MarketingContentActionContext) getActionContext();
            if (!TextUtils.isEmpty(id)) {
                marketingContentActionContext.mContentStore.remove(id);
                marketingContentActionContext.mBus.post(new DestroyEvent(null));
            }
            Bus bus = marketingContentActionContext.mBus;
            marketingContent.signalActionCompleted(bus);
            marketingContent.signalActionMapCompleted(bus);
        }
    }

    public static class DestroyEvent {
        public final String mId;

        private DestroyEvent(String str) {
            this.mId = str;
        }
    }

    public static class MarketingContentActionContext extends ActionContext {
        public final MarketingContentStore mContentStore;
        public final ContentTemplateWebViewClientFactory mContentTemplateWebViewClientFactory;

        public MarketingContentActionContext(UpsightContext upsightContext, Bus bus, ObjectMapper objectMapper, Clock clock, Worker worker, UpsightLogger upsightLogger, MarketingContentStore marketingContentStore, ContentTemplateWebViewClientFactory contentTemplateWebViewClientFactory) {
            super(upsightContext, bus, objectMapper, clock, worker, upsightLogger);
            this.mContentStore = marketingContentStore;
            this.mContentTemplateWebViewClientFactory = contentTemplateWebViewClientFactory;
        }
    }

    public static class MarketingContentActionFactory implements ActionFactory<MarketingContent, MarketingContentActionContext> {
        public static final String TYPE = "marketing_content_factory";

        public Action<MarketingContent, MarketingContentActionContext> create(MarketingContentActionContext marketingContentActionContext, JsonNode jsonNode) throws UpsightException {
            if (jsonNode == null) {
                throw new UpsightException("Failed to create Action. JSON is null.", new Object[0]);
            }
            String asText = jsonNode.get(ActionFactory.KEY_ACTION_TYPE).asText();
            JsonNode jsonNode2 = jsonNode.get(ActionFactory.KEY_ACTION_PARAMS);
            InternalFactory internalFactory = (InternalFactory) MarketingContentActions.FACTORY_MAP.get(asText);
            if (internalFactory != null) {
                return internalFactory.create(marketingContentActionContext, asText, jsonNode2);
            }
            throw new UpsightException("Failed to create Action. Unknown action type.", new Object[0]);
        }
    }

    static class NotifyPurchases extends Action<MarketingContent, MarketingContentActionContext> {
        public static final String PURCHASES = "purchases";

        private NotifyPurchases(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
            super(marketingContentActionContext, str, jsonNode);
        }

        public void execute(MarketingContent marketingContent) {
            Object obj;
            Throwable th;
            List arrayList = new ArrayList();
            JsonNode optParamJsonArray = optParamJsonArray(PURCHASES);
            if (optParamJsonArray != null && optParamJsonArray.isArray()) {
                ActionContext actionContext = getActionContext();
                Iterator it = optParamJsonArray.iterator();
                while (it.hasNext()) {
                    try {
                        optParamJsonArray = (JsonNode) it.next();
                        try {
                            arrayList.add(Purchase.from(optParamJsonArray, actionContext.mMapper));
                        } catch (Throwable e) {
                            Throwable th2 = e;
                            obj = optParamJsonArray;
                            th = th2;
                            actionContext.mLogger.m200e(getClass().getSimpleName(), th, "Failed to parse Purchase purchaseJson=" + obj, new Object[0]);
                        }
                    } catch (IOException e2) {
                        th = e2;
                        obj = null;
                        actionContext.mLogger.m200e(getClass().getSimpleName(), th, "Failed to parse Purchase purchaseJson=" + obj, new Object[0]);
                    }
                }
            }
            Bus bus = ((MarketingContentActionContext) getActionContext()).mBus;
            bus.post(new PurchasesEvent(arrayList, null));
            marketingContent.signalActionCompleted(bus);
        }
    }

    static class NotifyRewards extends Action<MarketingContent, MarketingContentActionContext> {
        public static final String REWARDS = "rewards";

        private NotifyRewards(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
            super(marketingContentActionContext, str, jsonNode);
        }

        public void execute(MarketingContent marketingContent) {
            Object obj;
            Throwable th;
            List arrayList = new ArrayList();
            JsonNode optParamJsonArray = optParamJsonArray(REWARDS);
            if (optParamJsonArray != null && optParamJsonArray.isArray()) {
                ActionContext actionContext = getActionContext();
                Iterator it = optParamJsonArray.iterator();
                while (it.hasNext()) {
                    try {
                        optParamJsonArray = (JsonNode) it.next();
                        try {
                            arrayList.add(Reward.from(optParamJsonArray, actionContext.mMapper));
                        } catch (Throwable e) {
                            Throwable th2 = e;
                            obj = optParamJsonArray;
                            th = th2;
                            actionContext.mLogger.m200e(getClass().getSimpleName(), th, "Failed to parse Reward rewardJson=" + obj, new Object[0]);
                        }
                    } catch (IOException e2) {
                        th = e2;
                        obj = null;
                        actionContext.mLogger.m200e(getClass().getSimpleName(), th, "Failed to parse Reward rewardJson=" + obj, new Object[0]);
                    }
                }
            }
            Bus bus = ((MarketingContentActionContext) getActionContext()).mBus;
            bus.post(new RewardsEvent(arrayList, null));
            marketingContent.signalActionCompleted(bus);
        }
    }

    static class OpenUrl extends Action<MarketingContent, MarketingContentActionContext> {
        public static final String URL = "url";

        private OpenUrl(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
            super(marketingContentActionContext, str, jsonNode);
        }

        public void execute(MarketingContent marketingContent) {
            MarketingContentActionContext marketingContentActionContext = (MarketingContentActionContext) getActionContext();
            String optParamString = optParamString(URL);
            if (TextUtils.isEmpty(optParamString)) {
                marketingContentActionContext.mLogger.m199e(getClass().getSimpleName(), "Action execution failed actionType=" + getType() + " uri=" + optParamString, new Object[0]);
            } else {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(optParamString));
                intent.setFlags(268435456);
                try {
                    marketingContentActionContext.mUpsight.startActivity(intent);
                } catch (Throwable e) {
                    marketingContentActionContext.mLogger.m200e(getClass().getSimpleName(), e, "Action execution failed actionType=" + getType() + " intent=" + intent, new Object[0]);
                }
            }
            marketingContent.signalActionCompleted(marketingContentActionContext.mBus);
        }
    }

    static class PresentCloseButton extends Action<MarketingContent, MarketingContentActionContext> {
        public static final String DELAY_MS = "delay_ms";

        /* renamed from: com.upsight.android.marketing.internal.content.MarketingContentActions.PresentCloseButton.1 */
        class C09791 implements Action0 {
            final /* synthetic */ MarketingContent val$content;

            C09791(MarketingContent marketingContent) {
                this.val$content = marketingContent;
            }

            public void call() {
                View contentView = this.val$content.getContentView();
                if (contentView != null && contentView.getRootView() != null) {
                    ((ImageView) contentView.findViewById(C0962R.id.upsight_marketing_content_view_close_button)).setVisibility(0);
                }
            }
        }

        private PresentCloseButton(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
            super(marketingContentActionContext, str, jsonNode);
        }

        public void execute(MarketingContent marketingContent) {
            ((MarketingContentActionContext) getActionContext()).mMainWorker.schedule(new C09791(marketingContent), (long) optParamInt(DELAY_MS), TimeUnit.MILLISECONDS);
            marketingContent.signalActionCompleted(((MarketingContentActionContext) getActionContext()).mBus);
        }
    }

    static class PresentScopedContent extends Action<MarketingContent, MarketingContentActionContext> {
        public static final String ID = "id";
        public static final String SCOPE_LIST = "scope_list";

        private PresentScopedContent(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
            super(marketingContentActionContext, str, jsonNode);
        }

        public void execute(MarketingContent marketingContent) {
            Object optParamString = optParamString(ID);
            JsonNode optParamJsonArray = optParamJsonArray(SCOPE_LIST);
            if (!(TextUtils.isEmpty(optParamString) || optParamJsonArray == null || !optParamJsonArray.isArray())) {
                List arrayList = new ArrayList();
                Iterator it = optParamJsonArray.iterator();
                while (it.hasNext()) {
                    optParamJsonArray = (JsonNode) it.next();
                    if (optParamJsonArray.isTextual()) {
                        arrayList.add(optParamJsonArray.asText());
                    }
                }
                ((MarketingContentActionContext) getActionContext()).mContentStore.presentScopedContent(optParamString, (String[]) arrayList.toArray(new String[arrayList.size()]));
            }
            marketingContent.signalActionCompleted(((MarketingContentActionContext) getActionContext()).mBus);
        }
    }

    static class PresentScopelessContent extends Action<MarketingContent, MarketingContentActionContext> {
        public static final String NEXT_ID = "next_id";
        public static final String SELF_ID = "self_id";

        private PresentScopelessContent(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
            super(marketingContentActionContext, str, jsonNode);
        }

        public void execute(MarketingContent marketingContent) {
            Object optParamString = optParamString(SELF_ID);
            Object optParamString2 = optParamString(NEXT_ID);
            if (!(TextUtils.isEmpty(optParamString) || TextUtils.isEmpty(optParamString2))) {
                ((MarketingContentActionContext) getActionContext()).mContentStore.presentScopelessContent(optParamString2, optParamString);
            }
            marketingContent.signalActionCompleted(((MarketingContentActionContext) getActionContext()).mBus);
        }
    }

    public static class PurchasesEvent {
        public final String mId;
        public final List<UpsightPurchase> mPurchases;

        private PurchasesEvent(String str, List<UpsightPurchase> list) {
            this.mId = str;
            this.mPurchases = list;
        }
    }

    public static class RewardsEvent {
        public final String mId;
        public final List<UpsightReward> mRewards;

        private RewardsEvent(String str, List<UpsightReward> list) {
            this.mId = str;
            this.mRewards = list;
        }
    }

    static class SendEvent extends Action<MarketingContent, MarketingContentActionContext> {
        public static final String EVENT = "event";
        public static final String IDENTIFIERS = "identifiers";
        public static final String PUB_DATA = "pub_data";
        public static final String TYPE = "type";
        public static final String UPSIGHT_DATA = "upsight_data";

        private SendEvent(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
            super(marketingContentActionContext, str, jsonNode);
        }

        public void execute(MarketingContent marketingContent) {
            MarketingContentActionContext marketingContentActionContext = (MarketingContentActionContext) getActionContext();
            JsonNode optParamJsonObject = optParamJsonObject(EVENT);
            if (optParamJsonObject != null) {
                JsonNode path = optParamJsonObject.path(TYPE);
                if (path.isTextual()) {
                    Builder putUpsightData = UpsightDynamicEvent.createBuilder(path.asText()).putUpsightData(optParamJsonObject.path(UPSIGHT_DATA));
                    if (!optParamJsonObject.path(PUB_DATA).isMissingNode()) {
                        putUpsightData.putPublisherData(optParamJsonObject.path(PUB_DATA));
                    }
                    if (optParamJsonObject.path(IDENTIFIERS).isTextual()) {
                        putUpsightData.setDynamicIdentifiers(optParamJsonObject.path(IDENTIFIERS).asText());
                    }
                    putUpsightData.record(marketingContentActionContext.mUpsight);
                } else {
                    marketingContentActionContext.mLogger.m199e(getClass().getSimpleName(), "Action failed actionType=" + getType() + " type=" + path, new Object[0]);
                }
            } else {
                marketingContentActionContext.mLogger.m199e(getClass().getSimpleName(), "Action failed actionType=" + getType() + " event=" + optParamJsonObject, new Object[0]);
            }
            marketingContent.signalActionCompleted(marketingContentActionContext.mBus);
        }
    }

    static class SendFormData extends Action<MarketingContent, MarketingContentActionContext> {
        public static final String DATA_KEY = "data_key";
        public static final String STREAM_ID = "stream_id";

        private SendFormData(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
            super(marketingContentActionContext, str, jsonNode);
        }

        public void execute(MarketingContent marketingContent) {
            MarketingContentActionContext marketingContentActionContext = (MarketingContentActionContext) getActionContext();
            String optParamString = optParamString(DATA_KEY);
            String optParamString2 = optParamString(STREAM_ID);
            if (optParamString == null || optParamString2 == null) {
                marketingContentActionContext.mLogger.m199e(getClass().getSimpleName(), "Action failed actionType=" + getType() + " dataKey=" + optParamString, new Object[0]);
            } else {
                optParamString = marketingContent.getExtra(optParamString);
                if (optParamString != null) {
                    UpsightDataCollectionEvent.createBuilder(optParamString, optParamString2).record(marketingContentActionContext.mUpsight);
                }
            }
            marketingContent.signalActionCompleted(marketingContentActionContext.mBus);
        }
    }

    static class Trigger extends Action<MarketingContent, MarketingContentActionContext> {
        public static final String TRIGGER = "trigger";

        private Trigger(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
            super(marketingContentActionContext, str, jsonNode);
        }

        public void execute(MarketingContent marketingContent) {
            Object optParamString = optParamString(TRIGGER);
            if (!TextUtils.isEmpty(optParamString)) {
                marketingContent.executeActions(optParamString);
            }
            marketingContent.signalActionCompleted(((MarketingContentActionContext) getActionContext()).mBus);
        }
    }

    static class TriggerIfContentAvailable extends Action<MarketingContent, MarketingContentActionContext> {
        public static final String CONDITION_PARAMETERS = "condition_parameters";
        public static final String ELSE_TRIGGER = "else_trigger";
        public static final String ID = "id";
        public static final String THEN_TRIGGER = "then_trigger";
        public static final String TIMEOUT_MS = "timeout_ms";
        private boolean isTriggerExecuted;
        private String mConditionalContentID;
        private MarketingContent mContent;
        private Subscription mSubscription;

        /* renamed from: com.upsight.android.marketing.internal.content.MarketingContentActions.TriggerIfContentAvailable.1 */
        class C09801 implements Action0 {
            final /* synthetic */ MarketingContentActionContext val$actionContext;
            final /* synthetic */ MarketingContent val$content;

            C09801(MarketingContent marketingContent, MarketingContentActionContext marketingContentActionContext) {
                this.val$content = marketingContent;
                this.val$actionContext = marketingContentActionContext;
            }

            public void call() {
                Object access$1400 = TriggerIfContentAvailable.this.optParamString(TriggerIfContentAvailable.ELSE_TRIGGER);
                if (!(TextUtils.isEmpty(access$1400) || TriggerIfContentAvailable.this.isTriggerExecuted)) {
                    this.val$content.executeActions(access$1400);
                    TriggerIfContentAvailable.this.isTriggerExecuted = true;
                }
                this.val$actionContext.mBus.unregister(this);
            }
        }

        private TriggerIfContentAvailable(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
            super(marketingContentActionContext, str, jsonNode);
            this.isTriggerExecuted = false;
        }

        public void execute(MarketingContent marketingContent) {
            MarketingContentActionContext marketingContentActionContext = (MarketingContentActionContext) getActionContext();
            this.mContent = marketingContent;
            long j = 0;
            try {
                JsonNode optParamJsonObject = optParamJsonObject(CONDITION_PARAMETERS);
                this.mConditionalContentID = optParamJsonObject.get(ID).asText();
                j = optParamJsonObject.get(TIMEOUT_MS).asLong();
            } catch (Throwable e) {
                marketingContentActionContext.mLogger.m200e(getClass().getSimpleName(), e, "Action execution failed actionType=" + getType() + " invalid CONDITION_PARAMETERS", new Object[0]);
            }
            Object optParamString;
            if (this.mConditionalContentID != null) {
                MarketingContent marketingContent2 = (MarketingContent) marketingContentActionContext.mContentStore.get(this.mConditionalContentID);
                if (marketingContent2 == null || !marketingContent2.isLoaded()) {
                    marketingContentActionContext.mBus.register(this);
                    this.mSubscription = marketingContentActionContext.mMainWorker.schedule(new C09801(marketingContent, marketingContentActionContext), j, TimeUnit.MILLISECONDS);
                } else {
                    optParamString = optParamString(THEN_TRIGGER);
                    if (!(TextUtils.isEmpty(optParamString) || this.isTriggerExecuted)) {
                        marketingContent.executeActions(optParamString);
                        this.isTriggerExecuted = true;
                    }
                }
            } else {
                optParamString = optParamString(ELSE_TRIGGER);
                if (!(TextUtils.isEmpty(optParamString) || this.isTriggerExecuted)) {
                    marketingContent.executeActions(optParamString);
                    this.isTriggerExecuted = true;
                }
            }
            marketingContent.signalActionCompleted(((MarketingContentActionContext) getActionContext()).mBus);
        }

        @Subscribe
        public void handleAvailabilityEvent(ContentLoadedEvent contentLoadedEvent) {
            if (contentLoadedEvent.getId().equals(this.mConditionalContentID)) {
                this.mSubscription.unsubscribe();
                ((MarketingContentActionContext) getActionContext()).mBus.unregister(this);
                Object optParamString = optParamString(THEN_TRIGGER);
                if (!TextUtils.isEmpty(optParamString) && !this.isTriggerExecuted) {
                    this.mContent.executeActions(optParamString);
                    this.isTriggerExecuted = true;
                }
            }
        }
    }

    static class TriggerIfContentBuilt extends Action<MarketingContent, MarketingContentActionContext> {
        public static final String CONDITION_PARAMETERS = "condition_parameters";
        public static final String CONTENT_MODEL = "content_model";
        public static final String ELSE_TRIGGER = "else_trigger";
        public static final String THEN_TRIGGER = "then_trigger";

        /* renamed from: com.upsight.android.marketing.internal.content.MarketingContentActions.TriggerIfContentBuilt.1 */
        class C09811 implements OnClickListener {
            final /* synthetic */ MarketingContent val$content;

            C09811(MarketingContent marketingContent) {
                this.val$content = marketingContent;
            }

            public void onClick(View view) {
                this.val$content.executeActions(MarketingContent.TRIGGER_CONTENT_DISMISSED);
            }
        }

        private TriggerIfContentBuilt(MarketingContentActionContext marketingContentActionContext, String str, JsonNode jsonNode) {
            super(marketingContentActionContext, str, jsonNode);
        }

        public void execute(MarketingContent marketingContent) {
            JsonNode jsonNode;
            int i;
            MarketingContentActionContext marketingContentActionContext = (MarketingContentActionContext) getActionContext();
            try {
                jsonNode = optParamJsonObject(CONDITION_PARAMETERS).get(CONTENT_MODEL);
            } catch (Throwable e) {
                marketingContentActionContext.mLogger.m200e(getClass().getSimpleName(), e, "Action execution failed actionType=" + getType() + " invalid CONDITION_PARAMETERS", new Object[0]);
                jsonNode = null;
            }
            if (jsonNode == null || !jsonNode.isObject()) {
                marketingContentActionContext.mLogger.m199e(getClass().getSimpleName(), "Action execution failed actionType=" + getType() + " model=" + jsonNode, new Object[0]);
                i = 0;
            } else {
                try {
                    marketingContentActionContext.mContentStore.put(marketingContent.getId(), marketingContent);
                    MarketingContentModel from = MarketingContentModel.from(jsonNode, marketingContentActionContext.mMapper);
                    View inflate = LayoutInflater.from(marketingContentActionContext.mUpsight).inflate(C0962R.layout.upsight_marketing_content_view, null);
                    marketingContent.setContentModel(from);
                    marketingContent.setContentView(inflate);
                    WebView webView = (WebView) inflate.findViewById(C0962R.id.upsight_marketing_content_view_web_view);
                    ((ImageView) inflate.findViewById(C0962R.id.upsight_marketing_content_view_close_button)).setOnClickListener(new C09811(marketingContent));
                    webView.getSettings().setJavaScriptEnabled(true);
                    webView.setWebViewClient(marketingContentActionContext.mContentTemplateWebViewClientFactory.create(marketingContent));
                    webView.loadUrl(marketingContent.getContentModel().getTemplateUrl());
                    i = 1;
                } catch (Throwable e2) {
                    marketingContentActionContext.mLogger.m200e(getClass().getSimpleName(), e2, "Action execution failed actionType=" + getType() + " model=" + jsonNode, new Object[0]);
                    i = 0;
                }
            }
            Object optParamString;
            if (i != 0) {
                optParamString = optParamString(THEN_TRIGGER);
                if (!TextUtils.isEmpty(optParamString)) {
                    marketingContent.executeActions(optParamString);
                }
            } else {
                optParamString = optParamString(ELSE_TRIGGER);
                if (!TextUtils.isEmpty(optParamString)) {
                    marketingContent.executeActions(optParamString);
                }
            }
            marketingContent.signalActionCompleted(((MarketingContentActionContext) getActionContext()).mBus);
        }
    }

    static {
        FACTORY_MAP = new C09781();
    }

    private MarketingContentActions() {
    }
}
