package com.upsight.android.analytics.internal.dispatcher.delivery;

import android.text.TextUtils;
import com.upsight.android.analytics.internal.DataStoreRecord;
import com.upsight.android.analytics.internal.dispatcher.delivery.Batcher.Factory;
import com.upsight.android.analytics.internal.dispatcher.routing.Packet;
import com.upsight.android.analytics.internal.dispatcher.schema.Schema;
import com.upsight.android.analytics.internal.dispatcher.util.Selector;
import java.util.HashMap;
import java.util.Map;

public class Queue {
    private BatchSender mBatchSender;
    private Factory mBatcherFactory;
    private Map<Schema, Batcher> mBatchers;
    private String mName;
    private Selector<Schema> mSchemaSelectorByName;
    private Selector<Schema> mSchemaSelectorByType;

    public static final class Trash extends Queue {
        public static final String NAME = "trash";
        private OnDeliveryListener mOnDeliveryListener;

        public Trash() {
            super(NAME, null, null, null, null);
        }

        public void enqueuePacket(Packet packet) {
            packet.markTrashed();
            OnDeliveryListener onDeliveryListener = this.mOnDeliveryListener;
            if (onDeliveryListener != null) {
                onDeliveryListener.onDelivery(packet);
            }
        }

        public void setOnDeliveryListener(OnDeliveryListener onDeliveryListener) {
            this.mOnDeliveryListener = onDeliveryListener;
        }

        public void setOnResponseListener(OnResponseListener onResponseListener) {
        }
    }

    Queue(String str, Selector<Schema> selector, Selector<Schema> selector2, Factory factory, BatchSender batchSender) {
        this.mName = str;
        this.mSchemaSelectorByName = selector;
        this.mSchemaSelectorByType = selector2;
        this.mBatchers = new HashMap();
        this.mBatcherFactory = factory;
        this.mBatchSender = batchSender;
    }

    private Schema selectSchema(DataStoreRecord dataStoreRecord) {
        Schema schema = null;
        Object identifiers = dataStoreRecord.getIdentifiers();
        if (!TextUtils.isEmpty(identifiers)) {
            schema = (Schema) this.mSchemaSelectorByName.select(identifiers);
        }
        return schema == null ? (Schema) this.mSchemaSelectorByType.select(dataStoreRecord.getSourceType()) : schema;
    }

    public void enqueuePacket(Packet packet) {
        Schema selectSchema = selectSchema(packet.getRecord());
        Batcher batcher = (Batcher) this.mBatchers.get(selectSchema);
        if (batcher == null) {
            batcher = this.mBatcherFactory.create(selectSchema, this.mBatchSender);
            this.mBatchers.put(selectSchema, batcher);
        }
        batcher.addPacket(packet);
    }

    public String getName() {
        return this.mName;
    }

    public void setOnDeliveryListener(OnDeliveryListener onDeliveryListener) {
        this.mBatchSender.setDeliveryListener(onDeliveryListener);
    }

    public void setOnResponseListener(OnResponseListener onResponseListener) {
        this.mBatchSender.setResponseListener(onResponseListener);
    }
}
