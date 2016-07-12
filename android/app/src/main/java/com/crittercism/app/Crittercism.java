package com.crittercism.app;

import android.app.AlertDialog;
import android.content.Context;
import android.location.Location;
import android.os.Build.VERSION;
import com.crittercism.integrations.PluginException;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.voxelbusters.nativeplugins.defines.Keys.Ui;
import crittercism.android.az;
import crittercism.android.az.C10071;
import crittercism.android.az.C10104;
import crittercism.android.az.C10137;
import crittercism.android.bc;
import crittercism.android.bg;
import crittercism.android.bn.C1030a;
import crittercism.android.cf;
import crittercism.android.cf.C1063a;
import crittercism.android.dk;
import crittercism.android.dq;
import crittercism.android.dt;
import crittercism.android.dx;
import java.lang.reflect.Array;
import java.net.URL;
import org.json.JSONObject;
import spacemadness.com.lunarconsole.C1401R;

public class Crittercism {
    private Crittercism() {
    }

    public static void _logCrashException(String str, String str2) {
        if (str == null || str2 == null) {
            try {
                dx.m754b("Unable to handle application crash. Missing parameters");
                return;
            } catch (Throwable th) {
                dx.m752a(th);
                return;
            }
        }
        new StringBuilder("_logCrashException(msg, stack) called: ").append(str).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(str2);
        dx.m753b();
        _logCrashException(new PluginException(str, str2));
    }

    public static void _logCrashException(String str, String str2, String str3) {
        if (str == null || str2 == null || str3 == null) {
            try {
                dx.m754b("Unable to handle application crash. Missing parameters");
                return;
            } catch (Throwable th) {
                dx.m752a(th);
                return;
            }
        }
        new StringBuilder("_logCrashException(name, msg, stack) called: ").append(str).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(str2).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(str3);
        dx.m753b();
        _logCrashException(new PluginException(str, str2, str3));
    }

    public static void _logCrashException(String str, String str2, String[] strArr, String[] strArr2, String[] strArr3, int[] iArr) {
        try {
            new StringBuilder("_logCrashException(String, String, String[], String[], String[], int[]) called: ").append(str).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(str2);
            dx.m753b();
            if (str == null || str2 == null || strArr == null || strArr2 == null || strArr3 == null || iArr == null) {
                dx.m754b("Unable to handle application crash. Missing parameters");
                return;
            }
            if (m22a(strArr, strArr2, strArr3, iArr)) {
                _logCrashException(new PluginException(str, str2, strArr, strArr2, strArr3, iArr));
            } else {
                dx.m754b("Unable to handle application crash. Missing stack elements");
            }
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    @Deprecated
    public static void _logCrashException(Throwable th) {
        try {
            new StringBuilder("_logCrashException(Throwable) called with throwable: ").append(th.getMessage());
            dx.m753b();
            if (az.m375A().f369b) {
                az.m375A().m395a(th);
            } else {
                m23b("_logCrashException");
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th2) {
            dx.m752a(th2);
        }
    }

    public static void _logHandledException(String str, String str2, String str3) {
        try {
            new StringBuilder("_logHandledException(name, msg, stack) called: ").append(str).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(str2).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(str3);
            dx.m753b();
            if (str == null || str2 == null || str3 == null) {
                dx.m757c("Calling logHandledException with null parameter(s). Nothing will be reported to Crittercism");
            } else {
                logHandledException(new PluginException(str, str2, str3));
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public static void _logHandledException(String str, String str2, String[] strArr, String[] strArr2, String[] strArr3, int[] iArr) {
        try {
            new StringBuilder("_logHandledException(name, msg, classes, methods, files, lines) called: ").append(str);
            dx.m753b();
            if (str == null || str2 == null || strArr == null) {
                dx.m757c("Calling logHandledException with null parameter(s). Nothing will be reported to Crittercism");
            } else {
                logHandledException(new PluginException(str, str2, strArr, strArr2, strArr3, iArr));
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    private static void m21a(String str) {
        dx.m755b("Crittercism cannot be initialized", new NullPointerException(str + " was null"));
    }

    private static boolean m22a(Object... objArr) {
        if (objArr.length <= 0 || objArr[0] == null) {
            return false;
        }
        int length = Array.getLength(objArr[0]);
        int i = 1;
        while (i < objArr.length) {
            if (objArr[i] == null || Array.getLength(objArr[i]) != length) {
                return false;
            }
            i++;
        }
        return true;
    }

    private static void m23b(String str) {
        dx.m755b("Must initialize Crittercism before calling " + Crittercism.class.getName() + "." + str + "().  Request is being ignored...", new IllegalStateException());
    }

    public static void beginTransaction(String str) {
        try {
            az A = az.m375A();
            if (A.f387t) {
                dx.m757c("Transactions are not supported for services. Ignoring Crittercism.beginTransaction() call for " + str + ".");
                return;
            }
            Transaction a = Transaction.m30a(str);
            if (a instanceof bg) {
                synchronized (A.f393z) {
                    Transaction transaction = (Transaction) A.f393z.remove(str);
                    if (transaction != null) {
                        ((bg) transaction).m497h();
                    }
                    if (A.f393z.size() > 50) {
                        dx.m757c("Crittercism only supports a maximum of 50 concurrent transactions. Ignoring Crittercism.beginTransaction() call for " + str + ".");
                        return;
                    }
                    A.f393z.put(str, a);
                    a.m31a();
                }
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public static boolean didCrashOnLastLoad() {
        boolean z = false;
        try {
            az A = az.m375A();
            if (!A.f369b) {
                m23b("didCrashOnLoad");
            } else if (!A.m379B()) {
                A.f372e.block();
                z = dq.f750a;
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
        return z;
    }

    public static void endTransaction(String str) {
        try {
            az A = az.m375A();
            if (A.f387t) {
                dx.m757c("Transactions are not supported for services. Ignoring Crittercism.endTransaction() call for " + str + ".");
                return;
            }
            Transaction transaction;
            synchronized (A.f393z) {
                transaction = (Transaction) A.f393z.remove(str);
            }
            if (transaction != null) {
                transaction.m33b();
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public static void failTransaction(String str) {
        try {
            az A = az.m375A();
            if (A.f387t) {
                dx.m757c("Transactions are not supported for services. Ignoring Crittercism.failTransaction() call for " + str + ".");
                return;
            }
            Transaction transaction;
            synchronized (A.f393z) {
                transaction = (Transaction) A.f393z.remove(str);
            }
            if (transaction != null) {
                transaction.m34c();
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public static AlertDialog generateRateMyAppAlertDialog(Context context) {
        AlertDialog alertDialog = null;
        try {
            String b;
            String c;
            az A = az.m375A();
            dt dtVar = A.f359A;
            if (A.f359A != null) {
                b = A.f359A.m735b();
                c = A.f359A.m736c();
            } else {
                b = null;
                c = null;
            }
            alertDialog = A.m383a(context, c, b);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
        return alertDialog;
    }

    public static AlertDialog generateRateMyAppAlertDialog(Context context, String str, String str2) {
        try {
            return az.m375A().m383a(context, str, str2);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            return null;
        }
    }

    public static boolean getOptOutStatus() {
        boolean z = false;
        try {
            az A = az.m375A();
            if (A.f369b) {
                z = A.m379B();
            } else {
                m23b("getOptOutStatus");
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
        return z;
    }

    public static int getTransactionValue(String str) {
        try {
            return az.m375A().m397b(str);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            return -1;
        }
    }

    public static void initialize(Context context, String str) {
        synchronized (Crittercism.class) {
            try {
            } finally {
                Class cls = Crittercism.class;
            }
        }
        Object crittercismConfig = new CrittercismConfig();
        initialize(context, str, crittercismConfig);
    }

    public static void initialize(Context context, String str, CrittercismConfig crittercismConfig) {
        synchronized (Crittercism.class) {
            if (str == null) {
                try {
                    m21a(String.class.getCanonicalName());
                } catch (C1030a e) {
                    throw new IllegalArgumentException("Crittercism cannot be initialized. " + e.getMessage());
                } catch (ThreadDeath e2) {
                    throw e2;
                } catch (Throwable th) {
                    Class cls = Crittercism.class;
                }
            } else if (context == null) {
                m21a(Context.class.getCanonicalName());
            } else if (crittercismConfig == null) {
                m21a(CrittercismConfig.class.getCanonicalName());
            } else if (!az.m375A().f369b) {
                long nanoTime = System.nanoTime();
                az.m375A().m386a(context, str, crittercismConfig);
                new StringBuilder("Crittercism finished initializing in ").append((System.nanoTime() - nanoTime) / 1000000).append("ms");
                dx.m753b();
            }
        }
    }

    public static void leaveBreadcrumb(String str) {
        try {
            if (!az.m375A().f369b) {
                m23b("leaveBreadcrumb");
            } else if (str == null) {
                dx.m755b("Cannot leave null breadcrumb", new NullPointerException());
            } else {
                az A = az.m375A();
                if (!A.f373f.m747b()) {
                    Runnable c10137 = new C10137(A, new cf(str, C1063a.NORMAL));
                    if (!A.f384q.m708a(c10137)) {
                        new StringBuilder("SENDING ").append(str).append(" TO EXECUTOR");
                        dx.m753b();
                        A.f386s.execute(c10137);
                    }
                }
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public static void logHandledException(Throwable th) {
        try {
            if (!az.m375A().f369b) {
                m23b("logHandledException");
            } else if (!az.m375A().f373f.m747b()) {
                az.m375A().m400b(th);
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th2) {
            dx.m752a(th2);
        }
    }

    public static void logNetworkRequest(String str, URL url, long j, long j2, long j3, int i, Exception exception) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            if (!az.m375A().f369b) {
                m23b("logEndpoint");
            } else if (!az.m375A().f373f.m747b()) {
                az.m375A().m394a(str, url, j, j2, j3, i, exception, currentTimeMillis - j);
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public static void performRateMyAppButtonAction(CritterRateMyAppButtons critterRateMyAppButtons) {
        try {
            if (az.m375A().f373f.m747b()) {
                dx.m757c("User has opted out of crittercism.  performRateMyAppButtonAction exiting.");
                return;
            }
            az A = az.m375A();
            if (VERSION.SDK_INT < 5) {
                dx.m757c("Rate my app not supported below api level 5");
                return;
            }
            String D = A.m381D();
            if (D == null) {
                dx.m754b("Cannot create proper URI to open app market.  Returning null.");
                return;
            }
            switch (C10104.f344a[critterRateMyAppButtons.ordinal()]) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    try {
                        A.m391a(D);
                    } catch (Exception e) {
                        dx.m757c("performRateMyAppButtonAction(CritterRateMyAppButtons.YES) failed.  Email support@crittercism.com.");
                        dx.m756c();
                    }
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    try {
                        A.m380C();
                    } catch (Exception e2) {
                        dx.m757c("performRateMyAppButtonAction(CritterRateMyAppButtons.NO) failed.  Email support@crittercism.com.");
                    }
                default:
            }
        } catch (ThreadDeath e3) {
            throw e3;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public static void sendAppLoadData() {
        try {
            CrittercismConfig crittercismConfig = az.m375A().f388u;
            if (crittercismConfig == null) {
                m23b("sendAppLoadData");
            } else if (!crittercismConfig.delaySendingAppLoad()) {
                dx.m750a("sendAppLoadData() will only send data to Crittercism if \"delaySendingAppLoad\" is set to true in the configuration settings you include in the init call.");
            } else if (!az.m375A().f373f.m747b()) {
                az A = az.m375A();
                if (!A.f388u.delaySendingAppLoad()) {
                    dx.m757c("CrittercismConfig instance not set to delay sending app loads.");
                } else if (!A.f387t && !A.f361C) {
                    A.f361C = true;
                    Runnable c10071 = new C10071(A);
                    if (!A.f384q.m708a(c10071)) {
                        A.f386s.execute(c10071);
                    }
                }
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public static void setMetadata(JSONObject jSONObject) {
        try {
            if (az.m375A().f369b) {
                az.m375A().m396a(jSONObject);
            } else {
                m23b("setMetadata");
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public static void setOptOutStatus(boolean z) {
        try {
            if (az.m375A().f369b) {
                az A = az.m375A();
                Runnable dkVar = new dk(A.f370c, A, z);
                if (!A.f384q.m708a(dkVar)) {
                    A.f386s.execute(dkVar);
                    return;
                }
                return;
            }
            m23b("setOptOutStatus");
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public static void setTransactionValue(String str, int i) {
        try {
            az A = az.m375A();
            if (A.f387t) {
                dx.m757c("Transactions are not supported for services. Ignoring Crittercism.setTransactionValue() call for " + str + ".");
                return;
            }
            synchronized (A.f393z) {
                Transaction transaction = (Transaction) A.f393z.get(str);
                if (transaction != null) {
                    transaction.m32a(i);
                }
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public static void setUsername(String str) {
        try {
            if (!az.m375A().f369b) {
                m23b("setUsername");
            } else if (str == null) {
                dx.m757c("Crittercism.setUsername() given invalid parameter: null");
            } else {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt(Ui.USER_NAME, str);
                    az.m375A().m396a(jSONObject);
                } catch (Throwable e) {
                    dx.m755b("Crittercism.setUsername()", e);
                }
            }
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable e3) {
            dx.m752a(e3);
        }
    }

    public static void updateLocation(Location location) {
        if (!az.m375A().f369b) {
            m23b("updateLocation");
        } else if (location == null) {
            dx.m755b("Cannot leave null location", new NullPointerException());
        } else {
            bc.m449a(location);
        }
    }
}
