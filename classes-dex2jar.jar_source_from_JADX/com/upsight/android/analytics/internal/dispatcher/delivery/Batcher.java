package com.upsight.android.analytics.internal.dispatcher.delivery;

import com.upsight.android.analytics.internal.dispatcher.delivery.BatchSender.Request;
import com.upsight.android.analytics.internal.dispatcher.routing.Packet;
import com.upsight.android.analytics.internal.dispatcher.schema.Schema;
import java.util.concurrent.TimeUnit;
import rx.Scheduler;
import rx.Subscription;
import rx.functions.Action0;

public class Batcher {
    private static final int DISABLE_AGING_MAX_AGE = 0;
    private Scheduler mAgingExecutor;
    private Action0 mAgingRunnable;
    private Subscription mAgingTask;
    private BatchSender mBatchSender;
    private Config mConfig;
    private Batch mCurrentBatch;
    private Schema mSchema;

    /* renamed from: com.upsight.android.analytics.internal.dispatcher.delivery.Batcher.1 */
    class C08931 implements Action0 {
        C08931() {
        }

        public void call() {
            Batcher.this.sendCurrentBatch();
        }
    }

    public static class Config {
        public final int batchCapacity;
        public final int maxBatchAge;

        public Config(int i, int i2) {
            this.batchCapacity = i;
            this.maxBatchAge = i2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Config config = (Config) obj;
            return config.batchCapacity == this.batchCapacity && config.maxBatchAge == this.maxBatchAge;
        }

        public boolean isValid() {
            return this.maxBatchAge >= 0 && this.batchCapacity > 0;
        }
    }

    public interface Factory {
        Batcher create(Schema schema, BatchSender batchSender);
    }

    Batcher(Config config, Schema schema, BatchSender batchSender, Scheduler scheduler) {
        this.mAgingRunnable = new C08931();
        this.mSchema = schema;
        this.mBatchSender = batchSender;
        this.mConfig = config;
        this.mAgingExecutor = scheduler;
    }

    private void sendCurrentBatch() {
        synchronized (this) {
            Batch batch = this.mCurrentBatch;
            if (batch != null) {
                this.mCurrentBatch = null;
                if (this.mAgingTask != null) {
                    this.mAgingTask.unsubscribe();
                    this.mAgingTask = null;
                }
                this.mBatchSender.submitRequest(new Request(batch, this.mSchema));
            }
        }
    }

    public void addPacket(Packet packet) {
        synchronized (this) {
            if (this.mCurrentBatch == null) {
                this.mCurrentBatch = new Batch(this.mConfig.batchCapacity);
                if (this.mConfig.maxBatchAge != 0) {
                    this.mAgingTask = this.mAgingExecutor.createWorker().schedule(this.mAgingRunnable, (long) this.mConfig.maxBatchAge, TimeUnit.SECONDS);
                }
            }
            this.mCurrentBatch.addPacket(packet);
            if (this.mCurrentBatch.capacityLeft() == 0) {
                sendCurrentBatch();
            }
        }
    }
}
