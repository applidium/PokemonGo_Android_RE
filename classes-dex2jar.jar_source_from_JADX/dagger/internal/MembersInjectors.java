package dagger.internal;

import dagger.MembersInjector;

public final class MembersInjectors {

    private enum NoOpMembersInjector implements MembersInjector<Object> {
        INSTANCE;

        public void injectMembers(Object obj) {
            if (obj == null) {
                throw new NullPointerException();
            }
        }
    }

    private MembersInjectors() {
    }

    public static <T> MembersInjector<T> delegatingTo(MembersInjector<? super T> membersInjector) {
        return membersInjector;
    }

    public static <T> MembersInjector<T> noOp() {
        return NoOpMembersInjector.INSTANCE;
    }
}
