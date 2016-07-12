package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;

public final class LinkedTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final Comparator<Comparable> NATURAL_ORDER;
    Comparator<? super K> comparator;
    private EntrySet entrySet;
    final Node<K, V> header;
    private KeySet keySet;
    int modCount;
    Node<K, V> root;
    int size;

    /* renamed from: com.google.gson.internal.LinkedTreeMap.1 */
    static final class C07031 implements Comparator<Comparable> {
        C07031() {
        }

        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    private abstract class LinkedTreeMapIterator<T> implements Iterator<T> {
        int expectedModCount;
        Node<K, V> lastReturned;
        Node<K, V> next;

        private LinkedTreeMapIterator() {
            this.next = LinkedTreeMap.this.header.next;
            this.lastReturned = null;
            this.expectedModCount = LinkedTreeMap.this.modCount;
        }

        public final boolean hasNext() {
            return this.next != LinkedTreeMap.this.header;
        }

        final Node<K, V> nextNode() {
            Node<K, V> node = this.next;
            if (node == LinkedTreeMap.this.header) {
                throw new NoSuchElementException();
            } else if (LinkedTreeMap.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            } else {
                this.next = node.next;
                this.lastReturned = node;
                return node;
            }
        }

        public final void remove() {
            if (this.lastReturned == null) {
                throw new IllegalStateException();
            }
            LinkedTreeMap.this.removeInternal(this.lastReturned, true);
            this.lastReturned = null;
            this.expectedModCount = LinkedTreeMap.this.modCount;
        }
    }

    class EntrySet extends AbstractSet<Entry<K, V>> {

        /* renamed from: com.google.gson.internal.LinkedTreeMap.EntrySet.1 */
        class C07041 extends LinkedTreeMapIterator<Entry<K, V>> {
            C07041() {
                super(null);
            }

            public Entry<K, V> next() {
                return nextNode();
            }
        }

        EntrySet() {
        }

        public void clear() {
            LinkedTreeMap.this.clear();
        }

        public boolean contains(Object obj) {
            return (obj instanceof Entry) && LinkedTreeMap.this.findByEntry((Entry) obj) != null;
        }

        public Iterator<Entry<K, V>> iterator() {
            return new C07041();
        }

        public boolean remove(Object obj) {
            if (obj instanceof Entry) {
                Node findByEntry = LinkedTreeMap.this.findByEntry((Entry) obj);
                if (findByEntry != null) {
                    LinkedTreeMap.this.removeInternal(findByEntry, true);
                    return true;
                }
            }
            return false;
        }

        public int size() {
            return LinkedTreeMap.this.size;
        }
    }

    class KeySet extends AbstractSet<K> {

        /* renamed from: com.google.gson.internal.LinkedTreeMap.KeySet.1 */
        class C07051 extends LinkedTreeMapIterator<K> {
            C07051() {
                super(null);
            }

            public K next() {
                return nextNode().key;
            }
        }

        KeySet() {
        }

        public void clear() {
            LinkedTreeMap.this.clear();
        }

        public boolean contains(Object obj) {
            return LinkedTreeMap.this.containsKey(obj);
        }

        public Iterator<K> iterator() {
            return new C07051();
        }

        public boolean remove(Object obj) {
            return LinkedTreeMap.this.removeInternalByKey(obj) != null;
        }

        public int size() {
            return LinkedTreeMap.this.size;
        }
    }

    static final class Node<K, V> implements Entry<K, V> {
        int height;
        final K key;
        Node<K, V> left;
        Node<K, V> next;
        Node<K, V> parent;
        Node<K, V> prev;
        Node<K, V> right;
        V value;

        Node() {
            this.key = null;
            this.prev = this;
            this.next = this;
        }

        Node(Node<K, V> node, K k, Node<K, V> node2, Node<K, V> node3) {
            this.parent = node;
            this.key = k;
            this.height = 1;
            this.next = node2;
            this.prev = node3;
            node3.next = this;
            node2.prev = this;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            if (this.key == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!this.key.equals(entry.getKey())) {
                return false;
            }
            if (this.value == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!this.value.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        public Node<K, V> first() {
            Node<K, V> node;
            for (Node<K, V> node2 = this.left; node2 != null; node2 = node2.left) {
                node = node2;
            }
            return node;
        }

        public K getKey() {
            return this.key;
        }

        public V getValue() {
            return this.value;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = this.key == null ? 0 : this.key.hashCode();
            if (this.value != null) {
                i = this.value.hashCode();
            }
            return hashCode ^ i;
        }

        public Node<K, V> last() {
            Node<K, V> node;
            for (Node<K, V> node2 = this.right; node2 != null; node2 = node2.right) {
                node = node2;
            }
            return node;
        }

        public V setValue(V v) {
            V v2 = this.value;
            this.value = v;
            return v2;
        }

        public String toString() {
            return this.key + "=" + this.value;
        }
    }

    static {
        $assertionsDisabled = !LinkedTreeMap.class.desiredAssertionStatus();
        NATURAL_ORDER = new C07031();
    }

    public LinkedTreeMap() {
        this(NATURAL_ORDER);
    }

    public LinkedTreeMap(Comparator<? super K> comparator) {
        Comparator comparator2;
        this.size = 0;
        this.modCount = 0;
        this.header = new Node();
        if (comparator == null) {
            comparator2 = NATURAL_ORDER;
        }
        this.comparator = comparator2;
    }

    private boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private void rebalance(Node<K, V> node, boolean z) {
        Node node2;
        while (node2 != null) {
            Node node3 = node2.left;
            Node node4 = node2.right;
            int i = node3 != null ? node3.height : 0;
            int i2 = node4 != null ? node4.height : 0;
            int i3 = i - i2;
            Node node5;
            if (i3 == -2) {
                node3 = node4.left;
                node5 = node4.right;
                i2 = (node3 != null ? node3.height : 0) - (node5 != null ? node5.height : 0);
                if (i2 == -1 || (i2 == 0 && !z)) {
                    rotateLeft(node2);
                } else if ($assertionsDisabled || i2 == 1) {
                    rotateRight(node4);
                    rotateLeft(node2);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                node4 = node3.left;
                node5 = node3.right;
                i2 = (node4 != null ? node4.height : 0) - (node5 != null ? node5.height : 0);
                if (i2 == 1 || (i2 == 0 && !z)) {
                    rotateRight(node2);
                } else if ($assertionsDisabled || i2 == -1) {
                    rotateLeft(node3);
                    rotateRight(node2);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                node2.height = i + 1;
                if (z) {
                    return;
                }
            } else if ($assertionsDisabled || i3 == -1 || i3 == 1) {
                node2.height = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            } else {
                throw new AssertionError();
            }
            node2 = node2.parent;
        }
    }

    private void replaceInParent(Node<K, V> node, Node<K, V> node2) {
        Node node3 = node.parent;
        node.parent = null;
        if (node2 != null) {
            node2.parent = node3;
        }
        if (node3 == null) {
            this.root = node2;
        } else if (node3.left == node) {
            node3.left = node2;
        } else if ($assertionsDisabled || node3.right == node) {
            node3.right = node2;
        } else {
            throw new AssertionError();
        }
    }

    private void rotateLeft(Node<K, V> node) {
        int i = 0;
        Node node2 = node.left;
        Node node3 = node.right;
        Node node4 = node3.left;
        Node node5 = node3.right;
        node.right = node4;
        if (node4 != null) {
            node4.parent = node;
        }
        replaceInParent(node, node3);
        node3.left = node;
        node.parent = node3;
        node.height = Math.max(node2 != null ? node2.height : 0, node4 != null ? node4.height : 0) + 1;
        int i2 = node.height;
        if (node5 != null) {
            i = node5.height;
        }
        node3.height = Math.max(i2, i) + 1;
    }

    private void rotateRight(Node<K, V> node) {
        int i = 0;
        Node node2 = node.left;
        Node node3 = node.right;
        Node node4 = node2.left;
        Node node5 = node2.right;
        node.left = node5;
        if (node5 != null) {
            node5.parent = node;
        }
        replaceInParent(node, node2);
        node2.right = node;
        node.parent = node2;
        node.height = Math.max(node3 != null ? node3.height : 0, node5 != null ? node5.height : 0) + 1;
        int i2 = node.height;
        if (node4 != null) {
            i = node4.height;
        }
        node2.height = Math.max(i2, i) + 1;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    public void clear() {
        this.root = null;
        this.size = 0;
        this.modCount++;
        Node node = this.header;
        node.prev = node;
        node.next = node;
    }

    public boolean containsKey(Object obj) {
        return findByObject(obj) != null;
    }

    public Set<Entry<K, V>> entrySet() {
        Set set = this.entrySet;
        if (set != null) {
            return set;
        }
        set = new EntrySet();
        this.entrySet = set;
        return set;
    }

    Node<K, V> find(K k, boolean z) {
        Node<K, V> node;
        int i;
        Comparator comparator = this.comparator;
        Node node2 = this.root;
        if (node2 != null) {
            Comparable comparable;
            int compareTo;
            if (comparator == NATURAL_ORDER) {
                comparable = (Comparable) k;
                node = node2;
            } else {
                comparable = null;
                node = node2;
            }
            while (true) {
                compareTo = comparable != null ? comparable.compareTo(node.key) : comparator.compare(k, node.key);
                if (compareTo == 0) {
                    return node;
                }
                Node<K, V> node3 = compareTo < 0 ? node.left : node.right;
                if (node3 == null) {
                    break;
                }
                node = node3;
            }
            i = compareTo;
            node2 = node;
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        Node node4 = this.header;
        if (node2 != null) {
            node = new Node(node2, k, node4, node4.prev);
            if (i < 0) {
                node2.left = node;
            } else {
                node2.right = node;
            }
            rebalance(node2, true);
        } else if (comparator != NATURAL_ORDER || (k instanceof Comparable)) {
            node = new Node(node2, k, node4, node4.prev);
            this.root = node;
        } else {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        }
        this.size++;
        this.modCount++;
        return node;
    }

    Node<K, V> findByEntry(Entry<?, ?> entry) {
        Node<K, V> findByObject = findByObject(entry.getKey());
        Object obj = (findByObject == null || !equal(findByObject.value, entry.getValue())) ? null : 1;
        return obj != null ? findByObject : null;
    }

    Node<K, V> findByObject(Object obj) {
        Node<K, V> node = null;
        if (obj != null) {
            try {
                node = find(obj, false);
            } catch (ClassCastException e) {
            }
        }
        return node;
    }

    public V get(Object obj) {
        Node findByObject = findByObject(obj);
        return findByObject != null ? findByObject.value : null;
    }

    public Set<K> keySet() {
        Set set = this.keySet;
        if (set != null) {
            return set;
        }
        set = new KeySet();
        this.keySet = set;
        return set;
    }

    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        Node find = find(k, true);
        V v2 = find.value;
        find.value = v;
        return v2;
    }

    public V remove(Object obj) {
        Node removeInternalByKey = removeInternalByKey(obj);
        return removeInternalByKey != null ? removeInternalByKey.value : null;
    }

    void removeInternal(Node<K, V> node, boolean z) {
        int i = 0;
        if (z) {
            node.prev.next = node.next;
            node.next.prev = node.prev;
        }
        Node node2 = node.left;
        Node node3 = node.right;
        Node node4 = node.parent;
        if (node2 == null || node3 == null) {
            if (node2 != null) {
                replaceInParent(node, node2);
                node.left = null;
            } else if (node3 != null) {
                replaceInParent(node, node3);
                node.right = null;
            } else {
                replaceInParent(node, null);
            }
            rebalance(node4, false);
            this.size--;
            this.modCount++;
            return;
        }
        int i2;
        node2 = node2.height > node3.height ? node2.last() : node3.first();
        removeInternal(node2, false);
        node4 = node.left;
        if (node4 != null) {
            i2 = node4.height;
            node2.left = node4;
            node4.parent = node2;
            node.left = null;
        } else {
            i2 = 0;
        }
        node4 = node.right;
        if (node4 != null) {
            i = node4.height;
            node2.right = node4;
            node4.parent = node2;
            node.right = null;
        }
        node2.height = Math.max(i2, i) + 1;
        replaceInParent(node, node2);
    }

    Node<K, V> removeInternalByKey(Object obj) {
        Node<K, V> findByObject = findByObject(obj);
        if (findByObject != null) {
            removeInternal(findByObject, true);
        }
        return findByObject;
    }

    public int size() {
        return this.size;
    }
}
