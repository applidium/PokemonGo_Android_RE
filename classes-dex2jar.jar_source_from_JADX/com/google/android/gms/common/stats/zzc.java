package com.google.android.gms.common.stats;

import com.google.android.gms.internal.zzlr;
import spacemadness.com.lunarconsole.BuildConfig;

public final class zzc {
    public static zzlr<Integer> zzahG;

    public static final class zza {
        public static zzlr<Integer> zzahH;
        public static zzlr<String> zzahI;
        public static zzlr<String> zzahJ;
        public static zzlr<String> zzahK;
        public static zzlr<String> zzahL;
        public static zzlr<Long> zzahM;

        static {
            zzahH = zzlr.zza("gms:common:stats:connections:level", Integer.valueOf(zzd.LOG_LEVEL_OFF));
            zzahI = zzlr.zzu("gms:common:stats:connections:ignored_calling_processes", BuildConfig.FLAVOR);
            zzahJ = zzlr.zzu("gms:common:stats:connections:ignored_calling_services", BuildConfig.FLAVOR);
            zzahK = zzlr.zzu("gms:common:stats:connections:ignored_target_processes", BuildConfig.FLAVOR);
            zzahL = zzlr.zzu("gms:common:stats:connections:ignored_target_services", "com.google.android.gms.auth.GetToken");
            zzahM = zzlr.zza("gms:common:stats:connections:time_out_duration", Long.valueOf(MarketingContentStoreImpl.DEFAULT_TIME_TO_LIVE_MS));
        }
    }

    public static final class zzb {
        public static zzlr<Integer> zzahH;
        public static zzlr<Long> zzahM;

        static {
            zzahH = zzlr.zza("gms:common:stats:wakeLocks:level", Integer.valueOf(zzd.LOG_LEVEL_OFF));
            zzahM = zzlr.zza("gms:common:stats:wakelocks:time_out_duration", Long.valueOf(MarketingContentStoreImpl.DEFAULT_TIME_TO_LIVE_MS));
        }
    }

    static {
        zzahG = zzlr.zza("gms:common:stats:max_num_of_events", Integer.valueOf(100));
    }
}
