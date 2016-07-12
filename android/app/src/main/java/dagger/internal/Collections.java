package dagger.internal;

import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

final class Collections {
    private static final int MAX_POWER_OF_TWO = 1073741824;

    private Collections() {
    }

    private static int calculateInitialCapacity(int i) {
        return i < 3 ? i + 1 : i < MAX_POWER_OF_TWO ? (int) ((((float) i) / 0.75f) + 1.0f) : Integer.MAX_VALUE;
    }

    static <K, V> LinkedHashMap<K, V> newLinkedHashMapWithExpectedSize(int i) {
        return new LinkedHashMap(calculateInitialCapacity(i));
    }

    static <E> LinkedHashSet<E> newLinkedHashSetWithExpectedSize(int i) {
        return new LinkedHashSet(calculateInitialCapacity(i));
    }
}
