package rx.internal.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

public class SynchronizedQueue<T> implements Queue<T> {
    private final LinkedList<T> list;
    private final int size;

    public SynchronizedQueue() {
        this.list = new LinkedList();
        this.size = -1;
    }

    public SynchronizedQueue(int i) {
        this.list = new LinkedList();
        this.size = i;
    }

    public boolean add(T t) {
        boolean add;
        synchronized (this) {
            add = this.list.add(t);
        }
        return add;
    }

    public boolean addAll(Collection<? extends T> collection) {
        boolean addAll;
        synchronized (this) {
            addAll = this.list.addAll(collection);
        }
        return addAll;
    }

    public void clear() {
        synchronized (this) {
            this.list.clear();
        }
    }

    public Object clone() {
        SynchronizedQueue synchronizedQueue;
        synchronized (this) {
            synchronizedQueue = new SynchronizedQueue(this.size);
            synchronizedQueue.addAll(this.list);
        }
        return synchronizedQueue;
    }

    public boolean contains(Object obj) {
        boolean contains;
        synchronized (this) {
            contains = this.list.contains(obj);
        }
        return contains;
    }

    public boolean containsAll(Collection<?> collection) {
        boolean containsAll;
        synchronized (this) {
            containsAll = this.list.containsAll(collection);
        }
        return containsAll;
    }

    public T element() {
        T element;
        synchronized (this) {
            element = this.list.element();
        }
        return element;
    }

    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this) {
            equals = this.list.equals(obj);
        }
        return equals;
    }

    public int hashCode() {
        int hashCode;
        synchronized (this) {
            hashCode = this.list.hashCode();
        }
        return hashCode;
    }

    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.list.isEmpty();
        }
        return isEmpty;
    }

    public Iterator<T> iterator() {
        Iterator<T> it;
        synchronized (this) {
            it = this.list.iterator();
        }
        return it;
    }

    public boolean offer(T t) {
        boolean z;
        synchronized (this) {
            if (this.size > -1) {
                if (this.list.size() + 1 > this.size) {
                    z = false;
                }
            }
            z = this.list.offer(t);
        }
        return z;
    }

    public T peek() {
        T peek;
        synchronized (this) {
            peek = this.list.peek();
        }
        return peek;
    }

    public T poll() {
        T poll;
        synchronized (this) {
            poll = this.list.poll();
        }
        return poll;
    }

    public T remove() {
        T remove;
        synchronized (this) {
            remove = this.list.remove();
        }
        return remove;
    }

    public boolean remove(Object obj) {
        boolean remove;
        synchronized (this) {
            remove = this.list.remove(obj);
        }
        return remove;
    }

    public boolean removeAll(Collection<?> collection) {
        boolean removeAll;
        synchronized (this) {
            removeAll = this.list.removeAll(collection);
        }
        return removeAll;
    }

    public boolean retainAll(Collection<?> collection) {
        boolean retainAll;
        synchronized (this) {
            retainAll = this.list.retainAll(collection);
        }
        return retainAll;
    }

    public int size() {
        int size;
        synchronized (this) {
            size = this.list.size();
        }
        return size;
    }

    public Object[] toArray() {
        Object[] toArray;
        synchronized (this) {
            toArray = this.list.toArray();
        }
        return toArray;
    }

    public <R> R[] toArray(R[] rArr) {
        R[] toArray;
        synchronized (this) {
            toArray = this.list.toArray(rArr);
        }
        return toArray;
    }

    public String toString() {
        String linkedList;
        synchronized (this) {
            linkedList = this.list.toString();
        }
        return linkedList;
    }
}
