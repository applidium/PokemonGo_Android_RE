package com.fasterxml.jackson.databind.util;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class EmptyIterator<T> implements Iterator<T> {
    private static final EmptyIterator<?> instance;

    static {
        instance = new EmptyIterator();
    }

    public static <T> Iterator<T> instance() {
        return instance;
    }

    public boolean hasNext() {
        return false;
    }

    public T next() {
        throw new NoSuchElementException();
    }

    public void remove() {
        throw new UnsupportedOperationException();
    }
}
