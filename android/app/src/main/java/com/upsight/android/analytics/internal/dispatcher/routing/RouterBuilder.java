package com.upsight.android.analytics.internal.dispatcher.routing;

import com.upsight.android.analytics.internal.dispatcher.delivery.Queue;
import com.upsight.android.analytics.internal.dispatcher.delivery.Queue.Trash;
import com.upsight.android.analytics.internal.dispatcher.delivery.QueueBuilder;
import com.upsight.android.analytics.internal.dispatcher.delivery.QueueConfig;
import com.upsight.android.analytics.internal.dispatcher.schema.Schema;
import com.upsight.android.analytics.internal.dispatcher.util.ByFilterSelector;
import com.upsight.android.analytics.internal.dispatcher.util.Selector;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import rx.Scheduler;

public class RouterBuilder {
    private QueueBuilder mQueueBuilder;
    private Scheduler mScheduler;

    RouterBuilder(Scheduler scheduler, QueueBuilder queueBuilder) {
        this.mScheduler = scheduler;
        this.mQueueBuilder = queueBuilder;
    }

    private Map<String, Queue> buildQueues(RoutingConfig routingConfig, Selector<Schema> selector, Selector<Schema> selector2) {
        Map<String, Queue> hashMap = new HashMap();
        Queue trash = new Trash();
        hashMap.put(trash.getName(), trash);
        for (Entry entry : routingConfig.getQueueConfigs().entrySet()) {
            hashMap.put(entry.getKey(), this.mQueueBuilder.build((String) entry.getKey(), (QueueConfig) entry.getValue(), selector, selector2));
        }
        return hashMap;
    }

    private Map<String, Route> buildRoutes(RoutingConfig routingConfig, Map<String, Queue> map) {
        Map<String, Route> hashMap = new HashMap();
        for (Entry entry : routingConfig.getRouters().entrySet()) {
            List linkedList = new LinkedList();
            for (String str : (List) entry.getValue()) {
                linkedList.add(new RouteStep((Queue) map.get(str)));
            }
            hashMap.put(entry.getKey(), new Route(linkedList));
        }
        return hashMap;
    }

    public Router build(RoutingConfig routingConfig, Selector<Schema> selector, Selector<Schema> selector2, RoutingListener routingListener) {
        Map buildQueues = buildQueues(routingConfig, selector, selector2);
        Router router = new Router(this.mScheduler, new ByFilterSelector(buildRoutes(routingConfig, buildQueues)), routingListener);
        for (Queue queue : buildQueues.values()) {
            queue.setOnDeliveryListener(router);
            queue.setOnResponseListener(router);
        }
        return router;
    }
}
