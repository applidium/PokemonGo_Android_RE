package spacemadness.com.lunarconsole.debug;

import java.util.Collection;
import java.util.List;
import spacemadness.com.lunarconsole.utils.ObjectUtils;
import spacemadness.com.lunarconsole.utils.StringUtils;

public class Assert {
    private static boolean IsEnabled;

    static {
        IsEnabled = true;
    }

    public static void AreEqual(byte b, byte b2) {
        if (IsEnabled && b != b2) {
            AssertHelper("Assertion failed: expected '%s' but was '%s'", toString(Byte.valueOf(b)), toString(Byte.valueOf(b2)));
        }
    }

    public static void AreEqual(byte b, byte b2, String str) {
        if (IsEnabled && b != b2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreEqual(byte b, byte b2, String str, Object obj) {
        if (IsEnabled && b != b2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreEqual(byte b, byte b2, String str, Object obj, Object obj2) {
        if (IsEnabled && b != b2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreEqual(byte b, byte b2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && b != b2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreEqual(byte b, byte b2, String str, Object... objArr) {
        if (IsEnabled && b != b2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreEqual(char c, char c2) {
        if (IsEnabled && c != c2) {
            AssertHelper("Assertion failed: expected '%s' but was '%s'", toString(Character.valueOf(c)), toString(Character.valueOf(c2)));
        }
    }

    public static void AreEqual(char c, char c2, String str) {
        if (IsEnabled && c != c2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreEqual(char c, char c2, String str, Object obj) {
        if (IsEnabled && c != c2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreEqual(char c, char c2, String str, Object obj, Object obj2) {
        if (IsEnabled && c != c2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreEqual(char c, char c2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && c != c2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreEqual(char c, char c2, String str, Object... objArr) {
        if (IsEnabled && c != c2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreEqual(double d, double d2) {
        if (IsEnabled && d != d2) {
            AssertHelper("Assertion failed: expected '%s' but was '%s'", toString(Double.valueOf(d)), toString(Double.valueOf(d2)));
        }
    }

    public static void AreEqual(double d, double d2, String str) {
        if (IsEnabled && d != d2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreEqual(double d, double d2, String str, Object obj) {
        if (IsEnabled && d != d2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreEqual(double d, double d2, String str, Object obj, Object obj2) {
        if (IsEnabled && d != d2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreEqual(double d, double d2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && d != d2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreEqual(double d, double d2, String str, Object... objArr) {
        if (IsEnabled && d != d2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreEqual(float f, float f2) {
        if (IsEnabled && f != f2) {
            AssertHelper("Assertion failed: expected '%s' but was '%s'", toString(Float.valueOf(f)), toString(Float.valueOf(f2)));
        }
    }

    public static void AreEqual(float f, float f2, String str) {
        if (IsEnabled && f != f2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreEqual(float f, float f2, String str, Object obj) {
        if (IsEnabled && f != f2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreEqual(float f, float f2, String str, Object obj, Object obj2) {
        if (IsEnabled && f != f2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreEqual(float f, float f2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && f != f2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreEqual(float f, float f2, String str, Object... objArr) {
        if (IsEnabled && f != f2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreEqual(int i, int i2) {
        if (IsEnabled && i != i2) {
            AssertHelper("Assertion failed: expected '%s' but was '%s'", toString(Integer.valueOf(i)), toString(Integer.valueOf(i2)));
        }
    }

    public static void AreEqual(int i, int i2, String str) {
        if (IsEnabled && i != i2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreEqual(int i, int i2, String str, Object obj) {
        if (IsEnabled && i != i2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreEqual(int i, int i2, String str, Object obj, Object obj2) {
        if (IsEnabled && i != i2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreEqual(int i, int i2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && i != i2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreEqual(int i, int i2, String str, Object... objArr) {
        if (IsEnabled && i != i2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreEqual(long j, long j2) {
        if (IsEnabled && j != j2) {
            AssertHelper("Assertion failed: expected '%s' but was '%s'", toString(Long.valueOf(j)), toString(Long.valueOf(j2)));
        }
    }

    public static void AreEqual(long j, long j2, String str) {
        if (IsEnabled && j != j2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreEqual(long j, long j2, String str, Object obj) {
        if (IsEnabled && j != j2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreEqual(long j, long j2, String str, Object obj, Object obj2) {
        if (IsEnabled && j != j2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreEqual(long j, long j2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && j != j2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreEqual(long j, long j2, String str, Object... objArr) {
        if (IsEnabled && j != j2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreEqual(Object obj, Object obj2) {
        if (!IsEnabled) {
            return;
        }
        if (obj != null && obj2 != null && obj.equals(obj2)) {
            return;
        }
        if (obj != null || obj2 != null) {
            AssertHelper("Assertion failed: expected '%s' but was '%s'", toString(obj), toString(obj2));
        }
    }

    public static void AreEqual(Object obj, Object obj2, String str) {
        if (!IsEnabled) {
            return;
        }
        if (obj != null && obj2 != null && obj.equals(obj2)) {
            return;
        }
        if (obj != null || obj2 != null) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreEqual(Object obj, Object obj2, String str, Object obj3) {
        if (!IsEnabled) {
            return;
        }
        if (obj != null && obj2 != null && obj.equals(obj2)) {
            return;
        }
        if (obj != null || obj2 != null) {
            AssertHelper(str, obj3);
        }
    }

    public static void AreEqual(Object obj, Object obj2, String str, Object obj3, Object obj4) {
        if (!IsEnabled) {
            return;
        }
        if (obj != null && obj2 != null && obj.equals(obj2)) {
            return;
        }
        if (obj != null || obj2 != null) {
            AssertHelper(str, obj3, obj4);
        }
    }

    public static void AreEqual(Object obj, Object obj2, String str, Object obj3, Object obj4, Object obj5) {
        if (!IsEnabled) {
            return;
        }
        if (obj != null && obj2 != null && obj.equals(obj2)) {
            return;
        }
        if (obj != null || obj2 != null) {
            AssertHelper(str, obj3, obj4, obj5);
        }
    }

    public static void AreEqual(Object obj, Object obj2, String str, Object... objArr) {
        if (!IsEnabled) {
            return;
        }
        if (obj != null && obj2 != null && obj.equals(obj2)) {
            return;
        }
        if (obj != null || obj2 != null) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreEqual(short s, short s2) {
        if (IsEnabled && s != s2) {
            AssertHelper("Assertion failed: expected '%s' but was '%s'", toString(Short.valueOf(s)), toString(Short.valueOf(s2)));
        }
    }

    public static void AreEqual(short s, short s2, String str) {
        if (IsEnabled && s != s2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreEqual(short s, short s2, String str, Object obj) {
        if (IsEnabled && s != s2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreEqual(short s, short s2, String str, Object obj, Object obj2) {
        if (IsEnabled && s != s2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreEqual(short s, short s2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && s != s2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreEqual(short s, short s2, String str, Object... objArr) {
        if (IsEnabled && s != s2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreEqual(boolean z, boolean z2) {
        if (IsEnabled && z != z2) {
            AssertHelper("Assertion failed: expected '%s' but was '%s'", Boolean.toString(z), Boolean.toString(z2));
        }
    }

    public static void AreEqual(boolean z, boolean z2, String str) {
        if (IsEnabled && z != z2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreEqual(boolean z, boolean z2, String str, Object obj) {
        if (IsEnabled && z != z2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreEqual(boolean z, boolean z2, String str, Object obj, Object obj2) {
        if (IsEnabled && z != z2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreEqual(boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && z != z2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreEqual(boolean z, boolean z2, String str, Object... objArr) {
        if (IsEnabled && z != z2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreNotEqual(byte b, byte b2) {
        if (IsEnabled && b == b2) {
            AssertHelper("Assertion failed: values are equal '%s'", toString(Byte.valueOf(b)));
        }
    }

    public static void AreNotEqual(byte b, byte b2, String str) {
        if (IsEnabled && b == b2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreNotEqual(byte b, byte b2, String str, Object obj) {
        if (IsEnabled && b == b2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreNotEqual(byte b, byte b2, String str, Object obj, Object obj2) {
        if (IsEnabled && b == b2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreNotEqual(byte b, byte b2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && b == b2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreNotEqual(byte b, byte b2, String str, Object... objArr) {
        if (IsEnabled && b == b2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreNotEqual(char c, char c2) {
        if (IsEnabled && c == c2) {
            AssertHelper("Assertion failed: values are equal '%s'", toString(Character.valueOf(c)));
        }
    }

    public static void AreNotEqual(char c, char c2, String str) {
        if (IsEnabled && c == c2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreNotEqual(char c, char c2, String str, Object obj) {
        if (IsEnabled && c == c2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreNotEqual(char c, char c2, String str, Object obj, Object obj2) {
        if (IsEnabled && c == c2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreNotEqual(char c, char c2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && c == c2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreNotEqual(char c, char c2, String str, Object... objArr) {
        if (IsEnabled && c == c2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreNotEqual(double d, double d2) {
        if (IsEnabled && d == d2) {
            AssertHelper("Assertion failed: values are equal '%s'", toString(Double.valueOf(d)));
        }
    }

    public static void AreNotEqual(double d, double d2, String str) {
        if (IsEnabled && d == d2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreNotEqual(double d, double d2, String str, Object obj) {
        if (IsEnabled && d == d2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreNotEqual(double d, double d2, String str, Object obj, Object obj2) {
        if (IsEnabled && d == d2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreNotEqual(double d, double d2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && d == d2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreNotEqual(double d, double d2, String str, Object... objArr) {
        if (IsEnabled && d == d2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreNotEqual(float f, float f2) {
        if (IsEnabled && f == f2) {
            AssertHelper("Assertion failed: values are equal '%s'", toString(Float.valueOf(f)));
        }
    }

    public static void AreNotEqual(float f, float f2, String str) {
        if (IsEnabled && f == f2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreNotEqual(float f, float f2, String str, Object obj) {
        if (IsEnabled && f == f2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreNotEqual(float f, float f2, String str, Object obj, Object obj2) {
        if (IsEnabled && f == f2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreNotEqual(float f, float f2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && f == f2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreNotEqual(float f, float f2, String str, Object... objArr) {
        if (IsEnabled && f == f2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreNotEqual(int i, int i2) {
        if (IsEnabled && i == i2) {
            AssertHelper("Assertion failed: values are equal '%s'", toString(Integer.valueOf(i)));
        }
    }

    public static void AreNotEqual(int i, int i2, String str) {
        if (IsEnabled && i == i2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreNotEqual(int i, int i2, String str, Object obj) {
        if (IsEnabled && i == i2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreNotEqual(int i, int i2, String str, Object obj, Object obj2) {
        if (IsEnabled && i == i2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreNotEqual(int i, int i2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && i == i2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreNotEqual(int i, int i2, String str, Object... objArr) {
        if (IsEnabled && i == i2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreNotEqual(long j, long j2) {
        if (IsEnabled && j == j2) {
            AssertHelper("Assertion failed: values are equal '%s'", toString(Long.valueOf(j)));
        }
    }

    public static void AreNotEqual(long j, long j2, String str) {
        if (IsEnabled && j == j2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreNotEqual(long j, long j2, String str, Object obj) {
        if (IsEnabled && j == j2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreNotEqual(long j, long j2, String str, Object obj, Object obj2) {
        if (IsEnabled && j == j2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreNotEqual(long j, long j2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && j == j2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreNotEqual(long j, long j2, String str, Object... objArr) {
        if (IsEnabled && j == j2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreNotEqual(Object obj, Object obj2) {
        if (!IsEnabled) {
            return;
        }
        if ((obj != null && obj2 != null && obj.equals(obj2)) || (obj == null && obj2 == null)) {
            AssertHelper("Assertion failed: Objects are equal '%s'", toString(obj));
        }
    }

    public static void AreNotEqual(Object obj, Object obj2, String str) {
        if (!IsEnabled) {
            return;
        }
        if ((obj != null && obj2 != null && obj.equals(obj2)) || (obj == null && obj2 == null)) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreNotEqual(Object obj, Object obj2, String str, Object obj3) {
        if (!IsEnabled) {
            return;
        }
        if ((obj != null && obj2 != null && obj.equals(obj2)) || (obj == null && obj2 == null)) {
            AssertHelper(str, obj3);
        }
    }

    public static void AreNotEqual(Object obj, Object obj2, String str, Object obj3, Object obj4) {
        if (!IsEnabled) {
            return;
        }
        if ((obj != null && obj2 != null && obj.equals(obj2)) || (obj == null && obj2 == null)) {
            AssertHelper(str, obj3, obj4);
        }
    }

    public static void AreNotEqual(Object obj, Object obj2, String str, Object obj3, Object obj4, Object obj5) {
        if (!IsEnabled) {
            return;
        }
        if ((obj != null && obj2 != null && obj.equals(obj2)) || (obj == null && obj2 == null)) {
            AssertHelper(str, obj3, obj4, obj5);
        }
    }

    public static void AreNotEqual(Object obj, Object obj2, String str, Object... objArr) {
        if (!IsEnabled) {
            return;
        }
        if ((obj != null && obj2 != null && obj.equals(obj2)) || (obj == null && obj2 == null)) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreNotEqual(short s, short s2) {
        if (IsEnabled && s == s2) {
            AssertHelper("Assertion failed: values are equal '%s'", toString(Short.valueOf(s)));
        }
    }

    public static void AreNotEqual(short s, short s2, String str) {
        if (IsEnabled && s == s2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreNotEqual(short s, short s2, String str, Object obj) {
        if (IsEnabled && s == s2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreNotEqual(short s, short s2, String str, Object obj, Object obj2) {
        if (IsEnabled && s == s2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreNotEqual(short s, short s2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && s == s2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreNotEqual(short s, short s2, String str, Object... objArr) {
        if (IsEnabled && s == s2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreNotEqual(boolean z, boolean z2) {
        if (IsEnabled && z == z2) {
            AssertHelper("Assertion failed: values are equal '%s'", toString(Boolean.valueOf(z)));
        }
    }

    public static void AreNotEqual(boolean z, boolean z2, String str) {
        if (IsEnabled && z == z2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreNotEqual(boolean z, boolean z2, String str, Object obj) {
        if (IsEnabled && z == z2) {
            AssertHelper(str, obj);
        }
    }

    public static void AreNotEqual(boolean z, boolean z2, String str, Object obj, Object obj2) {
        if (IsEnabled && z == z2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void AreNotEqual(boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && z == z2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void AreNotEqual(boolean z, boolean z2, String str, Object... objArr) {
        if (IsEnabled && z == z2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreNotSame(Object obj, Object obj2) {
        if (IsEnabled && obj == obj2) {
            AssertHelper("Assertion failed: Object references are the same '%s'", toString(obj));
        }
    }

    public static void AreNotSame(Object obj, Object obj2, String str) {
        if (IsEnabled && obj == obj2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreNotSame(Object obj, Object obj2, String str, Object obj3) {
        if (IsEnabled && obj == obj2) {
            AssertHelper(str, obj3);
        }
    }

    public static void AreNotSame(Object obj, Object obj2, String str, Object obj3, Object obj4) {
        if (IsEnabled && obj == obj2) {
            AssertHelper(str, obj3, obj4);
        }
    }

    public static void AreNotSame(Object obj, Object obj2, String str, Object obj3, Object obj4, Object obj5) {
        if (IsEnabled && obj == obj2) {
            AssertHelper(str, obj3, obj4, obj5);
        }
    }

    public static void AreNotSame(Object obj, Object obj2, String str, Object... objArr) {
        if (IsEnabled && obj == obj2) {
            AssertHelper(str, objArr);
        }
    }

    public static void AreSame(Object obj, Object obj2) {
        if (IsEnabled && obj != obj2) {
            AssertHelper("Assertion failed: Object references are not the same '%s' but was '%s'", toString(obj), toString(obj2));
        }
    }

    public static void AreSame(Object obj, Object obj2, String str) {
        if (IsEnabled && obj != obj2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void AreSame(Object obj, Object obj2, String str, Object obj3) {
        if (IsEnabled && obj != obj2) {
            AssertHelper(str, obj3);
        }
    }

    public static void AreSame(Object obj, Object obj2, String str, Object obj3, Object obj4) {
        if (IsEnabled && obj != obj2) {
            AssertHelper(str, obj3, obj4);
        }
    }

    public static void AreSame(Object obj, Object obj2, String str, Object obj3, Object obj4, Object obj5) {
        if (IsEnabled && obj != obj2) {
            AssertHelper(str, obj3, obj4, obj5);
        }
    }

    public static void AreSame(Object obj, Object obj2, String str, Object... objArr) {
        if (IsEnabled && obj != obj2) {
            AssertHelper(str, objArr);
        }
    }

    private static void AssertHelper(String str, Object... objArr) {
        throw new AssertionError(StringUtils.TryFormat(str, objArr));
    }

    public static <T> void Contains(T t, Collection<T> collection) {
        if (!IsEnabled) {
            return;
        }
        if (collection != null && collection.contains(t)) {
            return;
        }
        if (collection == null) {
            AssertHelper("Assertion failed: collection is null", new Object[0]);
            return;
        }
        AssertHelper("Assertion failed: collection doesn't contain the item %s", t);
    }

    public static void Fail() {
        if (IsEnabled) {
            AssertHelper("Assertion failed", new Object[0]);
        }
    }

    public static void Fail(String str) {
        if (IsEnabled) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Fail(String str, Object obj) {
        if (IsEnabled) {
            AssertHelper(str, obj);
        }
    }

    public static void Fail(String str, Object obj, Object obj2) {
        if (IsEnabled) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Fail(String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Fail(String str, Object... objArr) {
        if (IsEnabled) {
            AssertHelper(str, objArr);
        }
    }

    public static void Greater(byte b, byte b2) {
        if (IsEnabled && b <= b2) {
            AssertHelper("Assertion failed: '%s' > '%s'", Byte.valueOf(b), Byte.valueOf(b2));
        }
    }

    public static void Greater(byte b, byte b2, String str) {
        if (IsEnabled && b <= b2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Greater(byte b, byte b2, String str, Object obj) {
        if (IsEnabled && b <= b2) {
            AssertHelper(str, obj);
        }
    }

    public static void Greater(byte b, byte b2, String str, Object obj, Object obj2) {
        if (IsEnabled && b <= b2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Greater(byte b, byte b2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && b <= b2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Greater(byte b, byte b2, String str, Object... objArr) {
        if (IsEnabled && b <= b2) {
            AssertHelper(str, objArr);
        }
    }

    public static void Greater(char c, char c2) {
        if (IsEnabled && c <= c2) {
            AssertHelper("Assertion failed: '%s' > '%s'", Character.valueOf(c), Character.valueOf(c2));
        }
    }

    public static void Greater(char c, char c2, String str) {
        if (IsEnabled && c <= c2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Greater(char c, char c2, String str, Object obj) {
        if (IsEnabled && c <= c2) {
            AssertHelper(str, obj);
        }
    }

    public static void Greater(char c, char c2, String str, Object obj, Object obj2) {
        if (IsEnabled && c <= c2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Greater(char c, char c2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && c <= c2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Greater(char c, char c2, String str, Object... objArr) {
        if (IsEnabled && c <= c2) {
            AssertHelper(str, objArr);
        }
    }

    public static void Greater(double d, double d2) {
        if (IsEnabled && d <= d2) {
            AssertHelper("Assertion failed: '%s' > '%s'", Double.valueOf(d), Double.valueOf(d2));
        }
    }

    public static void Greater(double d, double d2, String str) {
        if (IsEnabled && d <= d2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Greater(double d, double d2, String str, Object obj) {
        if (IsEnabled && d <= d2) {
            AssertHelper(str, obj);
        }
    }

    public static void Greater(double d, double d2, String str, Object obj, Object obj2) {
        if (IsEnabled && d <= d2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Greater(double d, double d2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && d <= d2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Greater(double d, double d2, String str, Object... objArr) {
        if (IsEnabled && d <= d2) {
            AssertHelper(str, objArr);
        }
    }

    public static void Greater(float f, float f2) {
        if (IsEnabled && f <= f2) {
            AssertHelper("Assertion failed: '%s' > '%s'", Float.valueOf(f), Float.valueOf(f2));
        }
    }

    public static void Greater(float f, float f2, String str) {
        if (IsEnabled && f <= f2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Greater(float f, float f2, String str, Object obj) {
        if (IsEnabled && f <= f2) {
            AssertHelper(str, obj);
        }
    }

    public static void Greater(float f, float f2, String str, Object obj, Object obj2) {
        if (IsEnabled && f <= f2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Greater(float f, float f2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && f <= f2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Greater(float f, float f2, String str, Object... objArr) {
        if (IsEnabled && f <= f2) {
            AssertHelper(str, objArr);
        }
    }

    public static void Greater(int i, int i2) {
        if (IsEnabled && i <= i2) {
            AssertHelper("Assertion failed: '%s' > '%s'", Integer.valueOf(i), Integer.valueOf(i2));
        }
    }

    public static void Greater(int i, int i2, String str) {
        if (IsEnabled && i <= i2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Greater(int i, int i2, String str, Object obj) {
        if (IsEnabled && i <= i2) {
            AssertHelper(str, obj);
        }
    }

    public static void Greater(int i, int i2, String str, Object obj, Object obj2) {
        if (IsEnabled && i <= i2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Greater(int i, int i2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && i <= i2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Greater(int i, int i2, String str, Object... objArr) {
        if (IsEnabled && i <= i2) {
            AssertHelper(str, objArr);
        }
    }

    public static void Greater(long j, long j2) {
        if (IsEnabled && j <= j2) {
            AssertHelper("Assertion failed: '%s' > '%s'", Long.valueOf(j), Long.valueOf(j2));
        }
    }

    public static void Greater(long j, long j2, String str) {
        if (IsEnabled && j <= j2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Greater(long j, long j2, String str, Object obj) {
        if (IsEnabled && j <= j2) {
            AssertHelper(str, obj);
        }
    }

    public static void Greater(long j, long j2, String str, Object obj, Object obj2) {
        if (IsEnabled && j <= j2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Greater(long j, long j2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && j <= j2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Greater(long j, long j2, String str, Object... objArr) {
        if (IsEnabled && j <= j2) {
            AssertHelper(str, objArr);
        }
    }

    public static void Greater(short s, short s2) {
        if (IsEnabled && s <= s2) {
            AssertHelper("Assertion failed: '%s' > '%s'", Short.valueOf(s), Short.valueOf(s2));
        }
    }

    public static void Greater(short s, short s2, String str) {
        if (IsEnabled && s <= s2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Greater(short s, short s2, String str, Object obj) {
        if (IsEnabled && s <= s2) {
            AssertHelper(str, obj);
        }
    }

    public static void Greater(short s, short s2, String str, Object obj, Object obj2) {
        if (IsEnabled && s <= s2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Greater(short s, short s2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && s <= s2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Greater(short s, short s2, String str, Object... objArr) {
        if (IsEnabled && s <= s2) {
            AssertHelper(str, objArr);
        }
    }

    public static void GreaterOrEqual(byte b, byte b2) {
        if (IsEnabled && b < b2) {
            AssertHelper("Assertion failed: '%s' >= '%s'", Byte.valueOf(b), Byte.valueOf(b2));
        }
    }

    public static void GreaterOrEqual(byte b, byte b2, String str) {
        if (IsEnabled && b < b2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void GreaterOrEqual(byte b, byte b2, String str, Object obj) {
        if (IsEnabled && b < b2) {
            AssertHelper(str, obj);
        }
    }

    public static void GreaterOrEqual(byte b, byte b2, String str, Object obj, Object obj2) {
        if (IsEnabled && b < b2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void GreaterOrEqual(byte b, byte b2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && b < b2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void GreaterOrEqual(byte b, byte b2, String str, Object... objArr) {
        if (IsEnabled && b < b2) {
            AssertHelper(str, objArr);
        }
    }

    public static void GreaterOrEqual(char c, char c2) {
        if (IsEnabled && c < c2) {
            AssertHelper("Assertion failed: '%s' >= '%s'", Character.valueOf(c), Character.valueOf(c2));
        }
    }

    public static void GreaterOrEqual(char c, char c2, String str) {
        if (IsEnabled && c < c2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void GreaterOrEqual(char c, char c2, String str, Object obj) {
        if (IsEnabled && c < c2) {
            AssertHelper(str, obj);
        }
    }

    public static void GreaterOrEqual(char c, char c2, String str, Object obj, Object obj2) {
        if (IsEnabled && c < c2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void GreaterOrEqual(char c, char c2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && c < c2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void GreaterOrEqual(char c, char c2, String str, Object... objArr) {
        if (IsEnabled && c < c2) {
            AssertHelper(str, objArr);
        }
    }

    public static void GreaterOrEqual(double d, double d2) {
        if (IsEnabled && d < d2) {
            AssertHelper("Assertion failed: '%s' >= '%s'", Double.valueOf(d), Double.valueOf(d2));
        }
    }

    public static void GreaterOrEqual(double d, double d2, String str) {
        if (IsEnabled && d < d2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void GreaterOrEqual(double d, double d2, String str, Object obj) {
        if (IsEnabled && d < d2) {
            AssertHelper(str, obj);
        }
    }

    public static void GreaterOrEqual(double d, double d2, String str, Object obj, Object obj2) {
        if (IsEnabled && d < d2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void GreaterOrEqual(double d, double d2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && d < d2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void GreaterOrEqual(double d, double d2, String str, Object... objArr) {
        if (IsEnabled && d < d2) {
            AssertHelper(str, objArr);
        }
    }

    public static void GreaterOrEqual(float f, float f2) {
        if (IsEnabled && f < f2) {
            AssertHelper("Assertion failed: '%s' >= '%s'", Float.valueOf(f), Float.valueOf(f2));
        }
    }

    public static void GreaterOrEqual(float f, float f2, String str) {
        if (IsEnabled && f < f2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void GreaterOrEqual(float f, float f2, String str, Object obj) {
        if (IsEnabled && f < f2) {
            AssertHelper(str, obj);
        }
    }

    public static void GreaterOrEqual(float f, float f2, String str, Object obj, Object obj2) {
        if (IsEnabled && f < f2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void GreaterOrEqual(float f, float f2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && f < f2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void GreaterOrEqual(float f, float f2, String str, Object... objArr) {
        if (IsEnabled && f < f2) {
            AssertHelper(str, objArr);
        }
    }

    public static void GreaterOrEqual(int i, int i2) {
        if (IsEnabled && i < i2) {
            AssertHelper("Assertion failed: '%s' >= '%s'", Integer.valueOf(i), Integer.valueOf(i2));
        }
    }

    public static void GreaterOrEqual(int i, int i2, String str) {
        if (IsEnabled && i < i2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void GreaterOrEqual(int i, int i2, String str, Object obj) {
        if (IsEnabled && i < i2) {
            AssertHelper(str, obj);
        }
    }

    public static void GreaterOrEqual(int i, int i2, String str, Object obj, Object obj2) {
        if (IsEnabled && i < i2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void GreaterOrEqual(int i, int i2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && i < i2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void GreaterOrEqual(int i, int i2, String str, Object... objArr) {
        if (IsEnabled && i < i2) {
            AssertHelper(str, objArr);
        }
    }

    public static void GreaterOrEqual(long j, long j2) {
        if (IsEnabled && j < j2) {
            AssertHelper("Assertion failed: '%s' >= '%s'", Long.valueOf(j), Long.valueOf(j2));
        }
    }

    public static void GreaterOrEqual(long j, long j2, String str) {
        if (IsEnabled && j < j2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void GreaterOrEqual(long j, long j2, String str, Object obj) {
        if (IsEnabled && j < j2) {
            AssertHelper(str, obj);
        }
    }

    public static void GreaterOrEqual(long j, long j2, String str, Object obj, Object obj2) {
        if (IsEnabled && j < j2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void GreaterOrEqual(long j, long j2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && j < j2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void GreaterOrEqual(long j, long j2, String str, Object... objArr) {
        if (IsEnabled && j < j2) {
            AssertHelper(str, objArr);
        }
    }

    public static void GreaterOrEqual(short s, short s2) {
        if (IsEnabled && s < s2) {
            AssertHelper("Assertion failed: '%s' >= '%s'", Short.valueOf(s), Short.valueOf(s2));
        }
    }

    public static void GreaterOrEqual(short s, short s2, String str) {
        if (IsEnabled && s < s2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void GreaterOrEqual(short s, short s2, String str, Object obj) {
        if (IsEnabled && s < s2) {
            AssertHelper(str, obj);
        }
    }

    public static void GreaterOrEqual(short s, short s2, String str, Object obj, Object obj2) {
        if (IsEnabled && s < s2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void GreaterOrEqual(short s, short s2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && s < s2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void GreaterOrEqual(short s, short s2, String str, Object... objArr) {
        if (IsEnabled && s < s2) {
            AssertHelper(str, objArr);
        }
    }

    public static void IsEmpty(String str) {
        if (IsEnabled && !StringUtils.IsNullOrEmpty(str)) {
            AssertHelper("Assertion failed: String is not empty '%s'", str);
        }
    }

    public static void IsEmpty(String str, String str2) {
        if (IsEnabled && !StringUtils.IsNullOrEmpty(str)) {
            AssertHelper(str2, new Object[0]);
        }
    }

    public static void IsEmpty(String str, String str2, Object obj) {
        if (IsEnabled && !StringUtils.IsNullOrEmpty(str)) {
            AssertHelper(str2, obj);
        }
    }

    public static void IsEmpty(String str, String str2, Object obj, Object obj2) {
        if (IsEnabled && !StringUtils.IsNullOrEmpty(str)) {
            AssertHelper(str2, obj, obj2);
        }
    }

    public static void IsEmpty(String str, String str2, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && !StringUtils.IsNullOrEmpty(str)) {
            AssertHelper(str2, obj, obj2, obj3);
        }
    }

    public static void IsEmpty(String str, String str2, Object... objArr) {
        if (IsEnabled && !StringUtils.IsNullOrEmpty(str)) {
            AssertHelper(str2, objArr);
        }
    }

    public static void IsEmpty(Collection<?> collection) {
        if (IsEnabled && collection != null && collection.size() == 0) {
            AssertHelper("Assertion failed: collection is null or not empty '%s'", collection);
        }
    }

    public static void IsEmpty(Collection<?> collection, String str) {
        if (IsEnabled && collection != null && collection.size() == 0) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void IsEmpty(Collection<?> collection, String str, Object obj) {
        if (IsEnabled && collection != null && collection.size() == 0) {
            AssertHelper(str, obj);
        }
    }

    public static void IsEmpty(Collection<?> collection, String str, Object obj, Object obj2) {
        if (IsEnabled && collection != null && collection.size() == 0) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void IsEmpty(Collection<?> collection, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && collection != null && collection.size() == 0) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void IsEmpty(Collection<?> collection, String str, Object... objArr) {
        if (IsEnabled && collection != null && collection.size() == 0) {
            AssertHelper(str, objArr);
        }
    }

    public static void IsFalse(boolean z) {
        if (IsEnabled && z) {
            AssertHelper("Assertion failed: 'false' expected", new Object[0]);
        }
    }

    public static void IsFalse(boolean z, String str) {
        if (IsEnabled && z) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void IsFalse(boolean z, String str, Object obj) {
        if (IsEnabled && z) {
            AssertHelper(str, obj);
        }
    }

    public static void IsFalse(boolean z, String str, Object obj, Object obj2) {
        if (IsEnabled && z) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void IsFalse(boolean z, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && z) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void IsFalse(boolean z, String str, Object... objArr) {
        if (IsEnabled && z) {
            AssertHelper(str, objArr);
        }
    }

    public static void IsInstanceOfType(Class<?> cls, Object obj) {
        if (!IsEnabled) {
            return;
        }
        if (cls == null || !cls.isInstance(obj)) {
            Class cls2 = obj != null ? obj.getClass() : null;
            AssertHelper("Assertion failed: expected type of '%s' but was '%s'", cls, cls2);
        }
    }

    public static void IsInstanceOfType(Class<?> cls, Object obj, String str) {
        if (!IsEnabled) {
            return;
        }
        if (cls == null || !cls.isInstance(obj)) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void IsInstanceOfType(Class<?> cls, Object obj, String str, Object obj2) {
        if (!IsEnabled) {
            return;
        }
        if (cls == null || !cls.isInstance(obj)) {
            AssertHelper(str, obj2);
        }
    }

    public static void IsInstanceOfType(Class<?> cls, Object obj, String str, Object obj2, Object obj3) {
        if (!IsEnabled) {
            return;
        }
        if (cls == null || !cls.isInstance(obj)) {
            AssertHelper(str, obj2, obj3);
        }
    }

    public static void IsInstanceOfType(Class<?> cls, Object obj, String str, Object obj2, Object obj3, Object obj4) {
        if (!IsEnabled) {
            return;
        }
        if (cls == null || !cls.isInstance(obj)) {
            AssertHelper(str, obj2, obj3, obj4);
        }
    }

    public static void IsInstanceOfType(Class<?> cls, Object obj, String str, Object... objArr) {
        if (!IsEnabled) {
            return;
        }
        if (cls == null || !cls.isInstance(obj)) {
            AssertHelper(str, objArr);
        }
    }

    public static void IsNotEmpty(String str) {
        if (IsEnabled && StringUtils.IsNullOrEmpty(str)) {
            AssertHelper("Assertion failed: String is null or empty '%s'", str);
        }
    }

    public static void IsNotEmpty(String str, String str2) {
        if (IsEnabled && StringUtils.IsNullOrEmpty(str)) {
            AssertHelper(str2, new Object[0]);
        }
    }

    public static void IsNotEmpty(String str, String str2, Object obj) {
        if (IsEnabled && StringUtils.IsNullOrEmpty(str)) {
            AssertHelper(str2, obj);
        }
    }

    public static void IsNotEmpty(String str, String str2, Object obj, Object obj2) {
        if (IsEnabled && StringUtils.IsNullOrEmpty(str)) {
            AssertHelper(str2, obj, obj2);
        }
    }

    public static void IsNotEmpty(String str, String str2, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && StringUtils.IsNullOrEmpty(str)) {
            AssertHelper(str2, obj, obj2, obj3);
        }
    }

    public static void IsNotEmpty(String str, String str2, Object... objArr) {
        if (IsEnabled && StringUtils.IsNullOrEmpty(str)) {
            AssertHelper(str2, objArr);
        }
    }

    public static void IsNotEmpty(Collection<?> collection) {
        if (IsEnabled && collection != null && collection.size() != 0) {
            AssertHelper("Assertion failed: collection is null or empty '%s'", collection);
        }
    }

    public static void IsNotEmpty(Collection<?> collection, String str) {
        if (IsEnabled && collection != null && collection.size() != 0) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void IsNotEmpty(Collection<?> collection, String str, Object obj) {
        if (IsEnabled && collection != null && collection.size() != 0) {
            AssertHelper(str, obj);
        }
    }

    public static void IsNotEmpty(Collection<?> collection, String str, Object obj, Object obj2) {
        if (IsEnabled && collection != null && collection.size() != 0) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void IsNotEmpty(Collection<?> collection, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && collection != null && collection.size() != 0) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void IsNotEmpty(Collection<?> collection, String str, Object... objArr) {
        if (IsEnabled && collection != null && collection.size() != 0) {
            AssertHelper(str, objArr);
        }
    }

    public static void IsNotInstanceOfType(Class<?> cls, Object obj) {
        if (IsEnabled && cls != null && cls.isInstance(obj)) {
            Class cls2 = obj != null ? obj.getClass() : null;
            AssertHelper("Assertion failed: Object '%s' is subtype of '%s'", cls, cls2);
        }
    }

    public static void IsNotInstanceOfType(Class<?> cls, Object obj, String str) {
        if (IsEnabled && cls != null && cls.isInstance(obj)) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void IsNotInstanceOfType(Class<?> cls, Object obj, String str, Object obj2) {
        if (IsEnabled && cls != null && cls.isInstance(obj)) {
            AssertHelper(str, obj2);
        }
    }

    public static void IsNotInstanceOfType(Class<?> cls, Object obj, String str, Object obj2, Object obj3) {
        if (IsEnabled && cls != null && cls.isInstance(obj)) {
            AssertHelper(str, obj2, obj3);
        }
    }

    public static void IsNotInstanceOfType(Class<?> cls, Object obj, String str, Object obj2, Object obj3, Object obj4) {
        if (IsEnabled && cls != null && cls.isInstance(obj)) {
            AssertHelper(str, obj2, obj3, obj4);
        }
    }

    public static void IsNotInstanceOfType(Class<?> cls, Object obj, String str, Object... objArr) {
        if (IsEnabled && cls != null && cls.isInstance(obj)) {
            AssertHelper(str, objArr);
        }
    }

    public static void IsNotNull(Object obj) {
        if (IsEnabled && obj == null) {
            AssertHelper("Assertion failed: Object is 'null'", new Object[0]);
        }
    }

    public static void IsNotNull(Object obj, String str) {
        if (IsEnabled && obj == null) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void IsNotNull(Object obj, String str, Object obj2) {
        if (IsEnabled && obj == null) {
            AssertHelper(str, obj2);
        }
    }

    public static void IsNotNull(Object obj, String str, Object obj2, Object obj3) {
        if (IsEnabled && obj == null) {
            AssertHelper(str, obj2, obj3);
        }
    }

    public static void IsNotNull(Object obj, String str, Object obj2, Object obj3, Object obj4) {
        if (IsEnabled && obj == null) {
            AssertHelper(str, obj2, obj3, obj4);
        }
    }

    public static void IsNotNull(Object obj, String str, Object... objArr) {
        if (IsEnabled && obj == null) {
            AssertHelper(str, objArr);
        }
    }

    public static void IsNotNullElement(List<?> list) {
        if (IsEnabled) {
            int i = 0;
            for (Object IsNotNull : list) {
                IsNotNull(IsNotNull, "Element at %s is null", toString(Integer.valueOf(i)));
                i++;
            }
        }
    }

    public static void IsNull(Object obj) {
        if (IsEnabled && obj != null) {
            AssertHelper("Assertion failed: expected 'null' but was '%s'", obj);
        }
    }

    public static void IsNull(Object obj, String str) {
        if (IsEnabled && obj != null) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void IsNull(Object obj, String str, Object obj2) {
        if (IsEnabled && obj != null) {
            AssertHelper(str, obj2);
        }
    }

    public static void IsNull(Object obj, String str, Object obj2, Object obj3) {
        if (IsEnabled && obj != null) {
            AssertHelper(str, obj2, obj3);
        }
    }

    public static void IsNull(Object obj, String str, Object obj2, Object obj3, Object obj4) {
        if (IsEnabled && obj != null) {
            AssertHelper(str, obj2, obj3, obj4);
        }
    }

    public static void IsNull(Object obj, String str, Object... objArr) {
        if (IsEnabled && obj != null) {
            AssertHelper(str, objArr);
        }
    }

    public static void IsTrue(boolean z) {
        if (IsEnabled && !z) {
            AssertHelper("Assertion failed: 'true' expected", new Object[0]);
        }
    }

    public static void IsTrue(boolean z, String str) {
        if (IsEnabled && !z) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void IsTrue(boolean z, String str, Object obj) {
        if (IsEnabled && !z) {
            AssertHelper(str, obj);
        }
    }

    public static void IsTrue(boolean z, String str, Object obj, Object obj2) {
        if (IsEnabled && !z) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void IsTrue(boolean z, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && !z) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void IsTrue(boolean z, String str, Object... objArr) {
        if (IsEnabled && !z) {
            AssertHelper(str, objArr);
        }
    }

    public static void Less(byte b, byte b2) {
        if (IsEnabled && b >= b2) {
            AssertHelper("Assertion failed: '%s' < '%s'", Byte.valueOf(b), Byte.valueOf(b2));
        }
    }

    public static void Less(byte b, byte b2, String str) {
        if (IsEnabled && b >= b2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Less(byte b, byte b2, String str, Object obj) {
        if (IsEnabled && b >= b2) {
            AssertHelper(str, obj);
        }
    }

    public static void Less(byte b, byte b2, String str, Object obj, Object obj2) {
        if (IsEnabled && b >= b2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Less(byte b, byte b2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && b >= b2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Less(byte b, byte b2, String str, Object... objArr) {
        if (IsEnabled && b >= b2) {
            AssertHelper(str, objArr);
        }
    }

    public static void Less(char c, char c2) {
        if (IsEnabled && c >= c2) {
            AssertHelper("Assertion failed: '%s' < '%s'", Character.valueOf(c), Character.valueOf(c2));
        }
    }

    public static void Less(char c, char c2, String str) {
        if (IsEnabled && c >= c2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Less(char c, char c2, String str, Object obj) {
        if (IsEnabled && c >= c2) {
            AssertHelper(str, obj);
        }
    }

    public static void Less(char c, char c2, String str, Object obj, Object obj2) {
        if (IsEnabled && c >= c2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Less(char c, char c2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && c >= c2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Less(char c, char c2, String str, Object... objArr) {
        if (IsEnabled && c >= c2) {
            AssertHelper(str, objArr);
        }
    }

    public static void Less(double d, double d2) {
        if (IsEnabled && d >= d2) {
            AssertHelper("Assertion failed: '%s' < '%s'", Double.valueOf(d), Double.valueOf(d2));
        }
    }

    public static void Less(double d, double d2, String str) {
        if (IsEnabled && d >= d2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Less(double d, double d2, String str, Object obj) {
        if (IsEnabled && d >= d2) {
            AssertHelper(str, obj);
        }
    }

    public static void Less(double d, double d2, String str, Object obj, Object obj2) {
        if (IsEnabled && d >= d2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Less(double d, double d2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && d >= d2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Less(double d, double d2, String str, Object... objArr) {
        if (IsEnabled && d >= d2) {
            AssertHelper(str, objArr);
        }
    }

    public static void Less(float f, float f2) {
        if (IsEnabled && f >= f2) {
            AssertHelper("Assertion failed: '%s' < '%s'", Float.valueOf(f), Float.valueOf(f2));
        }
    }

    public static void Less(float f, float f2, String str) {
        if (IsEnabled && f >= f2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Less(float f, float f2, String str, Object obj) {
        if (IsEnabled && f >= f2) {
            AssertHelper(str, obj);
        }
    }

    public static void Less(float f, float f2, String str, Object obj, Object obj2) {
        if (IsEnabled && f >= f2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Less(float f, float f2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && f >= f2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Less(float f, float f2, String str, Object... objArr) {
        if (IsEnabled && f >= f2) {
            AssertHelper(str, objArr);
        }
    }

    public static void Less(int i, int i2) {
        if (IsEnabled && i >= i2) {
            AssertHelper("Assertion failed: '%s' < '%s'", Integer.valueOf(i), Integer.valueOf(i2));
        }
    }

    public static void Less(int i, int i2, String str) {
        if (IsEnabled && i >= i2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Less(int i, int i2, String str, Object obj) {
        if (IsEnabled && i >= i2) {
            AssertHelper(str, obj);
        }
    }

    public static void Less(int i, int i2, String str, Object obj, Object obj2) {
        if (IsEnabled && i >= i2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Less(int i, int i2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && i >= i2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Less(int i, int i2, String str, Object... objArr) {
        if (IsEnabled && i >= i2) {
            AssertHelper(str, objArr);
        }
    }

    public static void Less(long j, long j2) {
        if (IsEnabled && j >= j2) {
            AssertHelper("Assertion failed: '%s' < '%s'", Long.valueOf(j), Long.valueOf(j2));
        }
    }

    public static void Less(long j, long j2, String str) {
        if (IsEnabled && j >= j2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Less(long j, long j2, String str, Object obj) {
        if (IsEnabled && j >= j2) {
            AssertHelper(str, obj);
        }
    }

    public static void Less(long j, long j2, String str, Object obj, Object obj2) {
        if (IsEnabled && j >= j2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Less(long j, long j2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && j >= j2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Less(long j, long j2, String str, Object... objArr) {
        if (IsEnabled && j >= j2) {
            AssertHelper(str, objArr);
        }
    }

    public static void Less(short s, short s2) {
        if (IsEnabled && s >= s2) {
            AssertHelper("Assertion failed: '%s' < '%s'", Short.valueOf(s), Short.valueOf(s2));
        }
    }

    public static void Less(short s, short s2, String str) {
        if (IsEnabled && s >= s2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void Less(short s, short s2, String str, Object obj) {
        if (IsEnabled && s >= s2) {
            AssertHelper(str, obj);
        }
    }

    public static void Less(short s, short s2, String str, Object obj, Object obj2) {
        if (IsEnabled && s >= s2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void Less(short s, short s2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && s >= s2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void Less(short s, short s2, String str, Object... objArr) {
        if (IsEnabled && s >= s2) {
            AssertHelper(str, objArr);
        }
    }

    public static void LessOrEqual(byte b, byte b2) {
        if (IsEnabled && b > b2) {
            AssertHelper("Assertion failed: '%s' <= '%s'", Byte.valueOf(b), Byte.valueOf(b2));
        }
    }

    public static void LessOrEqual(byte b, byte b2, String str) {
        if (IsEnabled && b > b2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void LessOrEqual(byte b, byte b2, String str, Object obj) {
        if (IsEnabled && b > b2) {
            AssertHelper(str, obj);
        }
    }

    public static void LessOrEqual(byte b, byte b2, String str, Object obj, Object obj2) {
        if (IsEnabled && b > b2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void LessOrEqual(byte b, byte b2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && b > b2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void LessOrEqual(byte b, byte b2, String str, Object... objArr) {
        if (IsEnabled && b > b2) {
            AssertHelper(str, objArr);
        }
    }

    public static void LessOrEqual(char c, char c2) {
        if (IsEnabled && c > c2) {
            AssertHelper("Assertion failed: '%s' <= '%s'", Character.valueOf(c), Character.valueOf(c2));
        }
    }

    public static void LessOrEqual(char c, char c2, String str) {
        if (IsEnabled && c > c2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void LessOrEqual(char c, char c2, String str, Object obj) {
        if (IsEnabled && c > c2) {
            AssertHelper(str, obj);
        }
    }

    public static void LessOrEqual(char c, char c2, String str, Object obj, Object obj2) {
        if (IsEnabled && c > c2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void LessOrEqual(char c, char c2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && c > c2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void LessOrEqual(char c, char c2, String str, Object... objArr) {
        if (IsEnabled && c > c2) {
            AssertHelper(str, objArr);
        }
    }

    public static void LessOrEqual(double d, double d2) {
        if (IsEnabled && d > d2) {
            AssertHelper("Assertion failed: '%s' <= '%s'", Double.valueOf(d), Double.valueOf(d2));
        }
    }

    public static void LessOrEqual(double d, double d2, String str) {
        if (IsEnabled && d > d2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void LessOrEqual(double d, double d2, String str, Object obj) {
        if (IsEnabled && d > d2) {
            AssertHelper(str, obj);
        }
    }

    public static void LessOrEqual(double d, double d2, String str, Object obj, Object obj2) {
        if (IsEnabled && d > d2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void LessOrEqual(double d, double d2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && d > d2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void LessOrEqual(double d, double d2, String str, Object... objArr) {
        if (IsEnabled && d > d2) {
            AssertHelper(str, objArr);
        }
    }

    public static void LessOrEqual(float f, float f2) {
        if (IsEnabled && f > f2) {
            AssertHelper("Assertion failed: '%s' <= '%s'", Float.valueOf(f), Float.valueOf(f2));
        }
    }

    public static void LessOrEqual(float f, float f2, String str) {
        if (IsEnabled && f > f2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void LessOrEqual(float f, float f2, String str, Object obj) {
        if (IsEnabled && f > f2) {
            AssertHelper(str, obj);
        }
    }

    public static void LessOrEqual(float f, float f2, String str, Object obj, Object obj2) {
        if (IsEnabled && f > f2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void LessOrEqual(float f, float f2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && f > f2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void LessOrEqual(float f, float f2, String str, Object... objArr) {
        if (IsEnabled && f > f2) {
            AssertHelper(str, objArr);
        }
    }

    public static void LessOrEqual(int i, int i2) {
        if (IsEnabled && i > i2) {
            AssertHelper("Assertion failed: '%s' <= '%s'", Integer.valueOf(i), Integer.valueOf(i2));
        }
    }

    public static void LessOrEqual(int i, int i2, String str) {
        if (IsEnabled && i > i2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void LessOrEqual(int i, int i2, String str, Object obj) {
        if (IsEnabled && i > i2) {
            AssertHelper(str, obj);
        }
    }

    public static void LessOrEqual(int i, int i2, String str, Object obj, Object obj2) {
        if (IsEnabled && i > i2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void LessOrEqual(int i, int i2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && i > i2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void LessOrEqual(int i, int i2, String str, Object... objArr) {
        if (IsEnabled && i > i2) {
            AssertHelper(str, objArr);
        }
    }

    public static void LessOrEqual(long j, long j2) {
        if (IsEnabled && j > j2) {
            AssertHelper("Assertion failed: '%s' <= '%s'", Long.valueOf(j), Long.valueOf(j2));
        }
    }

    public static void LessOrEqual(long j, long j2, String str) {
        if (IsEnabled && j > j2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void LessOrEqual(long j, long j2, String str, Object obj) {
        if (IsEnabled && j > j2) {
            AssertHelper(str, obj);
        }
    }

    public static void LessOrEqual(long j, long j2, String str, Object obj, Object obj2) {
        if (IsEnabled && j > j2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void LessOrEqual(long j, long j2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && j > j2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void LessOrEqual(long j, long j2, String str, Object... objArr) {
        if (IsEnabled && j > j2) {
            AssertHelper(str, objArr);
        }
    }

    public static void LessOrEqual(short s, short s2) {
        if (IsEnabled && s > s2) {
            AssertHelper("Assertion failed: '%s' <= '%s'", Short.valueOf(s), Short.valueOf(s2));
        }
    }

    public static void LessOrEqual(short s, short s2, String str) {
        if (IsEnabled && s > s2) {
            AssertHelper(str, new Object[0]);
        }
    }

    public static void LessOrEqual(short s, short s2, String str, Object obj) {
        if (IsEnabled && s > s2) {
            AssertHelper(str, obj);
        }
    }

    public static void LessOrEqual(short s, short s2, String str, Object obj, Object obj2) {
        if (IsEnabled && s > s2) {
            AssertHelper(str, obj, obj2);
        }
    }

    public static void LessOrEqual(short s, short s2, String str, Object obj, Object obj2, Object obj3) {
        if (IsEnabled && s > s2) {
            AssertHelper(str, obj, obj2, obj3);
        }
    }

    public static void LessOrEqual(short s, short s2, String str, Object... objArr) {
        if (IsEnabled && s > s2) {
            AssertHelper(str, objArr);
        }
    }

    public static <T> void NotContains(T t, Collection<T> collection) {
        if (!IsEnabled || collection == null || !collection.contains(t)) {
            return;
        }
        if (collection == null) {
            AssertHelper("Assertion failed: collection is null", new Object[0]);
            return;
        }
        AssertHelper("Assertion failed: collection contains the item %s", t);
    }

    private static String toString(Object obj) {
        return ObjectUtils.toString(obj);
    }
}
