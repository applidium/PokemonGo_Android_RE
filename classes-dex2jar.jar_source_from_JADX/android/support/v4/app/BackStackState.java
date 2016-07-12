package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

final class BackStackState implements Parcelable {
    public static final Creator<BackStackState> CREATOR;
    final int mBreadCrumbShortTitleRes;
    final CharSequence mBreadCrumbShortTitleText;
    final int mBreadCrumbTitleRes;
    final CharSequence mBreadCrumbTitleText;
    final int mIndex;
    final String mName;
    final int[] mOps;
    final ArrayList<String> mSharedElementSourceNames;
    final ArrayList<String> mSharedElementTargetNames;
    final int mTransition;
    final int mTransitionStyle;

    /* renamed from: android.support.v4.app.BackStackState.1 */
    static final class C00091 implements Creator<BackStackState> {
        C00091() {
        }

        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        public BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    }

    static {
        CREATOR = new C00091();
    }

    public BackStackState(Parcel parcel) {
        this.mOps = parcel.createIntArray();
        this.mTransition = parcel.readInt();
        this.mTransitionStyle = parcel.readInt();
        this.mName = parcel.readString();
        this.mIndex = parcel.readInt();
        this.mBreadCrumbTitleRes = parcel.readInt();
        this.mBreadCrumbTitleText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mBreadCrumbShortTitleRes = parcel.readInt();
        this.mBreadCrumbShortTitleText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mSharedElementSourceNames = parcel.createStringArrayList();
        this.mSharedElementTargetNames = parcel.createStringArrayList();
    }

    public BackStackState(BackStackRecord backStackRecord) {
        int i = 0;
        for (Op op = backStackRecord.mHead; op != null; op = op.next) {
            if (op.removed != null) {
                i += op.removed.size();
            }
        }
        this.mOps = new int[(i + (backStackRecord.mNumOp * 7))];
        if (backStackRecord.mAddToBackStack) {
            i = 0;
            for (Op op2 = backStackRecord.mHead; op2 != null; op2 = op2.next) {
                int i2 = i + 1;
                this.mOps[i] = op2.cmd;
                int i3 = i2 + 1;
                this.mOps[i2] = op2.fragment != null ? op2.fragment.mIndex : -1;
                int i4 = i3 + 1;
                this.mOps[i3] = op2.enterAnim;
                i2 = i4 + 1;
                this.mOps[i4] = op2.exitAnim;
                i4 = i2 + 1;
                this.mOps[i2] = op2.popEnterAnim;
                i2 = i4 + 1;
                this.mOps[i4] = op2.popExitAnim;
                if (op2.removed != null) {
                    i3 = op2.removed.size();
                    this.mOps[i2] = i3;
                    i4 = i2 + 1;
                    for (i2 = 0; i2 < i3; i2++) {
                        this.mOps[i4] = ((Fragment) op2.removed.get(i2)).mIndex;
                        i4++;
                    }
                    i = i4;
                } else {
                    i = i2 + 1;
                    this.mOps[i2] = 0;
                }
            }
            this.mTransition = backStackRecord.mTransition;
            this.mTransitionStyle = backStackRecord.mTransitionStyle;
            this.mName = backStackRecord.mName;
            this.mIndex = backStackRecord.mIndex;
            this.mBreadCrumbTitleRes = backStackRecord.mBreadCrumbTitleRes;
            this.mBreadCrumbTitleText = backStackRecord.mBreadCrumbTitleText;
            this.mBreadCrumbShortTitleRes = backStackRecord.mBreadCrumbShortTitleRes;
            this.mBreadCrumbShortTitleText = backStackRecord.mBreadCrumbShortTitleText;
            this.mSharedElementSourceNames = backStackRecord.mSharedElementSourceNames;
            this.mSharedElementTargetNames = backStackRecord.mSharedElementTargetNames;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    public int describeContents() {
        return 0;
    }

    public BackStackRecord instantiate(FragmentManagerImpl fragmentManagerImpl) {
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManagerImpl);
        int i = 0;
        int i2 = 0;
        while (i2 < this.mOps.length) {
            Op op = new Op();
            int i3 = i2 + 1;
            op.cmd = this.mOps[i2];
            if (FragmentManagerImpl.DEBUG) {
                Log.v("FragmentManager", "Instantiate " + backStackRecord + " op #" + i + " base fragment #" + this.mOps[i3]);
            }
            int i4 = i3 + 1;
            i2 = this.mOps[i3];
            if (i2 >= 0) {
                op.fragment = (Fragment) fragmentManagerImpl.mActive.get(i2);
            } else {
                op.fragment = null;
            }
            i3 = i4 + 1;
            op.enterAnim = this.mOps[i4];
            i4 = i3 + 1;
            op.exitAnim = this.mOps[i3];
            i3 = i4 + 1;
            op.popEnterAnim = this.mOps[i4];
            int i5 = i3 + 1;
            op.popExitAnim = this.mOps[i3];
            i4 = i5 + 1;
            i5 = this.mOps[i5];
            if (i5 > 0) {
                op.removed = new ArrayList(i5);
                for (i3 = 0; i3 < i5; i3++) {
                    if (FragmentManagerImpl.DEBUG) {
                        Log.v("FragmentManager", "Instantiate " + backStackRecord + " set remove fragment #" + this.mOps[i4]);
                    }
                    op.removed.add((Fragment) fragmentManagerImpl.mActive.get(this.mOps[i4]));
                    i4++;
                }
            }
            backStackRecord.addOp(op);
            i++;
            i2 = i4;
        }
        backStackRecord.mTransition = this.mTransition;
        backStackRecord.mTransitionStyle = this.mTransitionStyle;
        backStackRecord.mName = this.mName;
        backStackRecord.mIndex = this.mIndex;
        backStackRecord.mAddToBackStack = true;
        backStackRecord.mBreadCrumbTitleRes = this.mBreadCrumbTitleRes;
        backStackRecord.mBreadCrumbTitleText = this.mBreadCrumbTitleText;
        backStackRecord.mBreadCrumbShortTitleRes = this.mBreadCrumbShortTitleRes;
        backStackRecord.mBreadCrumbShortTitleText = this.mBreadCrumbShortTitleText;
        backStackRecord.mSharedElementSourceNames = this.mSharedElementSourceNames;
        backStackRecord.mSharedElementTargetNames = this.mSharedElementTargetNames;
        backStackRecord.bumpBackStackNesting(1);
        return backStackRecord;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.mOps);
        parcel.writeInt(this.mTransition);
        parcel.writeInt(this.mTransitionStyle);
        parcel.writeString(this.mName);
        parcel.writeInt(this.mIndex);
        parcel.writeInt(this.mBreadCrumbTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbTitleText, parcel, 0);
        parcel.writeInt(this.mBreadCrumbShortTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbShortTitleText, parcel, 0);
        parcel.writeStringList(this.mSharedElementSourceNames);
        parcel.writeStringList(this.mSharedElementTargetNames);
    }
}
