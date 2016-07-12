package com.fasterxml.jackson.databind.util;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class ArrayIterator<T> implements Iterator<T>, Iterable<T> {
    private final T[] _a;
    private int _index;

    public ArrayIterator(T[] tArr) {
        this._a = tArr;
        this._index = 0;
    }

    public boolean hasNext() {
        return this._index < this._a.length;
    }

    public Iterator<T> iterator() {
        return this;
    }

    public T next() {
        if (this._index >= this._a.length) {
            throw new NoSuchElementException();
        }
        Object[] objArr = this._a;
        int i = this._index;
        this._index = i + 1;
        return objArr[i];
    }

    public void remove() {
        throw new UnsupportedOperationException();
    }
}
