package com.squareup.otto;

import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;

public class Bus {
    public static final String DEFAULT_IDENTIFIER = "default";
    private final ThreadEnforcer enforcer;
    private final ThreadLocal<ConcurrentLinkedQueue<EventWithHandler>> eventsToDispatch;
    private final ConcurrentMap<Class<?>, Set<Class<?>>> flattenHierarchyCache;
    private final HandlerFinder handlerFinder;
    private final ConcurrentMap<Class<?>, Set<EventHandler>> handlersByType;
    private final String identifier;
    private final ThreadLocal<Boolean> isDispatching;
    private final ConcurrentMap<Class<?>, EventProducer> producersByType;

    /* renamed from: com.squareup.otto.Bus.1 */
    class C08091 extends ThreadLocal<ConcurrentLinkedQueue<EventWithHandler>> {
        C08091() {
        }

        protected ConcurrentLinkedQueue<EventWithHandler> initialValue() {
            return new ConcurrentLinkedQueue();
        }
    }

    /* renamed from: com.squareup.otto.Bus.2 */
    class C08102 extends ThreadLocal<Boolean> {
        C08102() {
        }

        protected Boolean initialValue() {
            return Boolean.valueOf(false);
        }
    }

    static class EventWithHandler {
        final Object event;
        final EventHandler handler;

        public EventWithHandler(Object obj, EventHandler eventHandler) {
            this.event = obj;
            this.handler = eventHandler;
        }
    }

    public Bus() {
        this(DEFAULT_IDENTIFIER);
    }

    public Bus(ThreadEnforcer threadEnforcer) {
        this(threadEnforcer, DEFAULT_IDENTIFIER);
    }

    public Bus(ThreadEnforcer threadEnforcer, String str) {
        this(threadEnforcer, str, HandlerFinder.ANNOTATED);
    }

    Bus(ThreadEnforcer threadEnforcer, String str, HandlerFinder handlerFinder) {
        this.handlersByType = new ConcurrentHashMap();
        this.producersByType = new ConcurrentHashMap();
        this.eventsToDispatch = new C08091();
        this.isDispatching = new C08102();
        this.flattenHierarchyCache = new ConcurrentHashMap();
        this.enforcer = threadEnforcer;
        this.identifier = str;
        this.handlerFinder = handlerFinder;
    }

    public Bus(String str) {
        this(ThreadEnforcer.MAIN, str);
    }

    private void dispatchProducerResultToHandler(EventHandler eventHandler, EventProducer eventProducer) {
        Object obj = null;
        try {
            obj = eventProducer.produceEvent();
        } catch (InvocationTargetException e) {
            throwRuntimeException("Producer " + eventProducer + " threw an exception.", e);
        }
        if (obj != null) {
            dispatch(obj, eventHandler);
        }
    }

    private Set<Class<?>> getClassesFor(Class<?> cls) {
        List linkedList = new LinkedList();
        Set<Class<?>> hashSet = new HashSet();
        linkedList.add(cls);
        while (!linkedList.isEmpty()) {
            Class cls2 = (Class) linkedList.remove(0);
            hashSet.add(cls2);
            cls2 = cls2.getSuperclass();
            if (cls2 != null) {
                linkedList.add(cls2);
            }
        }
        return hashSet;
    }

    private static void throwRuntimeException(String str, InvocationTargetException invocationTargetException) {
        Throwable cause = invocationTargetException.getCause();
        if (cause != null) {
            throw new RuntimeException(str + ": " + cause.getMessage(), cause);
        }
        throw new RuntimeException(str + ": " + invocationTargetException.getMessage(), invocationTargetException);
    }

    protected void dispatch(Object obj, EventHandler eventHandler) {
        try {
            eventHandler.handleEvent(obj);
        } catch (InvocationTargetException e) {
            throwRuntimeException("Could not dispatch event: " + obj.getClass() + " to handler " + eventHandler, e);
        }
    }

    protected void dispatchQueuedEvents() {
        if (!((Boolean) this.isDispatching.get()).booleanValue()) {
            this.isDispatching.set(Boolean.valueOf(true));
            while (true) {
                EventWithHandler eventWithHandler = (EventWithHandler) ((ConcurrentLinkedQueue) this.eventsToDispatch.get()).poll();
                if (eventWithHandler == null) {
                    break;
                }
                try {
                    if (eventWithHandler.handler.isValid()) {
                        dispatch(eventWithHandler.event, eventWithHandler.handler);
                    }
                } finally {
                    this.isDispatching.set(Boolean.valueOf(false));
                }
            }
        }
    }

    protected void enqueueEvent(Object obj, EventHandler eventHandler) {
        ((ConcurrentLinkedQueue) this.eventsToDispatch.get()).offer(new EventWithHandler(obj, eventHandler));
    }

    Set<Class<?>> flattenHierarchy(Class<?> cls) {
        Set<Class<?>> set = (Set) this.flattenHierarchyCache.get(cls);
        if (set != null) {
            return set;
        }
        Set<Class<?>> classesFor = getClassesFor(cls);
        set = (Set) this.flattenHierarchyCache.putIfAbsent(cls, classesFor);
        return set == null ? classesFor : set;
    }

    Set<EventHandler> getHandlersForEventType(Class<?> cls) {
        return (Set) this.handlersByType.get(cls);
    }

    EventProducer getProducerForEventType(Class<?> cls) {
        return (EventProducer) this.producersByType.get(cls);
    }

    public void post(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Event to post must not be null.");
        }
        this.enforcer.enforce(this);
        Object obj2 = null;
        for (Class handlersForEventType : flattenHierarchy(obj.getClass())) {
            Set<EventHandler> handlersForEventType2 = getHandlersForEventType(handlersForEventType);
            if (!(handlersForEventType2 == null || handlersForEventType2.isEmpty())) {
                obj2 = 1;
                for (EventHandler enqueueEvent : handlersForEventType2) {
                    enqueueEvent(obj, enqueueEvent);
                }
            }
        }
        if (obj2 == null && !(obj instanceof DeadEvent)) {
            post(new DeadEvent(this, obj));
        }
        dispatchQueuedEvents();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void register(java.lang.Object r7) {
        /*
        r6 = this;
        if (r7 != 0) goto L_0x000a;
    L_0x0002:
        r0 = new java.lang.NullPointerException;
        r1 = "Object to register must not be null.";
        r0.<init>(r1);
        throw r0;
    L_0x000a:
        r0 = r6.enforcer;
        r0.enforce(r6);
        r0 = r6.handlerFinder;
        r3 = r0.findAllProducers(r7);
        r0 = r3.keySet();
        r4 = r0.iterator();
    L_0x001d:
        r0 = r4.hasNext();
        if (r0 == 0) goto L_0x009c;
    L_0x0023:
        r0 = r4.next();
        r0 = (java.lang.Class) r0;
        r1 = r3.get(r0);
        r1 = (com.squareup.otto.EventProducer) r1;
        r2 = r6.producersByType;
        r2 = r2.putIfAbsent(r0, r1);
        r2 = (com.squareup.otto.EventProducer) r2;
        if (r2 == 0) goto L_0x0078;
    L_0x0039:
        r3 = new java.lang.IllegalArgumentException;
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "Producer method for type ";
        r4 = r4.append(r5);
        r0 = r4.append(r0);
        r4 = " found on type ";
        r0 = r0.append(r4);
        r1 = r1.target;
        r1 = r1.getClass();
        r0 = r0.append(r1);
        r1 = ", but already registered by type ";
        r0 = r0.append(r1);
        r1 = r2.target;
        r1 = r1.getClass();
        r0 = r0.append(r1);
        r1 = ".";
        r0 = r0.append(r1);
        r0 = r0.toString();
        r3.<init>(r0);
        throw r3;
    L_0x0078:
        r2 = r6.handlersByType;
        r0 = r2.get(r0);
        r0 = (java.util.Set) r0;
        if (r0 == 0) goto L_0x001d;
    L_0x0082:
        r2 = r0.isEmpty();
        if (r2 != 0) goto L_0x001d;
    L_0x0088:
        r2 = r0.iterator();
    L_0x008c:
        r0 = r2.hasNext();
        if (r0 == 0) goto L_0x001d;
    L_0x0092:
        r0 = r2.next();
        r0 = (com.squareup.otto.EventHandler) r0;
        r6.dispatchProducerResultToHandler(r0, r1);
        goto L_0x008c;
    L_0x009c:
        r0 = r6.handlerFinder;
        r3 = r0.findAllSubscribers(r7);
        r0 = r3.keySet();
        r4 = r0.iterator();
    L_0x00aa:
        r0 = r4.hasNext();
        if (r0 == 0) goto L_0x00e4;
    L_0x00b0:
        r0 = r4.next();
        r1 = r0;
        r1 = (java.lang.Class) r1;
        r0 = r6.handlersByType;
        r0 = r0.get(r1);
        r0 = (java.util.Set) r0;
        if (r0 != 0) goto L_0x0135;
    L_0x00c1:
        r2 = new java.util.concurrent.CopyOnWriteArraySet;
        r2.<init>();
        r0 = r6.handlersByType;
        r0 = r0.putIfAbsent(r1, r2);
        r0 = (java.util.Set) r0;
        if (r0 != 0) goto L_0x0135;
    L_0x00d0:
        r0 = r3.get(r1);
        r0 = (java.util.Set) r0;
        r0 = r2.addAll(r0);
        if (r0 != 0) goto L_0x00aa;
    L_0x00dc:
        r0 = new java.lang.IllegalArgumentException;
        r1 = "Object already registered.";
        r0.<init>(r1);
        throw r0;
    L_0x00e4:
        r0 = r3.entrySet();
        r2 = r0.iterator();
    L_0x00ec:
        r0 = r2.hasNext();
        if (r0 == 0) goto L_0x0134;
    L_0x00f2:
        r0 = r2.next();
        r0 = (java.util.Map.Entry) r0;
        r1 = r0.getKey();
        r1 = (java.lang.Class) r1;
        r3 = r6.producersByType;
        r1 = r3.get(r1);
        r1 = (com.squareup.otto.EventProducer) r1;
        if (r1 == 0) goto L_0x00ec;
    L_0x0108:
        r3 = r1.isValid();
        if (r3 == 0) goto L_0x00ec;
    L_0x010e:
        r0 = r0.getValue();
        r0 = (java.util.Set) r0;
        r3 = r0.iterator();
    L_0x0118:
        r0 = r3.hasNext();
        if (r0 == 0) goto L_0x00ec;
    L_0x011e:
        r0 = r3.next();
        r0 = (com.squareup.otto.EventHandler) r0;
        r4 = r1.isValid();
        if (r4 == 0) goto L_0x00ec;
    L_0x012a:
        r4 = r0.isValid();
        if (r4 == 0) goto L_0x0118;
    L_0x0130:
        r6.dispatchProducerResultToHandler(r0, r1);
        goto L_0x0118;
    L_0x0134:
        return;
    L_0x0135:
        r2 = r0;
        goto L_0x00d0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.otto.Bus.register(java.lang.Object):void");
    }

    public String toString() {
        return "[Bus \"" + this.identifier + "\"]";
    }

    public void unregister(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Object to unregister must not be null.");
        }
        this.enforcer.enforce(this);
        for (Entry entry : this.handlerFinder.findAllProducers(obj).entrySet()) {
            Class cls = (Class) entry.getKey();
            EventProducer producerForEventType = getProducerForEventType(cls);
            EventProducer eventProducer = (EventProducer) entry.getValue();
            if (eventProducer == null || !eventProducer.equals(producerForEventType)) {
                throw new IllegalArgumentException("Missing event producer for an annotated method. Is " + obj.getClass() + " registered?");
            }
            ((EventProducer) this.producersByType.remove(cls)).invalidate();
        }
        for (Entry entry2 : this.handlerFinder.findAllSubscribers(obj).entrySet()) {
            Set<EventHandler> handlersForEventType = getHandlersForEventType((Class) entry2.getKey());
            Collection collection = (Collection) entry2.getValue();
            if (handlersForEventType == null || !handlersForEventType.containsAll(collection)) {
                throw new IllegalArgumentException("Missing event handler for an annotated method. Is " + obj.getClass() + " registered?");
            }
            for (EventHandler eventHandler : handlersForEventType) {
                if (collection.contains(eventHandler)) {
                    eventHandler.invalidate();
                }
            }
            handlersForEventType.removeAll(collection);
        }
    }
}
