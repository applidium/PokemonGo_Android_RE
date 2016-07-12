package com.crittercism.app;

import crittercism.android.az;

public abstract class Transaction {
    public az f25a;

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.crittercism.app.Transaction m30a(java.lang.String r2) {
        /*
        if (r2 == 0) goto L_0x000a;
    L_0x0002:
        if (r2 == 0) goto L_0x001c;
    L_0x0004:
        r0 = r2.length();	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        if (r0 != 0) goto L_0x001c;
    L_0x000a:
        r0 = new java.lang.IllegalStateException;	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        r1 = "Transaction created with null/zero-length name";
        r0.<init>(r1);	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        r1 = "Transaction was created with a null/zero-length name. Returning no-op transaction";
        crittercism.android.dx.m755b(r1, r0);	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        r0 = new crittercism.android.be;	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        r0.<init>();	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
    L_0x001b:
        return r0;
    L_0x001c:
        r1 = crittercism.android.az.m375A();	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        r0 = r1.f369b;	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        if (r0 == 0) goto L_0x0042;
    L_0x0024:
        r0 = r1.m379B();	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        if (r0 == 0) goto L_0x0032;
    L_0x002a:
        r0 = new crittercism.android.be;	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        r0.<init>();	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        goto L_0x001b;
    L_0x0030:
        r0 = move-exception;
        throw r0;
    L_0x0032:
        r0 = new crittercism.android.bg;	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        r0.<init>(r1, r2);	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        goto L_0x001b;
    L_0x0038:
        r0 = move-exception;
        crittercism.android.dx.m752a(r0);
        r0 = new crittercism.android.be;
        r0.<init>();
        goto L_0x001b;
    L_0x0042:
        r0 = new java.lang.IllegalStateException;	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        r1 = "Transaction created before Crittercism.initialize()";
        r0.<init>(r1);	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        r1 = "Transaction was created before Crittercism.initialize() was called. Returning no-op transaction";
        crittercism.android.dx.m755b(r1, r0);	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        r0 = new crittercism.android.be;	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        r0.<init>();	 Catch:{ ThreadDeath -> 0x0030, Throwable -> 0x0038 }
        goto L_0x001b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crittercism.app.Transaction.a(java.lang.String):com.crittercism.app.Transaction");
    }

    public abstract void m31a();

    public abstract void m32a(int i);

    public abstract void m33b();

    public abstract void m34c();

    public abstract int m35d();
}
