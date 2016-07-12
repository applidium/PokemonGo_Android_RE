package android.support.v4.media.routing;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.media.MediaRouter;
import android.media.RemoteControlClient;
import android.os.Build.VERSION;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

class MediaRouterJellybean {
    public static final int ALL_ROUTE_TYPES = 8388611;
    public static final int ROUTE_TYPE_LIVE_AUDIO = 1;
    public static final int ROUTE_TYPE_LIVE_VIDEO = 2;
    public static final int ROUTE_TYPE_USER = 8388608;
    private static final String TAG = "MediaRouterJellybean";

    public interface Callback {
        void onRouteAdded(Object obj);

        void onRouteChanged(Object obj);

        void onRouteGrouped(Object obj, Object obj2, int i);

        void onRouteRemoved(Object obj);

        void onRouteSelected(int i, Object obj);

        void onRouteUngrouped(Object obj, Object obj2);

        void onRouteUnselected(int i, Object obj);

        void onRouteVolumeChanged(Object obj);
    }

    static class CallbackProxy<T extends Callback> extends android.media.MediaRouter.Callback {
        protected final T mCallback;

        public CallbackProxy(T t) {
            this.mCallback = t;
        }

        public void onRouteAdded(MediaRouter mediaRouter, android.media.MediaRouter.RouteInfo routeInfo) {
            this.mCallback.onRouteAdded(routeInfo);
        }

        public void onRouteChanged(MediaRouter mediaRouter, android.media.MediaRouter.RouteInfo routeInfo) {
            this.mCallback.onRouteChanged(routeInfo);
        }

        public void onRouteGrouped(MediaRouter mediaRouter, android.media.MediaRouter.RouteInfo routeInfo, android.media.MediaRouter.RouteGroup routeGroup, int i) {
            this.mCallback.onRouteGrouped(routeInfo, routeGroup, i);
        }

        public void onRouteRemoved(MediaRouter mediaRouter, android.media.MediaRouter.RouteInfo routeInfo) {
            this.mCallback.onRouteRemoved(routeInfo);
        }

        public void onRouteSelected(MediaRouter mediaRouter, int i, android.media.MediaRouter.RouteInfo routeInfo) {
            this.mCallback.onRouteSelected(i, routeInfo);
        }

        public void onRouteUngrouped(MediaRouter mediaRouter, android.media.MediaRouter.RouteInfo routeInfo, android.media.MediaRouter.RouteGroup routeGroup) {
            this.mCallback.onRouteUngrouped(routeInfo, routeGroup);
        }

        public void onRouteUnselected(MediaRouter mediaRouter, int i, android.media.MediaRouter.RouteInfo routeInfo) {
            this.mCallback.onRouteUnselected(i, routeInfo);
        }

        public void onRouteVolumeChanged(MediaRouter mediaRouter, android.media.MediaRouter.RouteInfo routeInfo) {
            this.mCallback.onRouteVolumeChanged(routeInfo);
        }
    }

    public static final class GetDefaultRouteWorkaround {
        private Method mGetSystemAudioRouteMethod;

        public GetDefaultRouteWorkaround() {
            if (VERSION.SDK_INT < 16 || VERSION.SDK_INT > 17) {
                throw new UnsupportedOperationException();
            }
            try {
                this.mGetSystemAudioRouteMethod = MediaRouter.class.getMethod("getSystemAudioRoute", new Class[0]);
            } catch (NoSuchMethodException e) {
            }
        }

        public Object getDefaultRoute(Object obj) {
            MediaRouter mediaRouter = (MediaRouter) obj;
            if (this.mGetSystemAudioRouteMethod != null) {
                try {
                    return this.mGetSystemAudioRouteMethod.invoke(mediaRouter, new Object[0]);
                } catch (IllegalAccessException e) {
                } catch (InvocationTargetException e2) {
                }
            }
            return mediaRouter.getRouteAt(0);
        }
    }

    public static final class RouteCategory {
        public static CharSequence getName(Object obj, Context context) {
            return ((android.media.MediaRouter.RouteCategory) obj).getName(context);
        }

        public static List getRoutes(Object obj) {
            List arrayList = new ArrayList();
            ((android.media.MediaRouter.RouteCategory) obj).getRoutes(arrayList);
            return arrayList;
        }

        public static int getSupportedTypes(Object obj) {
            return ((android.media.MediaRouter.RouteCategory) obj).getSupportedTypes();
        }

        public static boolean isGroupable(Object obj) {
            return ((android.media.MediaRouter.RouteCategory) obj).isGroupable();
        }
    }

    public static final class RouteGroup {
        public static List getGroupedRoutes(Object obj) {
            android.media.MediaRouter.RouteGroup routeGroup = (android.media.MediaRouter.RouteGroup) obj;
            int routeCount = routeGroup.getRouteCount();
            List arrayList = new ArrayList(routeCount);
            for (int i = 0; i < routeCount; i += MediaRouterJellybean.ROUTE_TYPE_LIVE_AUDIO) {
                arrayList.add(routeGroup.getRouteAt(i));
            }
            return arrayList;
        }
    }

    public static final class RouteInfo {
        public static Object getCategory(Object obj) {
            return ((android.media.MediaRouter.RouteInfo) obj).getCategory();
        }

        public static Object getGroup(Object obj) {
            return ((android.media.MediaRouter.RouteInfo) obj).getGroup();
        }

        public static Drawable getIconDrawable(Object obj) {
            return ((android.media.MediaRouter.RouteInfo) obj).getIconDrawable();
        }

        public static CharSequence getName(Object obj, Context context) {
            return ((android.media.MediaRouter.RouteInfo) obj).getName(context);
        }

        public static int getPlaybackStream(Object obj) {
            return ((android.media.MediaRouter.RouteInfo) obj).getPlaybackStream();
        }

        public static int getPlaybackType(Object obj) {
            return ((android.media.MediaRouter.RouteInfo) obj).getPlaybackType();
        }

        public static CharSequence getStatus(Object obj) {
            return ((android.media.MediaRouter.RouteInfo) obj).getStatus();
        }

        public static int getSupportedTypes(Object obj) {
            return ((android.media.MediaRouter.RouteInfo) obj).getSupportedTypes();
        }

        public static Object getTag(Object obj) {
            return ((android.media.MediaRouter.RouteInfo) obj).getTag();
        }

        public static int getVolume(Object obj) {
            return ((android.media.MediaRouter.RouteInfo) obj).getVolume();
        }

        public static int getVolumeHandling(Object obj) {
            return ((android.media.MediaRouter.RouteInfo) obj).getVolumeHandling();
        }

        public static int getVolumeMax(Object obj) {
            return ((android.media.MediaRouter.RouteInfo) obj).getVolumeMax();
        }

        public static boolean isGroup(Object obj) {
            return obj instanceof android.media.MediaRouter.RouteGroup;
        }

        public static void requestSetVolume(Object obj, int i) {
            ((android.media.MediaRouter.RouteInfo) obj).requestSetVolume(i);
        }

        public static void requestUpdateVolume(Object obj, int i) {
            ((android.media.MediaRouter.RouteInfo) obj).requestUpdateVolume(i);
        }

        public static void setTag(Object obj, Object obj2) {
            ((android.media.MediaRouter.RouteInfo) obj).setTag(obj2);
        }
    }

    public static final class SelectRouteWorkaround {
        private Method mSelectRouteIntMethod;

        public SelectRouteWorkaround() {
            if (VERSION.SDK_INT < 16 || VERSION.SDK_INT > 17) {
                throw new UnsupportedOperationException();
            }
            try {
                Class[] clsArr = new Class[MediaRouterJellybean.ROUTE_TYPE_LIVE_VIDEO];
                clsArr[0] = Integer.TYPE;
                clsArr[MediaRouterJellybean.ROUTE_TYPE_LIVE_AUDIO] = android.media.MediaRouter.RouteInfo.class;
                this.mSelectRouteIntMethod = MediaRouter.class.getMethod("selectRouteInt", clsArr);
            } catch (NoSuchMethodException e) {
            }
        }

        public void selectRoute(Object obj, int i, Object obj2) {
            MediaRouter mediaRouter = (MediaRouter) obj;
            android.media.MediaRouter.RouteInfo routeInfo = (android.media.MediaRouter.RouteInfo) obj2;
            if ((MediaRouterJellybean.ROUTE_TYPE_USER & routeInfo.getSupportedTypes()) == 0) {
                if (this.mSelectRouteIntMethod != null) {
                    try {
                        Method method = this.mSelectRouteIntMethod;
                        Object[] objArr = new Object[MediaRouterJellybean.ROUTE_TYPE_LIVE_VIDEO];
                        objArr[0] = Integer.valueOf(i);
                        objArr[MediaRouterJellybean.ROUTE_TYPE_LIVE_AUDIO] = routeInfo;
                        method.invoke(mediaRouter, objArr);
                        return;
                    } catch (Throwable e) {
                        Log.w(MediaRouterJellybean.TAG, "Cannot programmatically select non-user route.  Media routing may not work.", e);
                    } catch (Throwable e2) {
                        Log.w(MediaRouterJellybean.TAG, "Cannot programmatically select non-user route.  Media routing may not work.", e2);
                    }
                } else {
                    Log.w(MediaRouterJellybean.TAG, "Cannot programmatically select non-user route because the platform is missing the selectRouteInt() method.  Media routing may not work.");
                }
            }
            mediaRouter.selectRoute(i, routeInfo);
        }
    }

    public static final class UserRouteInfo {
        public static void setIconDrawable(Object obj, Drawable drawable) {
            ((android.media.MediaRouter.UserRouteInfo) obj).setIconDrawable(drawable);
        }

        public static void setName(Object obj, CharSequence charSequence) {
            ((android.media.MediaRouter.UserRouteInfo) obj).setName(charSequence);
        }

        public static void setPlaybackStream(Object obj, int i) {
            ((android.media.MediaRouter.UserRouteInfo) obj).setPlaybackStream(i);
        }

        public static void setPlaybackType(Object obj, int i) {
            ((android.media.MediaRouter.UserRouteInfo) obj).setPlaybackType(i);
        }

        public static void setRemoteControlClient(Object obj, Object obj2) {
            ((android.media.MediaRouter.UserRouteInfo) obj).setRemoteControlClient((RemoteControlClient) obj2);
        }

        public static void setStatus(Object obj, CharSequence charSequence) {
            ((android.media.MediaRouter.UserRouteInfo) obj).setStatus(charSequence);
        }

        public static void setVolume(Object obj, int i) {
            ((android.media.MediaRouter.UserRouteInfo) obj).setVolume(i);
        }

        public static void setVolumeCallback(Object obj, Object obj2) {
            ((android.media.MediaRouter.UserRouteInfo) obj).setVolumeCallback((android.media.MediaRouter.VolumeCallback) obj2);
        }

        public static void setVolumeHandling(Object obj, int i) {
            ((android.media.MediaRouter.UserRouteInfo) obj).setVolumeHandling(i);
        }

        public static void setVolumeMax(Object obj, int i) {
            ((android.media.MediaRouter.UserRouteInfo) obj).setVolumeMax(i);
        }
    }

    public interface VolumeCallback {
        void onVolumeSetRequest(Object obj, int i);

        void onVolumeUpdateRequest(Object obj, int i);
    }

    static class VolumeCallbackProxy<T extends VolumeCallback> extends android.media.MediaRouter.VolumeCallback {
        protected final T mCallback;

        public VolumeCallbackProxy(T t) {
            this.mCallback = t;
        }

        public void onVolumeSetRequest(android.media.MediaRouter.RouteInfo routeInfo, int i) {
            this.mCallback.onVolumeSetRequest(routeInfo, i);
        }

        public void onVolumeUpdateRequest(android.media.MediaRouter.RouteInfo routeInfo, int i) {
            this.mCallback.onVolumeUpdateRequest(routeInfo, i);
        }
    }

    MediaRouterJellybean() {
    }

    public static void addCallback(Object obj, int i, Object obj2) {
        ((MediaRouter) obj).addCallback(i, (android.media.MediaRouter.Callback) obj2);
    }

    public static void addUserRoute(Object obj, Object obj2) {
        ((MediaRouter) obj).addUserRoute((android.media.MediaRouter.UserRouteInfo) obj2);
    }

    public static Object createCallback(Callback callback) {
        return new CallbackProxy(callback);
    }

    public static Object createRouteCategory(Object obj, String str, boolean z) {
        return ((MediaRouter) obj).createRouteCategory(str, z);
    }

    public static Object createUserRoute(Object obj, Object obj2) {
        return ((MediaRouter) obj).createUserRoute((android.media.MediaRouter.RouteCategory) obj2);
    }

    public static Object createVolumeCallback(VolumeCallback volumeCallback) {
        return new VolumeCallbackProxy(volumeCallback);
    }

    public static List getCategories(Object obj) {
        MediaRouter mediaRouter = (MediaRouter) obj;
        int categoryCount = mediaRouter.getCategoryCount();
        List arrayList = new ArrayList(categoryCount);
        for (int i = 0; i < categoryCount; i += ROUTE_TYPE_LIVE_AUDIO) {
            arrayList.add(mediaRouter.getCategoryAt(i));
        }
        return arrayList;
    }

    public static Object getMediaRouter(Context context) {
        return context.getSystemService("media_router");
    }

    public static List getRoutes(Object obj) {
        MediaRouter mediaRouter = (MediaRouter) obj;
        int routeCount = mediaRouter.getRouteCount();
        List arrayList = new ArrayList(routeCount);
        for (int i = 0; i < routeCount; i += ROUTE_TYPE_LIVE_AUDIO) {
            arrayList.add(mediaRouter.getRouteAt(i));
        }
        return arrayList;
    }

    public static Object getSelectedRoute(Object obj, int i) {
        return ((MediaRouter) obj).getSelectedRoute(i);
    }

    public static void removeCallback(Object obj, Object obj2) {
        ((MediaRouter) obj).removeCallback((android.media.MediaRouter.Callback) obj2);
    }

    public static void removeUserRoute(Object obj, Object obj2) {
        ((MediaRouter) obj).removeUserRoute((android.media.MediaRouter.UserRouteInfo) obj2);
    }

    public static void selectRoute(Object obj, int i, Object obj2) {
        ((MediaRouter) obj).selectRoute(i, (android.media.MediaRouter.RouteInfo) obj2);
    }
}
