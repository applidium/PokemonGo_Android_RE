package com.upsight.android.marketing.internal.billboard;

import android.text.TextUtils;
import android.view.ViewGroup;
import com.squareup.otto.Bus;
import com.squareup.otto.Subscribe;
import com.upsight.android.analytics.internal.session.ApplicationStatus;
import com.upsight.android.analytics.internal.session.ApplicationStatus.State;
import com.upsight.android.marketing.UpsightBillboard.Dimensions;
import com.upsight.android.marketing.UpsightBillboard.Dimensions.LayoutOrientation;
import com.upsight.android.marketing.UpsightBillboard.PresentationStyle;
import com.upsight.android.marketing.UpsightBillboardManager;
import com.upsight.android.marketing.UpsightContentMediator;
import com.upsight.android.marketing.internal.content.MarketingContent;
import com.upsight.android.marketing.internal.content.MarketingContent.ScopedAvailabilityEvent;
import com.upsight.android.marketing.internal.content.MarketingContent.ScopelessAvailabilityEvent;
import com.upsight.android.marketing.internal.content.MarketingContentActions.DestroyEvent;
import com.upsight.android.marketing.internal.content.MarketingContentActions.PurchasesEvent;
import com.upsight.android.marketing.internal.content.MarketingContentActions.RewardsEvent;
import com.upsight.android.marketing.internal.content.MarketingContentModel.Presentation;
import com.upsight.android.marketing.internal.content.MarketingContentModel.Presentation.DialogLayout;
import com.upsight.android.marketing.internal.content.MarketingContentStore;
import com.upsight.android.persistence.UpsightDataStore;
import com.upsight.android.persistence.annotation.Created;
import com.upsight.android.persistence.annotation.Updated;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

class BillboardManagerImpl implements UpsightBillboardManager {
    private final MarketingContentStore mContentStore;
    private final Map<String, Billboard> mFilledBillboards;
    private final Map<String, UpsightContentMediator> mMediators;
    private final Map<String, Billboard> mUnfilledBillboards;

    BillboardManagerImpl(UpsightDataStore upsightDataStore, MarketingContentStore marketingContentStore, Bus bus) {
        this.mUnfilledBillboards = new HashMap();
        this.mFilledBillboards = new HashMap();
        this.mMediators = new HashMap();
        this.mContentStore = marketingContentStore;
        bus.register(this);
        upsightDataStore.subscribe(this);
    }

    private void detachBillboard(String str) {
        synchronized (this) {
            Billboard billboard = (Billboard) this.mFilledBillboards.get(str);
            if (billboard != null) {
                billboard.getHandler().onDetach();
                this.mFilledBillboards.remove(str);
            }
        }
    }

    private Set<Dimensions> getDimensions(MarketingContent marketingContent) {
        Set<Dimensions> hashSet = new HashSet();
        DialogLayout dialogLayouts = marketingContent.getContentModel().getDialogLayouts();
        if (dialogLayouts != null && dialogLayouts.portrait != null && dialogLayouts.portrait.f273w > 0 && dialogLayouts.portrait.f272h > 0) {
            hashSet.add(new Dimensions(LayoutOrientation.Portrait, dialogLayouts.portrait.f273w, dialogLayouts.portrait.f272h));
        }
        if (dialogLayouts != null && dialogLayouts.landscape != null && dialogLayouts.landscape.f273w > 0 && dialogLayouts.landscape.f272h > 0) {
            hashSet.add(new Dimensions(LayoutOrientation.Landscape, dialogLayouts.landscape.f273w, dialogLayouts.landscape.f272h));
        }
        return hashSet;
    }

    private PresentationStyle getPresentationStyle(MarketingContent marketingContent) {
        String presentationStyle = marketingContent.getContentModel().getPresentationStyle();
        return Presentation.STYLE_DIALOG.equals(presentationStyle) ? PresentationStyle.Dialog : Presentation.STYLE_FULLSCREEN.equals(presentationStyle) ? PresentationStyle.Fullscreen : PresentationStyle.None;
    }

    private boolean tryAttachBillboard(String str, Billboard billboard) {
        MarketingContent marketingContent = (MarketingContent) this.mContentStore.get(str);
        if (billboard != null && billboard.getMarketingContent() == null && marketingContent != null && marketingContent.isAvailable()) {
            UpsightContentMediator upsightContentMediator = (UpsightContentMediator) this.mMediators.get(marketingContent.getContentProvider());
            if (upsightContentMediator != null && upsightContentMediator.isAvailable()) {
                ViewGroup onAttach = billboard.getHandler().onAttach(billboard.getScope(), getPresentationStyle(marketingContent), getDimensions(marketingContent));
                if (onAttach != null) {
                    marketingContent.markConsumed();
                    upsightContentMediator.displayContent(marketingContent, onAttach);
                    billboard.setMarketingContent(marketingContent);
                    this.mUnfilledBillboards.remove(billboard.getScope());
                    this.mFilledBillboards.put(str, billboard);
                    marketingContent.executeActions(MarketingContent.TRIGGER_CONTENT_DISPLAYED);
                    return true;
                }
            }
        }
        return false;
    }

    @Subscribe
    public void handleActionEvent(DestroyEvent destroyEvent) {
        synchronized (this) {
            detachBillboard(destroyEvent.mId);
        }
    }

    @Subscribe
    public void handleActionEvent(PurchasesEvent purchasesEvent) {
        synchronized (this) {
            Billboard billboard = (Billboard) this.mFilledBillboards.get(purchasesEvent.mId);
            if (billboard != null) {
                billboard.getHandler().onPurchases(purchasesEvent.mPurchases);
            }
        }
    }

    @Subscribe
    public void handleActionEvent(RewardsEvent rewardsEvent) {
        synchronized (this) {
            Billboard billboard = (Billboard) this.mFilledBillboards.get(rewardsEvent.mId);
            if (billboard != null) {
                billboard.getHandler().onRewards(rewardsEvent.mRewards);
            }
        }
    }

    @Subscribe
    public void handleAvailabilityEvent(ScopedAvailabilityEvent scopedAvailabilityEvent) {
        synchronized (this) {
            for (String str : scopedAvailabilityEvent.getScopes()) {
                if (tryAttachBillboard(scopedAvailabilityEvent.getId(), (Billboard) this.mUnfilledBillboards.get(str))) {
                    break;
                }
            }
        }
    }

    @Subscribe
    public void handleAvailabilityEvent(ScopelessAvailabilityEvent scopelessAvailabilityEvent) {
        synchronized (this) {
            if (!TextUtils.isEmpty(scopelessAvailabilityEvent.getParentId())) {
                Billboard billboard = (Billboard) this.mFilledBillboards.get(scopelessAvailabilityEvent.getParentId());
                if (billboard != null) {
                    MarketingContent marketingContent = billboard.getMarketingContent();
                    MarketingContent marketingContent2 = (MarketingContent) this.mContentStore.get(scopelessAvailabilityEvent.getId());
                    if (!(marketingContent == null || marketingContent2 == null || !marketingContent2.isAvailable())) {
                        UpsightContentMediator upsightContentMediator = (UpsightContentMediator) this.mMediators.get(marketingContent.getContentProvider());
                        UpsightContentMediator upsightContentMediator2 = (UpsightContentMediator) this.mMediators.get(marketingContent2.getContentProvider());
                        if (upsightContentMediator != null && upsightContentMediator.isAvailable() && upsightContentMediator2 != null && upsightContentMediator2.isAvailable()) {
                            marketingContent2.markConsumed();
                            billboard.getHandler().onNextView();
                            ViewGroup viewGroup = (ViewGroup) billboard.getMarketingContent().getContentView().getParent();
                            upsightContentMediator.hideContent(marketingContent, viewGroup);
                            upsightContentMediator2.displayContent(marketingContent2, viewGroup);
                            billboard.setMarketingContent(marketingContent2);
                            this.mFilledBillboards.remove(scopelessAvailabilityEvent.getParentId());
                            this.mFilledBillboards.put(scopelessAvailabilityEvent.getId(), billboard);
                            marketingContent2.executeActions(MarketingContent.TRIGGER_CONTENT_DISPLAYED);
                        }
                    }
                }
            }
        }
    }

    @Created
    @Updated
    public void onApplicationStatus(ApplicationStatus applicationStatus) {
        if (applicationStatus.getState() == State.BACKGROUND) {
            for (String str : this.mFilledBillboards.keySet()) {
                MarketingContent marketingContent = (MarketingContent) this.mContentStore.get(str);
                if (marketingContent != null) {
                    marketingContent.executeActions(MarketingContent.TRIGGER_APP_BACKGROUNDED);
                }
            }
        }
    }

    public boolean registerBillboard(Billboard billboard) {
        boolean z;
        synchronized (this) {
            z = false;
            if (billboard != null) {
                Object scope = billboard.getScope();
                if (!(TextUtils.isEmpty(scope) || billboard.getHandler() == null || this.mUnfilledBillboards.get(scope) != null)) {
                    this.mUnfilledBillboards.put(scope, billboard);
                    for (String tryAttachBillboard : this.mContentStore.getIdsForScope(scope)) {
                        if (tryAttachBillboard(tryAttachBillboard, billboard)) {
                            z = true;
                            break;
                        }
                    }
                    z = true;
                }
            }
        }
        return z;
    }

    public boolean registerContentMediator(UpsightContentMediator upsightContentMediator) {
        return (upsightContentMediator == null || TextUtils.isEmpty(upsightContentMediator.getContentProvider()) || this.mMediators.put(upsightContentMediator.getContentProvider(), upsightContentMediator) != upsightContentMediator) ? false : true;
    }

    public boolean unregisterBillboard(Billboard billboard) {
        boolean z;
        synchronized (this) {
            z = this.mUnfilledBillboards.remove(billboard.getScope()) != null;
        }
        return z;
    }
}
