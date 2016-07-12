package com.fasterxml.jackson.databind.util;

import java.io.Serializable;

public abstract class NameTransformer {
    public static final NameTransformer NOP;

    /* renamed from: com.fasterxml.jackson.databind.util.NameTransformer.1 */
    static final class C01661 extends NameTransformer {
        final /* synthetic */ String val$prefix;
        final /* synthetic */ String val$suffix;

        C01661(String str, String str2) {
            this.val$prefix = str;
            this.val$suffix = str2;
        }

        public String reverse(String str) {
            if (str.startsWith(this.val$prefix)) {
                String substring = str.substring(this.val$prefix.length());
                if (substring.endsWith(this.val$suffix)) {
                    return substring.substring(0, substring.length() - this.val$suffix.length());
                }
            }
            return null;
        }

        public String toString() {
            return "[PreAndSuffixTransformer('" + this.val$prefix + "','" + this.val$suffix + "')]";
        }

        public String transform(String str) {
            return this.val$prefix + str + this.val$suffix;
        }
    }

    /* renamed from: com.fasterxml.jackson.databind.util.NameTransformer.2 */
    static final class C01672 extends NameTransformer {
        final /* synthetic */ String val$prefix;

        C01672(String str) {
            this.val$prefix = str;
        }

        public String reverse(String str) {
            return str.startsWith(this.val$prefix) ? str.substring(this.val$prefix.length()) : null;
        }

        public String toString() {
            return "[PrefixTransformer('" + this.val$prefix + "')]";
        }

        public String transform(String str) {
            return this.val$prefix + str;
        }
    }

    /* renamed from: com.fasterxml.jackson.databind.util.NameTransformer.3 */
    static final class C01683 extends NameTransformer {
        final /* synthetic */ String val$suffix;

        C01683(String str) {
            this.val$suffix = str;
        }

        public String reverse(String str) {
            return str.endsWith(this.val$suffix) ? str.substring(0, str.length() - this.val$suffix.length()) : null;
        }

        public String toString() {
            return "[SuffixTransformer('" + this.val$suffix + "')]";
        }

        public String transform(String str) {
            return str + this.val$suffix;
        }
    }

    public static class Chained extends NameTransformer implements Serializable {
        private static final long serialVersionUID = 1;
        protected final NameTransformer _t1;
        protected final NameTransformer _t2;

        public Chained(NameTransformer nameTransformer, NameTransformer nameTransformer2) {
            this._t1 = nameTransformer;
            this._t2 = nameTransformer2;
        }

        public String reverse(String str) {
            String reverse = this._t1.reverse(str);
            return reverse != null ? this._t2.reverse(reverse) : reverse;
        }

        public String toString() {
            return "[ChainedTransformer(" + this._t1 + ", " + this._t2 + ")]";
        }

        public String transform(String str) {
            return this._t1.transform(this._t2.transform(str));
        }
    }

    protected static final class NopTransformer extends NameTransformer implements Serializable {
        private static final long serialVersionUID = 1;

        protected NopTransformer() {
        }

        public String reverse(String str) {
            return str;
        }

        public String transform(String str) {
            return str;
        }
    }

    static {
        NOP = new NopTransformer();
    }

    protected NameTransformer() {
    }

    public static NameTransformer chainedTransformer(NameTransformer nameTransformer, NameTransformer nameTransformer2) {
        return new Chained(nameTransformer, nameTransformer2);
    }

    public static NameTransformer simpleTransformer(String str, String str2) {
        Object obj = 1;
        Object obj2 = (str == null || str.length() <= 0) ? null : 1;
        if (str2 == null || str2.length() <= 0) {
            obj = null;
        }
        return obj2 != null ? obj != null ? new C01661(str, str2) : new C01672(str) : obj != null ? new C01683(str2) : NOP;
    }

    public abstract String reverse(String str);

    public abstract String transform(String str);
}
