package com.fasterxml.jackson.databind.util;

public abstract class PrimitiveArrayBuilder<T> {
    static final int INITIAL_CHUNK_SIZE = 12;
    static final int MAX_CHUNK_SIZE = 262144;
    static final int SMALL_CHUNK_SIZE = 16384;
    protected Node<T> _bufferHead;
    protected Node<T> _bufferTail;
    protected int _bufferedEntryCount;
    protected T _freeBuffer;

    static final class Node<T> {
        final T _data;
        final int _dataLength;
        Node<T> _next;

        public Node(T t, int i) {
            this._data = t;
            this._dataLength = i;
        }

        public int copyData(T t, int i) {
            System.arraycopy(this._data, 0, t, i, this._dataLength);
            return this._dataLength + i;
        }

        public T getData() {
            return this._data;
        }

        public void linkNext(Node<T> node) {
            if (this._next != null) {
                throw new IllegalStateException();
            }
            this._next = node;
        }

        public Node<T> next() {
            return this._next;
        }
    }

    protected PrimitiveArrayBuilder() {
    }

    protected abstract T _constructArray(int i);

    protected void _reset() {
        if (this._bufferTail != null) {
            this._freeBuffer = this._bufferTail.getData();
        }
        this._bufferTail = null;
        this._bufferHead = null;
        this._bufferedEntryCount = 0;
    }

    public final T appendCompletedChunk(T t, int i) {
        Node node = new Node(t, i);
        if (this._bufferHead == null) {
            this._bufferTail = node;
            this._bufferHead = node;
        } else {
            this._bufferTail.linkNext(node);
            this._bufferTail = node;
        }
        this._bufferedEntryCount += i;
        return _constructArray(i < SMALL_CHUNK_SIZE ? i + i : (i >> 2) + i);
    }

    public int bufferedSize() {
        return this._bufferedEntryCount;
    }

    public T completeAndClearBuffer(T t, int i) {
        int i2 = i + this._bufferedEntryCount;
        T _constructArray = _constructArray(i2);
        int i3 = 0;
        for (Node node = this._bufferHead; node != null; node = node.next()) {
            i3 = node.copyData(_constructArray, i3);
        }
        System.arraycopy(t, 0, _constructArray, i3, i);
        int i4 = i3 + i;
        if (i4 == i2) {
            return _constructArray;
        }
        throw new IllegalStateException("Should have gotten " + i2 + " entries, got " + i4);
    }

    public T resetAndStart() {
        _reset();
        return this._freeBuffer == null ? _constructArray(INITIAL_CHUNK_SIZE) : this._freeBuffer;
    }
}
