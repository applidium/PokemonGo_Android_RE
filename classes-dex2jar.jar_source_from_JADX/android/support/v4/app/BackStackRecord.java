package android.support.v4.app;

import android.os.Build.VERSION;
import android.support.v4.app.FragmentManager.BackStackEntry;
import android.support.v4.app.FragmentTransitionCompat21.EpicenterView;
import android.support.v4.app.FragmentTransitionCompat21.ViewRetriever;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LogWriter;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver.OnPreDrawListener;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;

final class BackStackRecord extends FragmentTransaction implements BackStackEntry, Runnable {
    static final int OP_ADD = 1;
    static final int OP_ATTACH = 7;
    static final int OP_DETACH = 6;
    static final int OP_HIDE = 4;
    static final int OP_NULL = 0;
    static final int OP_REMOVE = 3;
    static final int OP_REPLACE = 2;
    static final int OP_SHOW = 5;
    static final boolean SUPPORTS_TRANSITIONS;
    static final String TAG = "FragmentManager";
    boolean mAddToBackStack;
    boolean mAllowAddToBackStack;
    int mBreadCrumbShortTitleRes;
    CharSequence mBreadCrumbShortTitleText;
    int mBreadCrumbTitleRes;
    CharSequence mBreadCrumbTitleText;
    boolean mCommitted;
    int mEnterAnim;
    int mExitAnim;
    Op mHead;
    int mIndex;
    final FragmentManagerImpl mManager;
    String mName;
    int mNumOp;
    int mPopEnterAnim;
    int mPopExitAnim;
    ArrayList<String> mSharedElementSourceNames;
    ArrayList<String> mSharedElementTargetNames;
    Op mTail;
    int mTransition;
    int mTransitionStyle;

    /* renamed from: android.support.v4.app.BackStackRecord.1 */
    class C00061 implements ViewRetriever {
        final /* synthetic */ Fragment val$inFragment;

        C00061(Fragment fragment) {
            this.val$inFragment = fragment;
        }

        public View getView() {
            return this.val$inFragment.getView();
        }
    }

    /* renamed from: android.support.v4.app.BackStackRecord.2 */
    class C00072 implements OnPreDrawListener {
        final /* synthetic */ Fragment val$inFragment;
        final /* synthetic */ boolean val$isBack;
        final /* synthetic */ Fragment val$outFragment;
        final /* synthetic */ View val$sceneRoot;
        final /* synthetic */ ArrayList val$sharedElementTargets;
        final /* synthetic */ Object val$sharedElementTransition;
        final /* synthetic */ TransitionState val$state;

        C00072(View view, Object obj, ArrayList arrayList, TransitionState transitionState, boolean z, Fragment fragment, Fragment fragment2) {
            this.val$sceneRoot = view;
            this.val$sharedElementTransition = obj;
            this.val$sharedElementTargets = arrayList;
            this.val$state = transitionState;
            this.val$isBack = z;
            this.val$inFragment = fragment;
            this.val$outFragment = fragment2;
        }

        public boolean onPreDraw() {
            this.val$sceneRoot.getViewTreeObserver().removeOnPreDrawListener(this);
            if (this.val$sharedElementTransition != null) {
                FragmentTransitionCompat21.removeTargets(this.val$sharedElementTransition, this.val$sharedElementTargets);
                this.val$sharedElementTargets.clear();
                ArrayMap access$000 = BackStackRecord.this.mapSharedElementsIn(this.val$state, this.val$isBack, this.val$inFragment);
                FragmentTransitionCompat21.setSharedElementTargets(this.val$sharedElementTransition, this.val$state.nonExistentView, access$000, this.val$sharedElementTargets);
                BackStackRecord.this.setEpicenterIn(access$000, this.val$state);
                BackStackRecord.this.callSharedElementEnd(this.val$state, this.val$inFragment, this.val$outFragment, this.val$isBack, access$000);
            }
            return true;
        }
    }

    /* renamed from: android.support.v4.app.BackStackRecord.3 */
    class C00083 implements OnPreDrawListener {
        final /* synthetic */ int val$containerId;
        final /* synthetic */ View val$sceneRoot;
        final /* synthetic */ TransitionState val$state;
        final /* synthetic */ Object val$transition;

        C00083(View view, TransitionState transitionState, int i, Object obj) {
            this.val$sceneRoot = view;
            this.val$state = transitionState;
            this.val$containerId = i;
            this.val$transition = obj;
        }

        public boolean onPreDraw() {
            this.val$sceneRoot.getViewTreeObserver().removeOnPreDrawListener(this);
            BackStackRecord.this.excludeHiddenFragments(this.val$state, this.val$containerId, this.val$transition);
            return true;
        }
    }

    static final class Op {
        int cmd;
        int enterAnim;
        int exitAnim;
        Fragment fragment;
        Op next;
        int popEnterAnim;
        int popExitAnim;
        Op prev;
        ArrayList<Fragment> removed;

        Op() {
        }
    }

    public class TransitionState {
        public EpicenterView enteringEpicenterView;
        public ArrayList<View> hiddenFragmentViews;
        public ArrayMap<String, String> nameOverrides;
        public View nonExistentView;

        public TransitionState() {
            this.nameOverrides = new ArrayMap();
            this.hiddenFragmentViews = new ArrayList();
            this.enteringEpicenterView = new EpicenterView();
        }
    }

    static {
        SUPPORTS_TRANSITIONS = VERSION.SDK_INT >= 21 ? true : SUPPORTS_TRANSITIONS;
    }

    public BackStackRecord(FragmentManagerImpl fragmentManagerImpl) {
        this.mAllowAddToBackStack = true;
        this.mIndex = -1;
        this.mManager = fragmentManagerImpl;
    }

    private TransitionState beginTransition(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2, boolean z) {
        int i = OP_NULL;
        TransitionState transitionState = new TransitionState();
        transitionState.nonExistentView = new View(this.mManager.mHost.getContext());
        int i2 = OP_NULL;
        int i3 = OP_NULL;
        while (i2 < sparseArray.size()) {
            int i4 = configureTransitions(sparseArray.keyAt(i2), transitionState, z, sparseArray, sparseArray2) ? OP_ADD : i3;
            i2 += OP_ADD;
            i3 = i4;
        }
        while (i < sparseArray2.size()) {
            i4 = sparseArray2.keyAt(i);
            if (sparseArray.get(i4) == null && configureTransitions(i4, transitionState, z, sparseArray, sparseArray2)) {
                i3 = OP_ADD;
            }
            i += OP_ADD;
        }
        return i3 == 0 ? null : transitionState;
    }

    private void calculateFragments(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2) {
        if (this.mManager.mContainer.onHasView()) {
            for (Op op = this.mHead; op != null; op = op.next) {
                switch (op.cmd) {
                    case OP_ADD /*1*/:
                        setLastIn(sparseArray2, op.fragment);
                        break;
                    case OP_REPLACE /*2*/:
                        Fragment fragment;
                        Fragment fragment2 = op.fragment;
                        if (this.mManager.mAdded != null) {
                            int i = OP_NULL;
                            fragment = fragment2;
                            while (i < this.mManager.mAdded.size()) {
                                fragment2 = (Fragment) this.mManager.mAdded.get(i);
                                if (fragment != null && fragment2.mContainerId != fragment.mContainerId) {
                                    fragment2 = fragment;
                                } else if (fragment2 == fragment) {
                                    fragment2 = null;
                                } else {
                                    setFirstOut(sparseArray, fragment2);
                                    fragment2 = fragment;
                                }
                                i += OP_ADD;
                                fragment = fragment2;
                            }
                        } else {
                            fragment = fragment2;
                        }
                        setLastIn(sparseArray2, fragment);
                        break;
                    case OP_REMOVE /*3*/:
                        setFirstOut(sparseArray, op.fragment);
                        break;
                    case OP_HIDE /*4*/:
                        setFirstOut(sparseArray, op.fragment);
                        break;
                    case OP_SHOW /*5*/:
                        setLastIn(sparseArray2, op.fragment);
                        break;
                    case OP_DETACH /*6*/:
                        setFirstOut(sparseArray, op.fragment);
                        break;
                    case OP_ATTACH /*7*/:
                        setLastIn(sparseArray2, op.fragment);
                        break;
                    default:
                        break;
                }
            }
        }
    }

    private void callSharedElementEnd(TransitionState transitionState, Fragment fragment, Fragment fragment2, boolean z, ArrayMap<String, View> arrayMap) {
        SharedElementCallback sharedElementCallback = z ? fragment2.mEnterTransitionCallback : fragment.mEnterTransitionCallback;
        if (sharedElementCallback != null) {
            sharedElementCallback.onSharedElementEnd(new ArrayList(arrayMap.keySet()), new ArrayList(arrayMap.values()), null);
        }
    }

    private static Object captureExitingViews(Object obj, Fragment fragment, ArrayList<View> arrayList, ArrayMap<String, View> arrayMap, View view) {
        return obj != null ? FragmentTransitionCompat21.captureExitingViews(obj, fragment.getView(), arrayList, arrayMap, view) : obj;
    }

    private boolean configureTransitions(int i, TransitionState transitionState, boolean z, SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2) {
        View view = (ViewGroup) this.mManager.mContainer.onFindViewById(i);
        if (view == null) {
            return SUPPORTS_TRANSITIONS;
        }
        Object obj;
        Fragment fragment = (Fragment) sparseArray2.get(i);
        Fragment fragment2 = (Fragment) sparseArray.get(i);
        Object enterTransition = getEnterTransition(fragment, z);
        Object sharedElementTransition = getSharedElementTransition(fragment, fragment2, z);
        Object exitTransition = getExitTransition(fragment2, z);
        Map map = null;
        ArrayList arrayList = new ArrayList();
        if (sharedElementTransition != null) {
            map = remapSharedElements(transitionState, fragment2, z);
            if (map.isEmpty()) {
                map = null;
                obj = null;
            } else {
                SharedElementCallback sharedElementCallback = z ? fragment2.mEnterTransitionCallback : fragment.mEnterTransitionCallback;
                if (sharedElementCallback != null) {
                    sharedElementCallback.onSharedElementStart(new ArrayList(map.keySet()), new ArrayList(map.values()), null);
                }
                prepareSharedElementTransition(transitionState, view, sharedElementTransition, fragment, fragment2, z, arrayList);
                obj = sharedElementTransition;
            }
        } else {
            obj = sharedElementTransition;
        }
        if (enterTransition == null && obj == null && exitTransition == null) {
            return SUPPORTS_TRANSITIONS;
        }
        ArrayList arrayList2 = new ArrayList();
        Object captureExitingViews = captureExitingViews(exitTransition, fragment2, arrayList2, map, transitionState.nonExistentView);
        if (!(this.mSharedElementTargetNames == null || map == null)) {
            View view2 = (View) map.get(this.mSharedElementTargetNames.get(OP_NULL));
            if (view2 != null) {
                if (captureExitingViews != null) {
                    FragmentTransitionCompat21.setEpicenter(captureExitingViews, view2);
                }
                if (obj != null) {
                    FragmentTransitionCompat21.setEpicenter(obj, view2);
                }
            }
        }
        ViewRetriever c00061 = new C00061(fragment);
        ArrayList arrayList3 = new ArrayList();
        Map arrayMap = new ArrayMap();
        boolean z2 = true;
        if (fragment != null) {
            z2 = z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap();
        }
        Object mergeTransitions = FragmentTransitionCompat21.mergeTransitions(enterTransition, captureExitingViews, obj, z2);
        if (mergeTransitions != null) {
            FragmentTransitionCompat21.addTransitionTargets(enterTransition, obj, view, c00061, transitionState.nonExistentView, transitionState.enteringEpicenterView, transitionState.nameOverrides, arrayList3, map, arrayMap, arrayList);
            excludeHiddenFragmentsAfterEnter(view, transitionState, i, mergeTransitions);
            FragmentTransitionCompat21.excludeTarget(mergeTransitions, transitionState.nonExistentView, true);
            excludeHiddenFragments(transitionState, i, mergeTransitions);
            FragmentTransitionCompat21.beginDelayedTransition(view, mergeTransitions);
            FragmentTransitionCompat21.cleanupTransitions(view, transitionState.nonExistentView, enterTransition, arrayList3, captureExitingViews, arrayList2, obj, arrayList, mergeTransitions, transitionState.hiddenFragmentViews, arrayMap);
        }
        return mergeTransitions != null ? true : SUPPORTS_TRANSITIONS;
    }

    private void doAddOp(int i, Fragment fragment, String str, int i2) {
        fragment.mFragmentManager = this.mManager;
        if (str != null) {
            if (fragment.mTag == null || str.equals(fragment.mTag)) {
                fragment.mTag = str;
            } else {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
        }
        if (i != 0) {
            if (fragment.mFragmentId == 0 || fragment.mFragmentId == i) {
                fragment.mFragmentId = i;
                fragment.mContainerId = i;
            } else {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
        }
        Op op = new Op();
        op.cmd = i2;
        op.fragment = fragment;
        addOp(op);
    }

    private void excludeHiddenFragments(TransitionState transitionState, int i, Object obj) {
        if (this.mManager.mAdded != null) {
            for (int i2 = OP_NULL; i2 < this.mManager.mAdded.size(); i2 += OP_ADD) {
                Fragment fragment = (Fragment) this.mManager.mAdded.get(i2);
                if (!(fragment.mView == null || fragment.mContainer == null || fragment.mContainerId != i)) {
                    if (!fragment.mHidden) {
                        FragmentTransitionCompat21.excludeTarget(obj, fragment.mView, SUPPORTS_TRANSITIONS);
                        transitionState.hiddenFragmentViews.remove(fragment.mView);
                    } else if (!transitionState.hiddenFragmentViews.contains(fragment.mView)) {
                        FragmentTransitionCompat21.excludeTarget(obj, fragment.mView, true);
                        transitionState.hiddenFragmentViews.add(fragment.mView);
                    }
                }
            }
        }
    }

    private void excludeHiddenFragmentsAfterEnter(View view, TransitionState transitionState, int i, Object obj) {
        view.getViewTreeObserver().addOnPreDrawListener(new C00083(view, transitionState, i, obj));
    }

    private static Object getEnterTransition(Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return FragmentTransitionCompat21.cloneTransition(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    private static Object getExitTransition(Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return FragmentTransitionCompat21.cloneTransition(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    private static Object getSharedElementTransition(Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return FragmentTransitionCompat21.wrapSharedElementTransition(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition());
    }

    private ArrayMap<String, View> mapEnteringSharedElements(TransitionState transitionState, Fragment fragment, boolean z) {
        ArrayMap<String, View> arrayMap = new ArrayMap();
        View view = fragment.getView();
        if (view == null || this.mSharedElementSourceNames == null) {
            return arrayMap;
        }
        FragmentTransitionCompat21.findNamedViews(arrayMap, view);
        if (z) {
            return remapNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames, arrayMap);
        }
        arrayMap.retainAll(this.mSharedElementTargetNames);
        return arrayMap;
    }

    private ArrayMap<String, View> mapSharedElementsIn(TransitionState transitionState, boolean z, Fragment fragment) {
        ArrayMap mapEnteringSharedElements = mapEnteringSharedElements(transitionState, fragment, z);
        if (z) {
            if (fragment.mExitTransitionCallback != null) {
                fragment.mExitTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, mapEnteringSharedElements);
            }
            setBackNameOverrides(transitionState, mapEnteringSharedElements, true);
        } else {
            if (fragment.mEnterTransitionCallback != null) {
                fragment.mEnterTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, mapEnteringSharedElements);
            }
            setNameOverrides(transitionState, mapEnteringSharedElements, true);
        }
        return mapEnteringSharedElements;
    }

    private void prepareSharedElementTransition(TransitionState transitionState, View view, Object obj, Fragment fragment, Fragment fragment2, boolean z, ArrayList<View> arrayList) {
        view.getViewTreeObserver().addOnPreDrawListener(new C00072(view, obj, arrayList, transitionState, z, fragment, fragment2));
    }

    private static ArrayMap<String, View> remapNames(ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayMap<String, View> arrayMap) {
        if (arrayMap.isEmpty()) {
            return arrayMap;
        }
        ArrayMap<String, View> arrayMap2 = new ArrayMap();
        int size = arrayList.size();
        for (int i = OP_NULL; i < size; i += OP_ADD) {
            View view = (View) arrayMap.get(arrayList.get(i));
            if (view != null) {
                arrayMap2.put(arrayList2.get(i), view);
            }
        }
        return arrayMap2;
    }

    private ArrayMap<String, View> remapSharedElements(TransitionState transitionState, Fragment fragment, boolean z) {
        ArrayMap arrayMap = new ArrayMap();
        if (this.mSharedElementSourceNames != null) {
            FragmentTransitionCompat21.findNamedViews(arrayMap, fragment.getView());
            if (z) {
                arrayMap.retainAll(this.mSharedElementTargetNames);
            } else {
                arrayMap = remapNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames, arrayMap);
            }
        }
        if (z) {
            if (fragment.mEnterTransitionCallback != null) {
                fragment.mEnterTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, arrayMap);
            }
            setBackNameOverrides(transitionState, arrayMap, SUPPORTS_TRANSITIONS);
        } else {
            if (fragment.mExitTransitionCallback != null) {
                fragment.mExitTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, arrayMap);
            }
            setNameOverrides(transitionState, arrayMap, (boolean) SUPPORTS_TRANSITIONS);
        }
        return arrayMap;
    }

    private void setBackNameOverrides(TransitionState transitionState, ArrayMap<String, View> arrayMap, boolean z) {
        int size = this.mSharedElementTargetNames == null ? OP_NULL : this.mSharedElementTargetNames.size();
        for (int i = OP_NULL; i < size; i += OP_ADD) {
            String str = (String) this.mSharedElementSourceNames.get(i);
            View view = (View) arrayMap.get((String) this.mSharedElementTargetNames.get(i));
            if (view != null) {
                String transitionName = FragmentTransitionCompat21.getTransitionName(view);
                if (z) {
                    setNameOverride(transitionState.nameOverrides, str, transitionName);
                } else {
                    setNameOverride(transitionState.nameOverrides, transitionName, str);
                }
            }
        }
    }

    private void setEpicenterIn(ArrayMap<String, View> arrayMap, TransitionState transitionState) {
        if (this.mSharedElementTargetNames != null && !arrayMap.isEmpty()) {
            View view = (View) arrayMap.get(this.mSharedElementTargetNames.get(OP_NULL));
            if (view != null) {
                transitionState.enteringEpicenterView.epicenter = view;
            }
        }
    }

    private static void setFirstOut(SparseArray<Fragment> sparseArray, Fragment fragment) {
        if (fragment != null) {
            int i = fragment.mContainerId;
            if (i != 0 && !fragment.isHidden() && fragment.isAdded() && fragment.getView() != null && sparseArray.get(i) == null) {
                sparseArray.put(i, fragment);
            }
        }
    }

    private void setLastIn(SparseArray<Fragment> sparseArray, Fragment fragment) {
        if (fragment != null) {
            int i = fragment.mContainerId;
            if (i != 0) {
                sparseArray.put(i, fragment);
            }
        }
    }

    private static void setNameOverride(ArrayMap<String, String> arrayMap, String str, String str2) {
        if (str != null && str2 != null) {
            for (int i = OP_NULL; i < arrayMap.size(); i += OP_ADD) {
                if (str.equals(arrayMap.valueAt(i))) {
                    arrayMap.setValueAt(i, str2);
                    return;
                }
            }
            arrayMap.put(str, str2);
        }
    }

    private void setNameOverrides(TransitionState transitionState, ArrayMap<String, View> arrayMap, boolean z) {
        int size = arrayMap.size();
        for (int i = OP_NULL; i < size; i += OP_ADD) {
            String str = (String) arrayMap.keyAt(i);
            String transitionName = FragmentTransitionCompat21.getTransitionName((View) arrayMap.valueAt(i));
            if (z) {
                setNameOverride(transitionState.nameOverrides, str, transitionName);
            } else {
                setNameOverride(transitionState.nameOverrides, transitionName, str);
            }
        }
    }

    private static void setNameOverrides(TransitionState transitionState, ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        if (arrayList != null) {
            for (int i = OP_NULL; i < arrayList.size(); i += OP_ADD) {
                setNameOverride(transitionState.nameOverrides, (String) arrayList.get(i), (String) arrayList2.get(i));
            }
        }
    }

    public FragmentTransaction add(int i, Fragment fragment) {
        doAddOp(i, fragment, null, OP_ADD);
        return this;
    }

    public FragmentTransaction add(int i, Fragment fragment, String str) {
        doAddOp(i, fragment, str, OP_ADD);
        return this;
    }

    public FragmentTransaction add(Fragment fragment, String str) {
        doAddOp(OP_NULL, fragment, str, OP_ADD);
        return this;
    }

    void addOp(Op op) {
        if (this.mHead == null) {
            this.mTail = op;
            this.mHead = op;
        } else {
            op.prev = this.mTail;
            this.mTail.next = op;
            this.mTail = op;
        }
        op.enterAnim = this.mEnterAnim;
        op.exitAnim = this.mExitAnim;
        op.popEnterAnim = this.mPopEnterAnim;
        op.popExitAnim = this.mPopExitAnim;
        this.mNumOp += OP_ADD;
    }

    public FragmentTransaction addSharedElement(View view, String str) {
        if (SUPPORTS_TRANSITIONS) {
            String transitionName = FragmentTransitionCompat21.getTransitionName(view);
            if (transitionName == null) {
                throw new IllegalArgumentException("Unique transitionNames are required for all sharedElements");
            }
            if (this.mSharedElementSourceNames == null) {
                this.mSharedElementSourceNames = new ArrayList();
                this.mSharedElementTargetNames = new ArrayList();
            }
            this.mSharedElementSourceNames.add(transitionName);
            this.mSharedElementTargetNames.add(str);
        }
        return this;
    }

    public FragmentTransaction addToBackStack(String str) {
        if (this.mAllowAddToBackStack) {
            this.mAddToBackStack = true;
            this.mName = str;
            return this;
        }
        throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    }

    public FragmentTransaction attach(Fragment fragment) {
        Op op = new Op();
        op.cmd = OP_ATTACH;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    void bumpBackStackNesting(int i) {
        if (this.mAddToBackStack) {
            if (FragmentManagerImpl.DEBUG) {
                Log.v(TAG, "Bump nesting in " + this + " by " + i);
            }
            for (Op op = this.mHead; op != null; op = op.next) {
                Fragment fragment;
                if (op.fragment != null) {
                    fragment = op.fragment;
                    fragment.mBackStackNesting += i;
                    if (FragmentManagerImpl.DEBUG) {
                        Log.v(TAG, "Bump nesting of " + op.fragment + " to " + op.fragment.mBackStackNesting);
                    }
                }
                if (op.removed != null) {
                    for (int size = op.removed.size() - 1; size >= 0; size--) {
                        fragment = (Fragment) op.removed.get(size);
                        fragment.mBackStackNesting += i;
                        if (FragmentManagerImpl.DEBUG) {
                            Log.v(TAG, "Bump nesting of " + fragment + " to " + fragment.mBackStackNesting);
                        }
                    }
                }
            }
        }
    }

    public void calculateBackFragments(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2) {
        if (this.mManager.mContainer.onHasView()) {
            for (Op op = this.mHead; op != null; op = op.next) {
                switch (op.cmd) {
                    case OP_ADD /*1*/:
                        setFirstOut(sparseArray, op.fragment);
                        break;
                    case OP_REPLACE /*2*/:
                        if (op.removed != null) {
                            for (int size = op.removed.size() - 1; size >= 0; size--) {
                                setLastIn(sparseArray2, (Fragment) op.removed.get(size));
                            }
                        }
                        setFirstOut(sparseArray, op.fragment);
                        break;
                    case OP_REMOVE /*3*/:
                        setLastIn(sparseArray2, op.fragment);
                        break;
                    case OP_HIDE /*4*/:
                        setLastIn(sparseArray2, op.fragment);
                        break;
                    case OP_SHOW /*5*/:
                        setFirstOut(sparseArray, op.fragment);
                        break;
                    case OP_DETACH /*6*/:
                        setLastIn(sparseArray2, op.fragment);
                        break;
                    case OP_ATTACH /*7*/:
                        setFirstOut(sparseArray, op.fragment);
                        break;
                    default:
                        break;
                }
            }
        }
    }

    public int commit() {
        return commitInternal(SUPPORTS_TRANSITIONS);
    }

    public int commitAllowingStateLoss() {
        return commitInternal(true);
    }

    int commitInternal(boolean z) {
        if (this.mCommitted) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "Commit: " + this);
            dump("  ", null, new PrintWriter(new LogWriter(TAG)), null);
        }
        this.mCommitted = true;
        if (this.mAddToBackStack) {
            this.mIndex = this.mManager.allocBackStackIndex(this);
        } else {
            this.mIndex = -1;
        }
        this.mManager.enqueueAction(this, z);
        return this.mIndex;
    }

    public FragmentTransaction detach(Fragment fragment) {
        Op op = new Op();
        op.cmd = OP_DETACH;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    public FragmentTransaction disallowAddToBackStack() {
        if (this.mAddToBackStack) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.mAllowAddToBackStack = SUPPORTS_TRANSITIONS;
        return this;
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        dump(str, printWriter, true);
    }

    public void dump(String str, PrintWriter printWriter, boolean z) {
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.mTransitionStyle));
            }
            if (!(this.mEnterAnim == 0 && this.mExitAnim == 0)) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (!(this.mPopEnterAnim == 0 && this.mPopExitAnim == 0)) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (!(this.mBreadCrumbTitleRes == 0 && this.mBreadCrumbTitleText == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (!(this.mBreadCrumbShortTitleRes == 0 && this.mBreadCrumbShortTitleText == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (this.mHead != null) {
            printWriter.print(str);
            printWriter.println("Operations:");
            String str2 = str + "    ";
            Op op = this.mHead;
            int i = OP_NULL;
            while (op != null) {
                String str3;
                switch (op.cmd) {
                    case OP_NULL /*0*/:
                        str3 = "NULL";
                        break;
                    case OP_ADD /*1*/:
                        str3 = "ADD";
                        break;
                    case OP_REPLACE /*2*/:
                        str3 = "REPLACE";
                        break;
                    case OP_REMOVE /*3*/:
                        str3 = "REMOVE";
                        break;
                    case OP_HIDE /*4*/:
                        str3 = "HIDE";
                        break;
                    case OP_SHOW /*5*/:
                        str3 = "SHOW";
                        break;
                    case OP_DETACH /*6*/:
                        str3 = "DETACH";
                        break;
                    case OP_ATTACH /*7*/:
                        str3 = "ATTACH";
                        break;
                    default:
                        str3 = "cmd=" + op.cmd;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str3);
                printWriter.print(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                printWriter.println(op.fragment);
                if (z) {
                    if (!(op.enterAnim == 0 && op.exitAnim == 0)) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(op.enterAnim));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(op.exitAnim));
                    }
                    if (!(op.popEnterAnim == 0 && op.popExitAnim == 0)) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(op.popEnterAnim));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(op.popExitAnim));
                    }
                }
                if (op.removed != null && op.removed.size() > 0) {
                    for (int i2 = OP_NULL; i2 < op.removed.size(); i2 += OP_ADD) {
                        printWriter.print(str2);
                        if (op.removed.size() == OP_ADD) {
                            printWriter.print("Removed: ");
                        } else {
                            if (i2 == 0) {
                                printWriter.println("Removed:");
                            }
                            printWriter.print(str2);
                            printWriter.print("  #");
                            printWriter.print(i2);
                            printWriter.print(": ");
                        }
                        printWriter.println(op.removed.get(i2));
                    }
                }
                i += OP_ADD;
                op = op.next;
            }
        }
    }

    public CharSequence getBreadCrumbShortTitle() {
        return this.mBreadCrumbShortTitleRes != 0 ? this.mManager.mHost.getContext().getText(this.mBreadCrumbShortTitleRes) : this.mBreadCrumbShortTitleText;
    }

    public int getBreadCrumbShortTitleRes() {
        return this.mBreadCrumbShortTitleRes;
    }

    public CharSequence getBreadCrumbTitle() {
        return this.mBreadCrumbTitleRes != 0 ? this.mManager.mHost.getContext().getText(this.mBreadCrumbTitleRes) : this.mBreadCrumbTitleText;
    }

    public int getBreadCrumbTitleRes() {
        return this.mBreadCrumbTitleRes;
    }

    public int getId() {
        return this.mIndex;
    }

    public String getName() {
        return this.mName;
    }

    public int getTransition() {
        return this.mTransition;
    }

    public int getTransitionStyle() {
        return this.mTransitionStyle;
    }

    public FragmentTransaction hide(Fragment fragment) {
        Op op = new Op();
        op.cmd = OP_HIDE;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    public boolean isAddToBackStackAllowed() {
        return this.mAllowAddToBackStack;
    }

    public boolean isEmpty() {
        return this.mNumOp == 0 ? true : SUPPORTS_TRANSITIONS;
    }

    public TransitionState popFromBackStack(boolean z, TransitionState transitionState, SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2) {
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "popFromBackStack: " + this);
            dump("  ", null, new PrintWriter(new LogWriter(TAG)), null);
        }
        if (SUPPORTS_TRANSITIONS) {
            if (transitionState == null) {
                if (!(sparseArray.size() == 0 && sparseArray2.size() == 0)) {
                    transitionState = beginTransition(sparseArray, sparseArray2, true);
                }
            } else if (!z) {
                setNameOverrides(transitionState, this.mSharedElementTargetNames, this.mSharedElementSourceNames);
            }
        }
        bumpBackStackNesting(-1);
        int i = transitionState != null ? OP_NULL : this.mTransitionStyle;
        int i2 = transitionState != null ? OP_NULL : this.mTransition;
        Op op = this.mTail;
        while (op != null) {
            int i3 = transitionState != null ? OP_NULL : op.popEnterAnim;
            int i4 = transitionState != null ? OP_NULL : op.popExitAnim;
            Fragment fragment;
            Fragment fragment2;
            switch (op.cmd) {
                case OP_ADD /*1*/:
                    fragment = op.fragment;
                    fragment.mNextAnim = i4;
                    this.mManager.removeFragment(fragment, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                case OP_REPLACE /*2*/:
                    fragment = op.fragment;
                    if (fragment != null) {
                        fragment.mNextAnim = i4;
                        this.mManager.removeFragment(fragment, FragmentManagerImpl.reverseTransit(i2), i);
                    }
                    if (op.removed == null) {
                        break;
                    }
                    for (int i5 = OP_NULL; i5 < op.removed.size(); i5 += OP_ADD) {
                        fragment2 = (Fragment) op.removed.get(i5);
                        fragment2.mNextAnim = i3;
                        this.mManager.addFragment(fragment2, SUPPORTS_TRANSITIONS);
                    }
                    break;
                case OP_REMOVE /*3*/:
                    fragment2 = op.fragment;
                    fragment2.mNextAnim = i3;
                    this.mManager.addFragment(fragment2, SUPPORTS_TRANSITIONS);
                    break;
                case OP_HIDE /*4*/:
                    fragment2 = op.fragment;
                    fragment2.mNextAnim = i3;
                    this.mManager.showFragment(fragment2, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                case OP_SHOW /*5*/:
                    fragment = op.fragment;
                    fragment.mNextAnim = i4;
                    this.mManager.hideFragment(fragment, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                case OP_DETACH /*6*/:
                    fragment2 = op.fragment;
                    fragment2.mNextAnim = i3;
                    this.mManager.attachFragment(fragment2, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                case OP_ATTACH /*7*/:
                    fragment2 = op.fragment;
                    fragment2.mNextAnim = i3;
                    this.mManager.detachFragment(fragment2, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.cmd);
            }
            op = op.prev;
        }
        if (z) {
            this.mManager.moveToState(this.mManager.mCurState, FragmentManagerImpl.reverseTransit(i2), i, true);
            transitionState = null;
        }
        if (this.mIndex >= 0) {
            this.mManager.freeBackStackIndex(this.mIndex);
            this.mIndex = -1;
        }
        return transitionState;
    }

    public FragmentTransaction remove(Fragment fragment) {
        Op op = new Op();
        op.cmd = OP_REMOVE;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    public FragmentTransaction replace(int i, Fragment fragment) {
        return replace(i, fragment, null);
    }

    public FragmentTransaction replace(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        doAddOp(i, fragment, str, OP_REPLACE);
        return this;
    }

    public void run() {
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "Run: " + this);
        }
        if (!this.mAddToBackStack || this.mIndex >= 0) {
            TransitionState beginTransition;
            bumpBackStackNesting(OP_ADD);
            if (SUPPORTS_TRANSITIONS) {
                SparseArray sparseArray = new SparseArray();
                SparseArray sparseArray2 = new SparseArray();
                calculateFragments(sparseArray, sparseArray2);
                beginTransition = beginTransition(sparseArray, sparseArray2, SUPPORTS_TRANSITIONS);
            } else {
                beginTransition = null;
            }
            int i = beginTransition != null ? OP_NULL : this.mTransitionStyle;
            int i2 = beginTransition != null ? OP_NULL : this.mTransition;
            Op op = this.mHead;
            while (op != null) {
                int i3 = beginTransition != null ? OP_NULL : op.enterAnim;
                int i4 = beginTransition != null ? OP_NULL : op.exitAnim;
                Fragment fragment;
                switch (op.cmd) {
                    case OP_ADD /*1*/:
                        fragment = op.fragment;
                        fragment.mNextAnim = i3;
                        this.mManager.addFragment(fragment, SUPPORTS_TRANSITIONS);
                        break;
                    case OP_REPLACE /*2*/:
                        Fragment fragment2;
                        fragment = op.fragment;
                        int i5 = fragment.mContainerId;
                        if (this.mManager.mAdded != null) {
                            int i6 = OP_NULL;
                            fragment2 = fragment;
                            while (i6 < this.mManager.mAdded.size()) {
                                fragment = (Fragment) this.mManager.mAdded.get(i6);
                                if (FragmentManagerImpl.DEBUG) {
                                    Log.v(TAG, "OP_REPLACE: adding=" + fragment2 + " old=" + fragment);
                                }
                                if (fragment.mContainerId != i5) {
                                    fragment = fragment2;
                                } else if (fragment == fragment2) {
                                    op.fragment = null;
                                    fragment = null;
                                } else {
                                    if (op.removed == null) {
                                        op.removed = new ArrayList();
                                    }
                                    op.removed.add(fragment);
                                    fragment.mNextAnim = i4;
                                    if (this.mAddToBackStack) {
                                        fragment.mBackStackNesting += OP_ADD;
                                        if (FragmentManagerImpl.DEBUG) {
                                            Log.v(TAG, "Bump nesting of " + fragment + " to " + fragment.mBackStackNesting);
                                        }
                                    }
                                    this.mManager.removeFragment(fragment, i2, i);
                                    fragment = fragment2;
                                }
                                i6 += OP_ADD;
                                fragment2 = fragment;
                            }
                        } else {
                            fragment2 = fragment;
                        }
                        if (fragment2 == null) {
                            break;
                        }
                        fragment2.mNextAnim = i3;
                        this.mManager.addFragment(fragment2, SUPPORTS_TRANSITIONS);
                        break;
                    case OP_REMOVE /*3*/:
                        fragment = op.fragment;
                        fragment.mNextAnim = i4;
                        this.mManager.removeFragment(fragment, i2, i);
                        break;
                    case OP_HIDE /*4*/:
                        fragment = op.fragment;
                        fragment.mNextAnim = i4;
                        this.mManager.hideFragment(fragment, i2, i);
                        break;
                    case OP_SHOW /*5*/:
                        fragment = op.fragment;
                        fragment.mNextAnim = i3;
                        this.mManager.showFragment(fragment, i2, i);
                        break;
                    case OP_DETACH /*6*/:
                        fragment = op.fragment;
                        fragment.mNextAnim = i4;
                        this.mManager.detachFragment(fragment, i2, i);
                        break;
                    case OP_ATTACH /*7*/:
                        fragment = op.fragment;
                        fragment.mNextAnim = i3;
                        this.mManager.attachFragment(fragment, i2, i);
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + op.cmd);
                }
                op = op.next;
            }
            this.mManager.moveToState(this.mManager.mCurState, i2, i, true);
            if (this.mAddToBackStack) {
                this.mManager.addBackStackState(this);
                return;
            }
            return;
        }
        throw new IllegalStateException("addToBackStack() called after commit()");
    }

    public FragmentTransaction setBreadCrumbShortTitle(int i) {
        this.mBreadCrumbShortTitleRes = i;
        this.mBreadCrumbShortTitleText = null;
        return this;
    }

    public FragmentTransaction setBreadCrumbShortTitle(CharSequence charSequence) {
        this.mBreadCrumbShortTitleRes = OP_NULL;
        this.mBreadCrumbShortTitleText = charSequence;
        return this;
    }

    public FragmentTransaction setBreadCrumbTitle(int i) {
        this.mBreadCrumbTitleRes = i;
        this.mBreadCrumbTitleText = null;
        return this;
    }

    public FragmentTransaction setBreadCrumbTitle(CharSequence charSequence) {
        this.mBreadCrumbTitleRes = OP_NULL;
        this.mBreadCrumbTitleText = charSequence;
        return this;
    }

    public FragmentTransaction setCustomAnimations(int i, int i2) {
        return setCustomAnimations(i, i2, OP_NULL, OP_NULL);
    }

    public FragmentTransaction setCustomAnimations(int i, int i2, int i3, int i4) {
        this.mEnterAnim = i;
        this.mExitAnim = i2;
        this.mPopEnterAnim = i3;
        this.mPopExitAnim = i4;
        return this;
    }

    public FragmentTransaction setTransition(int i) {
        this.mTransition = i;
        return this;
    }

    public FragmentTransaction setTransitionStyle(int i) {
        this.mTransitionStyle = i;
        return this;
    }

    public FragmentTransaction show(Fragment fragment) {
        Op op = new Op();
        op.cmd = OP_SHOW;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        stringBuilder.append("BackStackEntry{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            stringBuilder.append(" #");
            stringBuilder.append(this.mIndex);
        }
        if (this.mName != null) {
            stringBuilder.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
            stringBuilder.append(this.mName);
        }
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}
