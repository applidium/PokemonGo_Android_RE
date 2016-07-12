package com.fasterxml.jackson.databind.util;

import java.lang.reflect.Array;
import java.util.List;

public final class ObjectBuffer {
    private static final int MAX_CHUNK = 262144;
    private static final int SMALL_CHUNK = 16384;
    private Object[] _freeBuffer;
    private LinkedNode<Object[]> _head;
    private int _size;
    private LinkedNode<Object[]> _tail;

    protected final void _copyTo(Object obj, int i, Object[] objArr, int i2) {
        int i3 = 0;
        for (LinkedNode linkedNode = this._head; linkedNode != null; linkedNode = linkedNode.next()) {
            Object[] objArr2 = (Object[]) linkedNode.value();
            int length = objArr2.length;
            System.arraycopy(objArr2, 0, obj, i3, length);
            i3 += length;
        }
        System.arraycopy(objArr, 0, obj, i3, i2);
        int i4 = i3 + i2;
        if (i4 != i) {
            throw new IllegalStateException("Should have gotten " + i + " entries, got " + i4);
        }
    }

    protected void _reset() {
        if (this._tail != null) {
            this._freeBuffer = (Object[]) this._tail.value();
        }
        this._tail = null;
        this._head = null;
        this._size = 0;
    }

    public Object[] appendCompletedChunk(Object[] objArr) {
        LinkedNode linkedNode = new LinkedNode(objArr, null);
        if (this._head == null) {
            this._tail = linkedNode;
            this._head = linkedNode;
        } else {
            this._tail.linkNext(linkedNode);
            this._tail = linkedNode;
        }
        int length = objArr.length;
        this._size += length;
        if (length < SMALL_CHUNK) {
            length += length;
        } else if (length < MAX_CHUNK) {
            length += length >> 2;
        }
        return new Object[length];
    }

    public int bufferedSize() {
        return this._size;
    }

    public void completeAndClearBuffer(Object[] objArr, int i, List<Object> list) {
        for (LinkedNode linkedNode = this._head; linkedNode != null; linkedNode = linkedNode.next()) {
            for (Object add : (Object[]) linkedNode.value()) {
                list.add(add);
            }
        }
        for (int i2 = 0; i2 < i; i2++) {
            list.add(objArr[i2]);
        }
    }

    public Object[] completeAndClearBuffer(Object[] objArr, int i) {
        int i2 = this._size + i;
        Object obj = new Object[i2];
        _copyTo(obj, i2, objArr, i);
        return obj;
    }

    public <T> T[] completeAndClearBuffer(Object[] objArr, int i, Class<T> cls) {
        int i2 = i + this._size;
        Object[] objArr2 = (Object[]) Array.newInstance(cls, i2);
        _copyTo(objArr2, i2, objArr, i);
        _reset();
        return objArr2;
    }

    public int initialCapacity() {
        return this._freeBuffer == null ? 0 : this._freeBuffer.length;
    }

    public Object[] resetAndStart() {
        _reset();
        return this._freeBuffer == null ? new Object[12] : this._freeBuffer;
    }
}
