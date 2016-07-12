package android.support.v4.media.routing;

import android.media.MediaRouter;
import android.media.MediaRouter.Callback;

class MediaRouterJellybeanMr2 extends MediaRouterJellybeanMr1 {

    public static final class RouteInfo {
        public static CharSequence getDescription(Object obj) {
            return ((android.media.MediaRouter.RouteInfo) obj).getDescription();
        }

        public static boolean isConnecting(Object obj) {
            return ((android.media.MediaRouter.RouteInfo) obj).isConnecting();
        }
    }

    public static final class UserRouteInfo {
        public static void setDescription(Object obj, CharSequence charSequence) {
            ((android.media.MediaRouter.UserRouteInfo) obj).setDescription(charSequence);
        }
    }

    MediaRouterJellybeanMr2() {
    }

    public static void addCallback(Object obj, int i, Object obj2, int i2) {
        ((MediaRouter) obj).addCallback(i, (Callback) obj2, i2);
    }

    public static Object getDefaultRoute(Object obj) {
        return ((MediaRouter) obj).getDefaultRoute();
    }
}
