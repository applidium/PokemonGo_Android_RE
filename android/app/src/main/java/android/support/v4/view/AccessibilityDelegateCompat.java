package android.support.v4.view;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompatIcs.AccessibilityDelegateBridge;
import android.support.v4.view.AccessibilityDelegateCompatJellyBean.AccessibilityDelegateBridgeJellyBean;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public class AccessibilityDelegateCompat {
    private static final Object DEFAULT_DELEGATE;
    private static final AccessibilityDelegateImpl IMPL;
    final Object mBridge;

    interface AccessibilityDelegateImpl {
        boolean dispatchPopulateAccessibilityEvent(Object obj, View view, AccessibilityEvent accessibilityEvent);

        AccessibilityNodeProviderCompat getAccessibilityNodeProvider(Object obj, View view);

        Object newAccessiblityDelegateBridge(AccessibilityDelegateCompat accessibilityDelegateCompat);

        Object newAccessiblityDelegateDefaultImpl();

        void onInitializeAccessibilityEvent(Object obj, View view, AccessibilityEvent accessibilityEvent);

        void onInitializeAccessibilityNodeInfo(Object obj, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

        void onPopulateAccessibilityEvent(Object obj, View view, AccessibilityEvent accessibilityEvent);

        boolean onRequestSendAccessibilityEvent(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent);

        boolean performAccessibilityAction(Object obj, View view, int i, Bundle bundle);

        void sendAccessibilityEvent(Object obj, View view, int i);

        void sendAccessibilityEventUnchecked(Object obj, View view, AccessibilityEvent accessibilityEvent);
    }

    static class AccessibilityDelegateStubImpl implements AccessibilityDelegateImpl {
        AccessibilityDelegateStubImpl() {
        }

        public boolean dispatchPopulateAccessibilityEvent(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            return false;
        }

        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(Object obj, View view) {
            return null;
        }

        public Object newAccessiblityDelegateBridge(AccessibilityDelegateCompat accessibilityDelegateCompat) {
            return null;
        }

        public Object newAccessiblityDelegateDefaultImpl() {
            return null;
        }

        public void onInitializeAccessibilityEvent(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        }

        public void onInitializeAccessibilityNodeInfo(Object obj, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        public void onPopulateAccessibilityEvent(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        }

        public boolean onRequestSendAccessibilityEvent(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return true;
        }

        public boolean performAccessibilityAction(Object obj, View view, int i, Bundle bundle) {
            return false;
        }

        public void sendAccessibilityEvent(Object obj, View view, int i) {
        }

        public void sendAccessibilityEventUnchecked(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        }
    }

    static class AccessibilityDelegateIcsImpl extends AccessibilityDelegateStubImpl {

        /* renamed from: android.support.v4.view.AccessibilityDelegateCompat.AccessibilityDelegateIcsImpl.1 */
        class C00791 implements AccessibilityDelegateBridge {
            final /* synthetic */ AccessibilityDelegateCompat val$compat;

            C00791(AccessibilityDelegateCompat accessibilityDelegateCompat) {
                this.val$compat = accessibilityDelegateCompat;
            }

            public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                return this.val$compat.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }

            public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                this.val$compat.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }

            public void onInitializeAccessibilityNodeInfo(View view, Object obj) {
                this.val$compat.onInitializeAccessibilityNodeInfo(view, new AccessibilityNodeInfoCompat(obj));
            }

            public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                this.val$compat.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }

            public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                return this.val$compat.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }

            public void sendAccessibilityEvent(View view, int i) {
                this.val$compat.sendAccessibilityEvent(view, i);
            }

            public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                this.val$compat.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        }

        AccessibilityDelegateIcsImpl() {
        }

        public boolean dispatchPopulateAccessibilityEvent(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            return AccessibilityDelegateCompatIcs.dispatchPopulateAccessibilityEvent(obj, view, accessibilityEvent);
        }

        public Object newAccessiblityDelegateBridge(AccessibilityDelegateCompat accessibilityDelegateCompat) {
            return AccessibilityDelegateCompatIcs.newAccessibilityDelegateBridge(new C00791(accessibilityDelegateCompat));
        }

        public Object newAccessiblityDelegateDefaultImpl() {
            return AccessibilityDelegateCompatIcs.newAccessibilityDelegateDefaultImpl();
        }

        public void onInitializeAccessibilityEvent(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompatIcs.onInitializeAccessibilityEvent(obj, view, accessibilityEvent);
        }

        public void onInitializeAccessibilityNodeInfo(Object obj, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityDelegateCompatIcs.onInitializeAccessibilityNodeInfo(obj, view, accessibilityNodeInfoCompat.getInfo());
        }

        public void onPopulateAccessibilityEvent(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompatIcs.onPopulateAccessibilityEvent(obj, view, accessibilityEvent);
        }

        public boolean onRequestSendAccessibilityEvent(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return AccessibilityDelegateCompatIcs.onRequestSendAccessibilityEvent(obj, viewGroup, view, accessibilityEvent);
        }

        public void sendAccessibilityEvent(Object obj, View view, int i) {
            AccessibilityDelegateCompatIcs.sendAccessibilityEvent(obj, view, i);
        }

        public void sendAccessibilityEventUnchecked(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompatIcs.sendAccessibilityEventUnchecked(obj, view, accessibilityEvent);
        }
    }

    static class AccessibilityDelegateJellyBeanImpl extends AccessibilityDelegateIcsImpl {

        /* renamed from: android.support.v4.view.AccessibilityDelegateCompat.AccessibilityDelegateJellyBeanImpl.1 */
        class C00801 implements AccessibilityDelegateBridgeJellyBean {
            final /* synthetic */ AccessibilityDelegateCompat val$compat;

            C00801(AccessibilityDelegateCompat accessibilityDelegateCompat) {
                this.val$compat = accessibilityDelegateCompat;
            }

            public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                return this.val$compat.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }

            public Object getAccessibilityNodeProvider(View view) {
                AccessibilityNodeProviderCompat accessibilityNodeProvider = this.val$compat.getAccessibilityNodeProvider(view);
                return accessibilityNodeProvider != null ? accessibilityNodeProvider.getProvider() : null;
            }

            public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                this.val$compat.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }

            public void onInitializeAccessibilityNodeInfo(View view, Object obj) {
                this.val$compat.onInitializeAccessibilityNodeInfo(view, new AccessibilityNodeInfoCompat(obj));
            }

            public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                this.val$compat.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }

            public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                return this.val$compat.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }

            public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
                return this.val$compat.performAccessibilityAction(view, i, bundle);
            }

            public void sendAccessibilityEvent(View view, int i) {
                this.val$compat.sendAccessibilityEvent(view, i);
            }

            public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                this.val$compat.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        }

        AccessibilityDelegateJellyBeanImpl() {
        }

        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(Object obj, View view) {
            Object accessibilityNodeProvider = AccessibilityDelegateCompatJellyBean.getAccessibilityNodeProvider(obj, view);
            return accessibilityNodeProvider != null ? new AccessibilityNodeProviderCompat(accessibilityNodeProvider) : null;
        }

        public Object newAccessiblityDelegateBridge(AccessibilityDelegateCompat accessibilityDelegateCompat) {
            return AccessibilityDelegateCompatJellyBean.newAccessibilityDelegateBridge(new C00801(accessibilityDelegateCompat));
        }

        public boolean performAccessibilityAction(Object obj, View view, int i, Bundle bundle) {
            return AccessibilityDelegateCompatJellyBean.performAccessibilityAction(obj, view, i, bundle);
        }
    }

    static {
        if (VERSION.SDK_INT >= 16) {
            IMPL = new AccessibilityDelegateJellyBeanImpl();
        } else if (VERSION.SDK_INT >= 14) {
            IMPL = new AccessibilityDelegateIcsImpl();
        } else {
            IMPL = new AccessibilityDelegateStubImpl();
        }
        DEFAULT_DELEGATE = IMPL.newAccessiblityDelegateDefaultImpl();
    }

    public AccessibilityDelegateCompat() {
        this.mBridge = IMPL.newAccessiblityDelegateBridge(this);
    }

    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return IMPL.dispatchPopulateAccessibilityEvent(DEFAULT_DELEGATE, view, accessibilityEvent);
    }

    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        return IMPL.getAccessibilityNodeProvider(DEFAULT_DELEGATE, view);
    }

    Object getBridge() {
        return this.mBridge;
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        IMPL.onInitializeAccessibilityEvent(DEFAULT_DELEGATE, view, accessibilityEvent);
    }

    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        IMPL.onInitializeAccessibilityNodeInfo(DEFAULT_DELEGATE, view, accessibilityNodeInfoCompat);
    }

    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        IMPL.onPopulateAccessibilityEvent(DEFAULT_DELEGATE, view, accessibilityEvent);
    }

    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return IMPL.onRequestSendAccessibilityEvent(DEFAULT_DELEGATE, viewGroup, view, accessibilityEvent);
    }

    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        return IMPL.performAccessibilityAction(DEFAULT_DELEGATE, view, i, bundle);
    }

    public void sendAccessibilityEvent(View view, int i) {
        IMPL.sendAccessibilityEvent(DEFAULT_DELEGATE, view, i);
    }

    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        IMPL.sendAccessibilityEventUnchecked(DEFAULT_DELEGATE, view, accessibilityEvent);
    }
}
