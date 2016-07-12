package com.squareup.otto;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class EventProducer {
    private final int hashCode;
    private final Method method;
    final Object target;
    private boolean valid;

    EventProducer(Object obj, Method method) {
        this.valid = true;
        if (obj == null) {
            throw new NullPointerException("EventProducer target cannot be null.");
        } else if (method == null) {
            throw new NullPointerException("EventProducer method cannot be null.");
        } else {
            this.target = obj;
            this.method = method;
            method.setAccessible(true);
            this.hashCode = ((method.hashCode() + 31) * 31) + obj.hashCode();
        }
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            EventProducer eventProducer = (EventProducer) obj;
            if (!this.method.equals(eventProducer.method)) {
                return false;
            }
            if (this.target != eventProducer.target) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return this.hashCode;
    }

    public void invalidate() {
        this.valid = false;
    }

    public boolean isValid() {
        return this.valid;
    }

    public Object produceEvent() throws InvocationTargetException {
        if (this.valid) {
            try {
                return this.method.invoke(this.target, new Object[0]);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                if (e2.getCause() instanceof Error) {
                    throw ((Error) e2.getCause());
                }
                throw e2;
            }
        }
        throw new IllegalStateException(toString() + " has been invalidated and can no longer produce events.");
    }

    public String toString() {
        return "[EventProducer " + this.method + "]";
    }
}
