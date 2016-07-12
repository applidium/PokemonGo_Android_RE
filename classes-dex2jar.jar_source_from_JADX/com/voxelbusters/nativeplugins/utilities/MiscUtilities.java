package com.voxelbusters.nativeplugins.utilities;

import android.content.pm.ResolveInfo;
import com.voxelbusters.nativeplugins.features.sharing.SharingHelper;
import java.util.Comparator;

public class MiscUtilities {
    public static Comparator<ResolveInfo> resolveInfoComparator;

    /* renamed from: com.voxelbusters.nativeplugins.utilities.MiscUtilities.1 */
    class C10021 implements Comparator<ResolveInfo> {
        C10021() {
        }

        public int compare(ResolveInfo resolveInfo, ResolveInfo resolveInfo2) {
            boolean isSocialNetwork = SharingHelper.isSocialNetwork(resolveInfo.activityInfo.packageName);
            boolean isSocialNetwork2 = SharingHelper.isSocialNetwork(resolveInfo2.activityInfo.packageName);
            return ((isSocialNetwork && isSocialNetwork2) || isSocialNetwork) ? -1 : isSocialNetwork2 ? 1 : 0;
        }
    }

    static {
        resolveInfoComparator = new C10021();
    }
}
