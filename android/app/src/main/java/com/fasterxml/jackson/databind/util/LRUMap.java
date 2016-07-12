package com.fasterxml.jackson.databind.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.ConcurrentHashMap;

public class LRUMap<K, V> implements Serializable {
    private static final long serialVersionUID = 1;
    protected transient int _jdkSerializeMaxEntries;
    protected final transient ConcurrentHashMap<K, V> _map;
    protected final transient int _maxEntries;

    public LRUMap(int i, int i2) {
        this._map = new ConcurrentHashMap(i, 0.8f, 4);
        this._maxEntries = i2;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        this._jdkSerializeMaxEntries = objectInputStream.readInt();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this._jdkSerializeMaxEntries);
    }

    public void clear() {
        this._map.clear();
    }

    public V get(Object obj) {
        return this._map.get(obj);
    }

    public V put(K k, V v) {
        if (this._map.size() >= this._maxEntries) {
            synchronized (this) {
                if (this._map.size() >= this._maxEntries) {
                    clear();
                }
            }
        }
        return this._map.put(k, v);
    }

    public V putIfAbsent(K k, V v) {
        if (this._map.size() >= this._maxEntries) {
            synchronized (this) {
                if (this._map.size() >= this._maxEntries) {
                    clear();
                }
            }
        }
        return this._map.putIfAbsent(k, v);
    }

    protected Object readResolve() {
        return new LRUMap(this._jdkSerializeMaxEntries, this._jdkSerializeMaxEntries);
    }

    public int size() {
        return this._map.size();
    }
}
