package com.squareup.otto;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class EventHandler {
    private final int hashCode;
    private final Method method;
    private final Object target;
    private boolean valid;

    EventHandler(Object obj, Method method) {
        this.valid = true;
        if (obj == null) {
            throw new NullPointerException("EventHandler target cannot be null.");
        } else if (method == null) {
            throw new NullPointerException("EventHandler method cannot be null.");
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
            EventHandler eventHandler = (EventHandler) obj;
            if (!this.method.equals(eventHandler.method)) {
                return false;
            }
            if (this.target != eventHandler.target) {
                return false;
            }
        }
        return true;
    }

    public void handleEvent(Object obj) throws InvocationTargetException {
        if (this.valid) {
            try {
                this.method.invoke(this.target, new Object[]{obj});
                return;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                if (e2.getCause() instanceof Error) {
                    throw ((Error) e2.getCause());
                }
                throw e2;
            }
        }
        throw new IllegalStateException(toString() + " has been invalidated and can no longer handle events.");
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

    public String toString() {
        return "[EventHandler " + this.method + "]";
    }
}
