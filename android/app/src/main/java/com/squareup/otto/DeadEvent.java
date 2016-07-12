package com.squareup.otto;

public class DeadEvent {
    public final Object event;
    public final Object source;

    public DeadEvent(Object obj, Object obj2) {
        this.source = obj;
        this.event = obj2;
    }
}
