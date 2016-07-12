package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzx;
import java.util.concurrent.TimeUnit;

public final class BatchResult implements Result {
    private final Status zzSC;
    private final PendingResult<?>[] zzaaB;

    BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.zzSC = status;
        this.zzaaB = pendingResultArr;
    }

    public Status getStatus() {
        return this.zzSC;
    }

    public <R extends Result> R take(BatchResultToken<R> batchResultToken) {
        zzx.zzb(batchResultToken.mId < this.zzaaB.length, (Object) "The result token does not belong to this batch");
        return this.zzaaB[batchResultToken.mId].await(0, TimeUnit.MILLISECONDS);
    }
}
