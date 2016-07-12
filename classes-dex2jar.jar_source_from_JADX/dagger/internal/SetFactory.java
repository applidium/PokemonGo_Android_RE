package dagger.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;

public final class SetFactory<T> implements Factory<Set<T>> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String ARGUMENTS_MUST_BE_NON_NULL = "SetFactory.create() requires its arguments to be non-null";
    private final List<Provider<Set<T>>> contributingProviders;

    static {
        $assertionsDisabled = !SetFactory.class.desiredAssertionStatus() ? true : $assertionsDisabled;
    }

    private SetFactory(List<Provider<Set<T>>> list) {
        this.contributingProviders = list;
    }

    public static <T> Factory<Set<T>> create(Factory<Set<T>> factory) {
        if ($assertionsDisabled || factory != null) {
            return factory;
        }
        throw new AssertionError(ARGUMENTS_MUST_BE_NON_NULL);
    }

    public static <T> Factory<Set<T>> create(Provider<Set<T>>... providerArr) {
        if ($assertionsDisabled || providerArr != null) {
            List asList = Arrays.asList(providerArr);
            if (!$assertionsDisabled && asList.contains(null)) {
                throw new AssertionError("Codegen error?  Null within provider list.");
            } else if ($assertionsDisabled || !hasDuplicates(asList)) {
                return new SetFactory(asList);
            } else {
                throw new AssertionError("Codegen error?  Duplicates in the provider list");
            }
        }
        throw new AssertionError(ARGUMENTS_MUST_BE_NON_NULL);
    }

    private static boolean hasDuplicates(List<? extends Object> list) {
        return list.size() != new HashSet(list).size() ? true : $assertionsDisabled;
    }

    public Set<T> get() {
        List arrayList = new ArrayList(this.contributingProviders.size());
        int size = this.contributingProviders.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            Provider provider = (Provider) this.contributingProviders.get(i);
            Set set = (Set) provider.get();
            if (set == null) {
                throw new NullPointerException(provider + " returned null");
            }
            arrayList.add(set);
            i++;
            i2 += set.size();
        }
        Set newLinkedHashSetWithExpectedSize = Collections.newLinkedHashSetWithExpectedSize(i2);
        i2 = arrayList.size();
        for (int i3 = 0; i3 < i2; i3++) {
            for (Object next : (Set) arrayList.get(i3)) {
                if (next == null) {
                    throw new NullPointerException("a null element was provided");
                }
                newLinkedHashSetWithExpectedSize.add(next);
            }
        }
        return Collections.unmodifiableSet(newLinkedHashSetWithExpectedSize);
    }
}
