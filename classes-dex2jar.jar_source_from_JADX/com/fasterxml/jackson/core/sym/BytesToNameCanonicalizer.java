package com.fasterxml.jackson.core.sym;

import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.MotionEventCompat;
import com.fasterxml.jackson.core.JsonFactory.Feature;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.BitSet;
import java.util.concurrent.atomic.AtomicReference;
import spacemadness.com.lunarconsole.C1401R;

@Deprecated
public final class BytesToNameCanonicalizer {
    private static final int DEFAULT_T_SIZE = 64;
    static final int INITIAL_COLLISION_LEN = 32;
    static final int LAST_VALID_BUCKET = 254;
    private static final int MAX_COLL_CHAIN_LENGTH = 200;
    static final int MAX_ENTRIES_FOR_REUSE = 6000;
    private static final int MAX_T_SIZE = 65536;
    static final int MIN_HASH_SIZE = 16;
    private static final int MULT = 33;
    private static final int MULT2 = 65599;
    private static final int MULT3 = 31;
    protected int _collCount;
    protected int _collEnd;
    protected Bucket[] _collList;
    private boolean _collListShared;
    protected int _count;
    protected final boolean _failOnDoS;
    protected int[] _hash;
    protected int _hashMask;
    private boolean _hashShared;
    protected boolean _intern;
    protected int _longestCollisionList;
    protected Name[] _mainNames;
    private boolean _namesShared;
    private transient boolean _needRehash;
    protected BitSet _overflows;
    protected final BytesToNameCanonicalizer _parent;
    private final int _seed;
    protected final AtomicReference<TableInfo> _tableInfo;

    private static final class Bucket {
        public final int hash;
        public final int length;
        public final Name name;
        public final Bucket next;

        Bucket(Name name, Bucket bucket) {
            this.name = name;
            this.next = bucket;
            this.length = bucket == null ? 1 : bucket.length + 1;
            this.hash = name.hashCode();
        }

        public Name find(int i, int i2, int i3) {
            if (this.hash == i && this.name.equals(i2, i3)) {
                return this.name;
            }
            for (Bucket bucket = this.next; bucket != null; bucket = bucket.next) {
                if (bucket.hash == i) {
                    Name name = bucket.name;
                    if (name.equals(i2, i3)) {
                        return name;
                    }
                }
            }
            return null;
        }

        public Name find(int i, int i2, int i3, int i4) {
            if (this.hash == i && this.name.equals(i2, i3, i4)) {
                return this.name;
            }
            for (Bucket bucket = this.next; bucket != null; bucket = bucket.next) {
                if (bucket.hash == i) {
                    Name name = bucket.name;
                    if (name.equals(i2, i3, i4)) {
                        return name;
                    }
                }
            }
            return null;
        }

        public Name find(int i, int[] iArr, int i2) {
            if (this.hash == i && this.name.equals(iArr, i2)) {
                return this.name;
            }
            for (Bucket bucket = this.next; bucket != null; bucket = bucket.next) {
                if (bucket.hash == i) {
                    Name name = bucket.name;
                    if (name.equals(iArr, i2)) {
                        return name;
                    }
                }
            }
            return null;
        }
    }

    private static final class TableInfo {
        public final int collCount;
        public final int collEnd;
        public final Bucket[] collList;
        public final int count;
        public final int longestCollisionList;
        public final int[] mainHash;
        public final int mainHashMask;
        public final Name[] mainNames;

        public TableInfo(int i, int i2, int[] iArr, Name[] nameArr, Bucket[] bucketArr, int i3, int i4, int i5) {
            this.count = i;
            this.mainHashMask = i2;
            this.mainHash = iArr;
            this.mainNames = nameArr;
            this.collList = bucketArr;
            this.collCount = i3;
            this.collEnd = i4;
            this.longestCollisionList = i5;
        }

        public TableInfo(BytesToNameCanonicalizer bytesToNameCanonicalizer) {
            this.count = bytesToNameCanonicalizer._count;
            this.mainHashMask = bytesToNameCanonicalizer._hashMask;
            this.mainHash = bytesToNameCanonicalizer._hash;
            this.mainNames = bytesToNameCanonicalizer._mainNames;
            this.collList = bytesToNameCanonicalizer._collList;
            this.collCount = bytesToNameCanonicalizer._collCount;
            this.collEnd = bytesToNameCanonicalizer._collEnd;
            this.longestCollisionList = bytesToNameCanonicalizer._longestCollisionList;
        }
    }

    private BytesToNameCanonicalizer(int i, boolean z, int i2, boolean z2) {
        int i3 = MIN_HASH_SIZE;
        this._parent = null;
        this._seed = i2;
        this._intern = z;
        this._failOnDoS = z2;
        if (i < MIN_HASH_SIZE) {
            i = MIN_HASH_SIZE;
        } else if (((i - 1) & i) != 0) {
            while (i3 < i) {
                i3 += i3;
            }
            i = i3;
        }
        this._tableInfo = new AtomicReference(initTableInfo(i));
    }

    private BytesToNameCanonicalizer(BytesToNameCanonicalizer bytesToNameCanonicalizer, boolean z, int i, boolean z2, TableInfo tableInfo) {
        this._parent = bytesToNameCanonicalizer;
        this._seed = i;
        this._intern = z;
        this._failOnDoS = z2;
        this._tableInfo = null;
        this._count = tableInfo.count;
        this._hashMask = tableInfo.mainHashMask;
        this._hash = tableInfo.mainHash;
        this._mainNames = tableInfo.mainNames;
        this._collList = tableInfo.collList;
        this._collCount = tableInfo.collCount;
        this._collEnd = tableInfo.collEnd;
        this._longestCollisionList = tableInfo.longestCollisionList;
        this._needRehash = false;
        this._hashShared = true;
        this._namesShared = true;
        this._collListShared = true;
    }

    private void _addSymbol(int i, Name name) {
        int i2;
        if (this._hashShared) {
            unshareMain();
        }
        if (this._needRehash) {
            rehash();
        }
        this._count++;
        int i3 = i & this._hashMask;
        if (this._mainNames[i3] == null) {
            this._hash[i3] = i << 8;
            if (this._namesShared) {
                unshareNames();
            }
            this._mainNames[i3] = name;
        } else {
            if (this._collListShared) {
                unshareCollision();
            }
            this._collCount++;
            int i4 = this._hash[i3];
            i2 = i4 & MotionEventCompat.ACTION_MASK;
            if (i2 == 0) {
                if (this._collEnd <= LAST_VALID_BUCKET) {
                    i2 = this._collEnd;
                    this._collEnd++;
                    if (i2 >= this._collList.length) {
                        expandCollision();
                    }
                } else {
                    i2 = findBestBucket();
                }
                this._hash[i3] = (i4 & InputDeviceCompat.SOURCE_ANY) | (i2 + 1);
            } else {
                i2--;
            }
            Bucket bucket = new Bucket(name, this._collList[i2]);
            if (bucket.length > MAX_COLL_CHAIN_LENGTH) {
                _handleSpillOverflow(i2, bucket);
            } else {
                this._collList[i2] = bucket;
                this._longestCollisionList = Math.max(bucket.length, this._longestCollisionList);
            }
        }
        i2 = this._hash.length;
        if (this._count > (i2 >> 1)) {
            i3 = i2 >> 2;
            if (this._count > i2 - i3) {
                this._needRehash = true;
            } else if (this._collCount >= i3) {
                this._needRehash = true;
            }
        }
    }

    private void _handleSpillOverflow(int i, Bucket bucket) {
        if (this._overflows == null) {
            this._overflows = new BitSet();
            this._overflows.set(i);
        } else if (this._overflows.get(i)) {
            if (this._failOnDoS) {
                reportTooManyCollisions(MAX_COLL_CHAIN_LENGTH);
            }
            this._intern = false;
        } else {
            this._overflows.set(i);
        }
        this._collList[i] = null;
        this._count -= bucket.length;
        this._longestCollisionList = -1;
    }

    protected static int[] calcQuads(byte[] bArr) {
        int length = bArr.length;
        int[] iArr = new int[((length + 3) / 4)];
        int i = 0;
        while (i < length) {
            int i2 = bArr[i] & MotionEventCompat.ACTION_MASK;
            i++;
            if (i < length) {
                i2 = (i2 << 8) | (bArr[i] & MotionEventCompat.ACTION_MASK);
                i++;
                if (i < length) {
                    i2 = (i2 << 8) | (bArr[i] & MotionEventCompat.ACTION_MASK);
                    i++;
                    if (i < length) {
                        i2 = (i2 << 8) | (bArr[i] & MotionEventCompat.ACTION_MASK);
                    }
                }
            }
            iArr[i >> 2] = i2;
            i++;
        }
        return iArr;
    }

    private static Name constructName(int i, String str, int i2, int i3) {
        return i3 == 0 ? new Name1(str, i, i2) : new Name2(str, i, i2, i3);
    }

    private static Name constructName(int i, String str, int[] iArr, int i2) {
        if (i2 >= 4) {
            return NameN.construct(str, i, iArr, i2);
        }
        switch (i2) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return new Name1(str, i, iArr[0]);
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                return new Name2(str, i, iArr[0], iArr[1]);
            default:
                return new Name3(str, i, iArr[0], iArr[1], iArr[2]);
        }
    }

    public static BytesToNameCanonicalizer createRoot() {
        long currentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) (currentTimeMillis >>> INITIAL_COLLISION_LEN)) + ((int) currentTimeMillis)) | 1);
    }

    protected static BytesToNameCanonicalizer createRoot(int i) {
        return new BytesToNameCanonicalizer(DEFAULT_T_SIZE, true, i, true);
    }

    private void expandCollision() {
        Bucket[] bucketArr = this._collList;
        this._collList = (Bucket[]) Arrays.copyOf(bucketArr, bucketArr.length * 2);
    }

    private int findBestBucket() {
        Bucket[] bucketArr = this._collList;
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        int i3 = 0;
        int i4 = this._collEnd;
        while (i3 < i4) {
            Bucket bucket = bucketArr[i3];
            if (bucket == null) {
                return i3;
            }
            int i5 = bucket.length;
            if (i5 >= i) {
                i5 = i;
                i = i2;
            } else if (i5 == 1) {
                return i3;
            } else {
                i = i3;
            }
            i3++;
            i2 = i;
            i = i5;
        }
        return i2;
    }

    public static Name getEmptyName() {
        return Name1.getEmptyName();
    }

    private TableInfo initTableInfo(int i) {
        return new TableInfo(0, i - 1, new int[i], new Name[i], null, 0, 0, 0);
    }

    private void mergeChild(TableInfo tableInfo) {
        int i = tableInfo.count;
        TableInfo tableInfo2 = (TableInfo) this._tableInfo.get();
        if (i != tableInfo2.count) {
            Object initTableInfo;
            if (i > MAX_ENTRIES_FOR_REUSE) {
                initTableInfo = initTableInfo(DEFAULT_T_SIZE);
            }
            this._tableInfo.compareAndSet(tableInfo2, initTableInfo);
        }
    }

    private void nukeSymbols() {
        this._count = 0;
        this._longestCollisionList = 0;
        Arrays.fill(this._hash, 0);
        Arrays.fill(this._mainNames, null);
        Arrays.fill(this._collList, null);
        this._collCount = 0;
        this._collEnd = 0;
    }

    private void rehash() {
        this._needRehash = false;
        this._namesShared = false;
        int length = this._hash.length;
        int i = length + length;
        if (i > MAX_T_SIZE) {
            nukeSymbols();
            return;
        }
        int i2;
        this._hash = new int[i];
        this._hashMask = i - 1;
        Name[] nameArr = this._mainNames;
        this._mainNames = new Name[i];
        i = 0;
        for (i2 = 0; i2 < length; i2++) {
            Name name = nameArr[i2];
            if (name != null) {
                i++;
                int hashCode = name.hashCode();
                int i3 = this._hashMask & hashCode;
                this._mainNames[i3] = name;
                this._hash[i3] = hashCode << 8;
            }
        }
        int i4 = this._collEnd;
        if (i4 == 0) {
            this._longestCollisionList = 0;
            return;
        }
        this._collCount = 0;
        this._collEnd = 0;
        this._collListShared = false;
        Bucket[] bucketArr = this._collList;
        this._collList = new Bucket[bucketArr.length];
        i2 = 0;
        int i5 = i;
        i = false;
        while (i2 < i4) {
            length = i5;
            for (Bucket bucket = bucketArr[i2]; bucket != null; bucket = bucket.next) {
                length++;
                Name name2 = bucket.name;
                i5 = name2.hashCode();
                int i6 = this._hashMask & i5;
                int i7 = this._hash[i6];
                if (this._mainNames[i6] == null) {
                    this._hash[i6] = i5 << 8;
                    this._mainNames[i6] = name2;
                } else {
                    this._collCount++;
                    i5 = i7 & MotionEventCompat.ACTION_MASK;
                    if (i5 == 0) {
                        if (this._collEnd <= LAST_VALID_BUCKET) {
                            i5 = this._collEnd;
                            this._collEnd++;
                            if (i5 >= this._collList.length) {
                                expandCollision();
                            }
                        } else {
                            i5 = findBestBucket();
                        }
                        this._hash[i6] = (i7 & InputDeviceCompat.SOURCE_ANY) | (i5 + 1);
                    } else {
                        i5--;
                    }
                    Bucket bucket2 = new Bucket(name2, this._collList[i5]);
                    this._collList[i5] = bucket2;
                    i = Math.max(i, bucket2.length);
                }
            }
            i2++;
            i5 = length;
        }
        this._longestCollisionList = i;
        if (i5 != this._count) {
            throw new RuntimeException("Internal error: count after rehash " + i5 + "; should be " + this._count);
        }
    }

    private void unshareCollision() {
        Bucket[] bucketArr = this._collList;
        if (bucketArr == null) {
            this._collList = new Bucket[INITIAL_COLLISION_LEN];
        } else {
            this._collList = (Bucket[]) Arrays.copyOf(bucketArr, bucketArr.length);
        }
        this._collListShared = false;
    }

    private void unshareMain() {
        int[] iArr = this._hash;
        this._hash = Arrays.copyOf(iArr, iArr.length);
        this._hashShared = false;
    }

    private void unshareNames() {
        Name[] nameArr = this._mainNames;
        this._mainNames = (Name[]) Arrays.copyOf(nameArr, nameArr.length);
        this._namesShared = false;
    }

    public Name addName(String str, int i, int i2) {
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        int calcHash = i2 == 0 ? calcHash(i) : calcHash(i, i2);
        Name constructName = constructName(calcHash, str, i, i2);
        _addSymbol(calcHash, constructName);
        return constructName;
    }

    public Name addName(String str, int[] iArr, int i) {
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        int calcHash = i < 4 ? i == 1 ? calcHash(iArr[0]) : i == 2 ? calcHash(iArr[0], iArr[1]) : calcHash(iArr[0], iArr[1], iArr[2]) : calcHash(iArr, i);
        Name constructName = constructName(calcHash, str, iArr, i);
        _addSymbol(calcHash, constructName);
        return constructName;
    }

    public int bucketCount() {
        return this._hash.length;
    }

    public int calcHash(int i) {
        int i2 = this._seed ^ i;
        i2 += i2 >>> 15;
        return i2 ^ (i2 >>> 9);
    }

    public int calcHash(int i, int i2) {
        int i3 = (((i >>> 15) ^ i) + (i2 * MULT)) ^ this._seed;
        i3 += i3 >>> 7;
        return i3 ^ (i3 >>> 4);
    }

    public int calcHash(int i, int i2, int i3) {
        int i4 = this._seed ^ i;
        i4 = (((i4 + (i4 >>> 9)) * MULT) + i2) * MULT2;
        i4 = (i4 + (i4 >>> 15)) ^ i3;
        i4 += i4 >>> 17;
        i4 += i4 >>> 15;
        return i4 ^ (i4 << 9);
    }

    public int calcHash(int[] iArr, int i) {
        if (i < 4) {
            throw new IllegalArgumentException();
        }
        int i2 = iArr[0] ^ this._seed;
        i2 = (((i2 + (i2 >>> 9)) * MULT) + iArr[1]) * MULT2;
        i2 = (i2 + (i2 >>> 15)) ^ iArr[2];
        i2 += i2 >>> 17;
        for (int i3 = 3; i3 < i; i3++) {
            i2 = (i2 * MULT3) ^ iArr[i3];
            i2 += i2 >>> 3;
            i2 ^= i2 << 7;
        }
        i2 += i2 >>> 15;
        return i2 ^ (i2 << 9);
    }

    public int collisionCount() {
        return this._collCount;
    }

    public Name findName(int i) {
        int calcHash = calcHash(i);
        int i2 = this._hashMask & calcHash;
        int i3 = this._hash[i2];
        if ((((i3 >> 8) ^ calcHash) << 8) == 0) {
            Name name = this._mainNames[i2];
            if (name == null) {
                return null;
            }
            if (name.equals(i)) {
                return name;
            }
        } else if (i3 == 0) {
            return null;
        }
        i2 = i3 & MotionEventCompat.ACTION_MASK;
        if (i2 <= 0) {
            return null;
        }
        Bucket bucket = this._collList[i2 - 1];
        return bucket != null ? bucket.find(calcHash, i, 0) : null;
    }

    public Name findName(int i, int i2) {
        int calcHash = i2 == 0 ? calcHash(i) : calcHash(i, i2);
        int i3 = this._hashMask & calcHash;
        int i4 = this._hash[i3];
        if ((((i4 >> 8) ^ calcHash) << 8) == 0) {
            Name name = this._mainNames[i3];
            if (name == null) {
                return null;
            }
            if (name.equals(i, i2)) {
                return name;
            }
        } else if (i4 == 0) {
            return null;
        }
        i3 = i4 & MotionEventCompat.ACTION_MASK;
        if (i3 > 0) {
            Bucket bucket = this._collList[i3 - 1];
            if (bucket != null) {
                return bucket.find(calcHash, i, i2);
            }
        }
        return null;
    }

    public Name findName(int i, int i2, int i3) {
        int calcHash = calcHash(i, i2, i3);
        int i4 = this._hashMask & calcHash;
        int i5 = this._hash[i4];
        if ((((i5 >> 8) ^ calcHash) << 8) == 0) {
            Name name = this._mainNames[i4];
            if (name == null) {
                return null;
            }
            if (name.equals(i, i2, i3)) {
                return name;
            }
        } else if (i5 == 0) {
            return null;
        }
        i4 = i5 & MotionEventCompat.ACTION_MASK;
        if (i4 <= 0) {
            return null;
        }
        Bucket bucket = this._collList[i4 - 1];
        return bucket != null ? bucket.find(calcHash, i, i2, i3) : null;
    }

    public Name findName(int[] iArr, int i) {
        int i2 = 0;
        if (i >= 4) {
            int calcHash = calcHash(iArr, i);
            i2 = this._hashMask & calcHash;
            int i3 = this._hash[i2];
            if ((((i3 >> 8) ^ calcHash) << 8) == 0) {
                Name name = this._mainNames[i2];
                if (name == null || name.equals(iArr, i)) {
                    return name;
                }
            } else if (i3 == 0) {
                return null;
            }
            i2 = i3 & MotionEventCompat.ACTION_MASK;
            if (i2 > 0) {
                Bucket bucket = this._collList[i2 - 1];
                if (bucket != null) {
                    return bucket.find(calcHash, iArr, i);
                }
            }
            return null;
        } else if (i == 3) {
            return findName(iArr[0], iArr[1], iArr[2]);
        } else {
            int i4 = iArr[0];
            if (i >= 2) {
                i2 = iArr[1];
            }
            return findName(i4, i2);
        }
    }

    public int hashSeed() {
        return this._seed;
    }

    public BytesToNameCanonicalizer makeChild(int i) {
        return new BytesToNameCanonicalizer(this, Feature.INTERN_FIELD_NAMES.enabledIn(i), this._seed, Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(i), (TableInfo) this._tableInfo.get());
    }

    @Deprecated
    public BytesToNameCanonicalizer makeChild(boolean z, boolean z2) {
        return new BytesToNameCanonicalizer(this, z2, this._seed, true, (TableInfo) this._tableInfo.get());
    }

    public int maxCollisionLength() {
        return this._longestCollisionList;
    }

    public boolean maybeDirty() {
        return !this._hashShared;
    }

    public void release() {
        if (this._parent != null && maybeDirty()) {
            this._parent.mergeChild(new TableInfo(this));
            this._hashShared = true;
            this._namesShared = true;
            this._collListShared = true;
        }
    }

    protected void reportTooManyCollisions(int i) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this._count + ") now exceeds maximum, " + i + " -- suspect a DoS attack based on hash collisions");
    }

    public int size() {
        return this._tableInfo != null ? ((TableInfo) this._tableInfo.get()).count : this._count;
    }
}
