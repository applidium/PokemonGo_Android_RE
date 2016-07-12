package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.support.annotation.FloatRange;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v4.widget.ExploreByTouchHelper;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import com.google.android.gms.location.places.Place;
import java.lang.ref.WeakReference;

public class PagerTitleStrip extends ViewGroup implements Decor {
    private static final int[] ATTRS;
    private static final PagerTitleStripImpl IMPL;
    private static final float SIDE_ALPHA = 0.6f;
    private static final String TAG = "PagerTitleStrip";
    private static final int[] TEXT_ATTRS;
    private static final int TEXT_SPACING = 16;
    TextView mCurrText;
    private int mGravity;
    private int mLastKnownCurrentPage;
    private float mLastKnownPositionOffset;
    TextView mNextText;
    private int mNonPrimaryAlpha;
    private final PageListener mPageListener;
    ViewPager mPager;
    TextView mPrevText;
    private int mScaledTextSpacing;
    int mTextColor;
    private boolean mUpdatingPositions;
    private boolean mUpdatingText;
    private WeakReference<PagerAdapter> mWatchingAdapter;

    private class PageListener extends DataSetObserver implements OnPageChangeListener, OnAdapterChangeListener {
        private int mScrollState;

        private PageListener() {
        }

        public void onAdapterChanged(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
            PagerTitleStrip.this.updateAdapter(pagerAdapter, pagerAdapter2);
        }

        public void onChanged() {
            float f = 0.0f;
            PagerTitleStrip.this.updateText(PagerTitleStrip.this.mPager.getCurrentItem(), PagerTitleStrip.this.mPager.getAdapter());
            if (PagerTitleStrip.this.mLastKnownPositionOffset >= 0.0f) {
                f = PagerTitleStrip.this.mLastKnownPositionOffset;
            }
            PagerTitleStrip.this.updateTextPositions(PagerTitleStrip.this.mPager.getCurrentItem(), f, true);
        }

        public void onPageScrollStateChanged(int i) {
            this.mScrollState = i;
        }

        public void onPageScrolled(int i, float f, int i2) {
            if (f > 0.5f) {
                i++;
            }
            PagerTitleStrip.this.updateTextPositions(i, f, false);
        }

        public void onPageSelected(int i) {
            float f = 0.0f;
            if (this.mScrollState == 0) {
                PagerTitleStrip.this.updateText(PagerTitleStrip.this.mPager.getCurrentItem(), PagerTitleStrip.this.mPager.getAdapter());
                if (PagerTitleStrip.this.mLastKnownPositionOffset >= 0.0f) {
                    f = PagerTitleStrip.this.mLastKnownPositionOffset;
                }
                PagerTitleStrip.this.updateTextPositions(PagerTitleStrip.this.mPager.getCurrentItem(), f, true);
            }
        }
    }

    interface PagerTitleStripImpl {
        void setSingleLineAllCaps(TextView textView);
    }

    static class PagerTitleStripImplBase implements PagerTitleStripImpl {
        PagerTitleStripImplBase() {
        }

        public void setSingleLineAllCaps(TextView textView) {
            textView.setSingleLine();
        }
    }

    static class PagerTitleStripImplIcs implements PagerTitleStripImpl {
        PagerTitleStripImplIcs() {
        }

        public void setSingleLineAllCaps(TextView textView) {
            PagerTitleStripIcs.setSingleLineAllCaps(textView);
        }
    }

    static {
        ATTRS = new int[]{16842804, 16842901, 16842904, 16842927};
        TEXT_ATTRS = new int[]{16843660};
        if (VERSION.SDK_INT >= 14) {
            IMPL = new PagerTitleStripImplIcs();
        } else {
            IMPL = new PagerTitleStripImplBase();
        }
    }

    public PagerTitleStrip(Context context) {
        this(context, null);
    }

    public PagerTitleStrip(Context context, AttributeSet attributeSet) {
        boolean z = false;
        super(context, attributeSet);
        this.mLastKnownCurrentPage = -1;
        this.mLastKnownPositionOffset = -1.0f;
        this.mPageListener = new PageListener();
        View textView = new TextView(context);
        this.mPrevText = textView;
        addView(textView);
        textView = new TextView(context);
        this.mCurrText = textView;
        addView(textView);
        textView = new TextView(context);
        this.mNextText = textView;
        addView(textView);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            this.mPrevText.setTextAppearance(context, resourceId);
            this.mCurrText.setTextAppearance(context, resourceId);
            this.mNextText.setTextAppearance(context, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, (float) dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            dimensionPixelSize = obtainStyledAttributes.getColor(2, 0);
            this.mPrevText.setTextColor(dimensionPixelSize);
            this.mCurrText.setTextColor(dimensionPixelSize);
            this.mNextText.setTextColor(dimensionPixelSize);
        }
        this.mGravity = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.mTextColor = this.mCurrText.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(SIDE_ALPHA);
        this.mPrevText.setEllipsize(TruncateAt.END);
        this.mCurrText.setEllipsize(TruncateAt.END);
        this.mNextText.setEllipsize(TruncateAt.END);
        if (resourceId != 0) {
            obtainStyledAttributes = context.obtainStyledAttributes(resourceId, TEXT_ATTRS);
            z = obtainStyledAttributes.getBoolean(0, false);
            obtainStyledAttributes.recycle();
        }
        if (z) {
            setSingleLineAllCaps(this.mPrevText);
            setSingleLineAllCaps(this.mCurrText);
            setSingleLineAllCaps(this.mNextText);
        } else {
            this.mPrevText.setSingleLine();
            this.mCurrText.setSingleLine();
            this.mNextText.setSingleLine();
        }
        this.mScaledTextSpacing = (int) (16.0f * context.getResources().getDisplayMetrics().density);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        IMPL.setSingleLineAllCaps(textView);
    }

    int getMinHeight() {
        Drawable background = getBackground();
        return background != null ? background.getIntrinsicHeight() : 0;
    }

    public int getTextSpacing() {
        return this.mScaledTextSpacing;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) parent;
            PagerAdapter adapter = viewPager.getAdapter();
            viewPager.setInternalPageChangeListener(this.mPageListener);
            viewPager.setOnAdapterChangeListener(this.mPageListener);
            this.mPager = viewPager;
            updateAdapter(this.mWatchingAdapter != null ? (PagerAdapter) this.mWatchingAdapter.get() : null, adapter);
            return;
        }
        throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mPager != null) {
            updateAdapter(this.mPager.getAdapter(), null);
            this.mPager.setInternalPageChangeListener(null);
            this.mPager.setOnAdapterChangeListener(null);
            this.mPager = null;
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float f = 0.0f;
        if (this.mPager != null) {
            if (this.mLastKnownPositionOffset >= 0.0f) {
                f = this.mLastKnownPositionOffset;
            }
            updateTextPositions(this.mLastKnownCurrentPage, f, true);
        }
    }

    protected void onMeasure(int i, int i2) {
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        mode = getMinHeight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((float) size) * 0.8f)), ExploreByTouchHelper.INVALID_ID);
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(Math.min(0, size2 - paddingTop), ExploreByTouchHelper.INVALID_ID);
        this.mPrevText.measure(makeMeasureSpec, makeMeasureSpec2);
        this.mCurrText.measure(makeMeasureSpec, makeMeasureSpec2);
        this.mNextText.measure(makeMeasureSpec, makeMeasureSpec2);
        if (mode2 == 1073741824) {
            setMeasuredDimension(size, size2);
        } else {
            setMeasuredDimension(size, Math.max(mode, this.mCurrText.getMeasuredHeight() + paddingTop));
        }
    }

    public void requestLayout() {
        if (!this.mUpdatingText) {
            super.requestLayout();
        }
    }

    public void setGravity(int i) {
        this.mGravity = i;
        requestLayout();
    }

    public void setNonPrimaryAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.mNonPrimaryAlpha = ((int) (255.0f * f)) & MotionEventCompat.ACTION_MASK;
        int i = (this.mNonPrimaryAlpha << 24) | (this.mTextColor & ViewCompat.MEASURED_SIZE_MASK);
        this.mPrevText.setTextColor(i);
        this.mNextText.setTextColor(i);
    }

    public void setTextColor(@ColorInt int i) {
        this.mTextColor = i;
        this.mCurrText.setTextColor(i);
        int i2 = (this.mNonPrimaryAlpha << 24) | (this.mTextColor & ViewCompat.MEASURED_SIZE_MASK);
        this.mPrevText.setTextColor(i2);
        this.mNextText.setTextColor(i2);
    }

    public void setTextSize(int i, float f) {
        this.mPrevText.setTextSize(i, f);
        this.mCurrText.setTextSize(i, f);
        this.mNextText.setTextSize(i, f);
    }

    public void setTextSpacing(int i) {
        this.mScaledTextSpacing = i;
        requestLayout();
    }

    void updateAdapter(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        if (pagerAdapter != null) {
            pagerAdapter.unregisterDataSetObserver(this.mPageListener);
            this.mWatchingAdapter = null;
        }
        if (pagerAdapter2 != null) {
            pagerAdapter2.registerDataSetObserver(this.mPageListener);
            this.mWatchingAdapter = new WeakReference(pagerAdapter2);
        }
        if (this.mPager != null) {
            this.mLastKnownCurrentPage = -1;
            this.mLastKnownPositionOffset = -1.0f;
            updateText(this.mPager.getCurrentItem(), pagerAdapter2);
            requestLayout();
        }
    }

    void updateText(int i, PagerAdapter pagerAdapter) {
        CharSequence charSequence = null;
        int count = pagerAdapter != null ? pagerAdapter.getCount() : 0;
        this.mUpdatingText = true;
        CharSequence pageTitle = (i < 1 || pagerAdapter == null) ? null : pagerAdapter.getPageTitle(i - 1);
        this.mPrevText.setText(pageTitle);
        TextView textView = this.mCurrText;
        pageTitle = (pagerAdapter == null || i >= count) ? null : pagerAdapter.getPageTitle(i);
        textView.setText(pageTitle);
        if (i + 1 < count && pagerAdapter != null) {
            charSequence = pagerAdapter.getPageTitle(i + 1);
        }
        this.mNextText.setText(charSequence);
        count = MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((float) ((getWidth() - getPaddingLeft()) - getPaddingRight())) * 0.8f)), ExploreByTouchHelper.INVALID_ID);
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), ExploreByTouchHelper.INVALID_ID);
        this.mPrevText.measure(count, makeMeasureSpec);
        this.mCurrText.measure(count, makeMeasureSpec);
        this.mNextText.measure(count, makeMeasureSpec);
        this.mLastKnownCurrentPage = i;
        if (!this.mUpdatingPositions) {
            updateTextPositions(i, this.mLastKnownPositionOffset, false);
        }
        this.mUpdatingText = false;
    }

    void updateTextPositions(int i, float f, boolean z) {
        if (i != this.mLastKnownCurrentPage) {
            updateText(i, this.mPager.getAdapter());
        } else if (!z && f == this.mLastKnownPositionOffset) {
            return;
        }
        this.mUpdatingPositions = true;
        int measuredWidth = this.mPrevText.getMeasuredWidth();
        int measuredWidth2 = this.mCurrText.getMeasuredWidth();
        int measuredWidth3 = this.mNextText.getMeasuredWidth();
        int i2 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i3 = paddingRight + i2;
        float f2 = 0.5f + f;
        if (f2 > 1.0f) {
            f2 -= 1.0f;
        }
        i3 = ((width - i3) - ((int) (f2 * ((float) ((width - (i2 + paddingLeft)) - i3))))) - (measuredWidth2 / 2);
        int i4 = i3 + measuredWidth2;
        int baseline = this.mPrevText.getBaseline();
        measuredWidth2 = this.mCurrText.getBaseline();
        i2 = this.mNextText.getBaseline();
        int max = Math.max(Math.max(baseline, measuredWidth2), i2);
        baseline = max - baseline;
        measuredWidth2 = max - measuredWidth2;
        i2 = max - i2;
        max = Math.max(Math.max(this.mPrevText.getMeasuredHeight() + baseline, this.mCurrText.getMeasuredHeight() + measuredWidth2), i2 + this.mNextText.getMeasuredHeight());
        switch (this.mGravity & 112) {
            case TEXT_SPACING /*16*/:
                height = (((height - paddingTop) - paddingBottom) - max) / 2;
                baseline += height;
                measuredWidth2 += height;
                i2 += height;
                break;
            case Place.TYPE_ROOFING_CONTRACTOR /*80*/:
                height = (height - paddingBottom) - max;
                baseline += height;
                measuredWidth2 += height;
                i2 += height;
                break;
            default:
                baseline += paddingTop;
                measuredWidth2 += paddingTop;
                i2 += paddingTop;
                break;
        }
        this.mCurrText.layout(i3, measuredWidth2, i4, this.mCurrText.getMeasuredHeight() + measuredWidth2);
        measuredWidth2 = Math.min(paddingLeft, (i3 - this.mScaledTextSpacing) - measuredWidth);
        this.mPrevText.layout(measuredWidth2, baseline, measuredWidth + measuredWidth2, this.mPrevText.getMeasuredHeight() + baseline);
        baseline = Math.max((width - paddingRight) - measuredWidth3, this.mScaledTextSpacing + i4);
        this.mNextText.layout(baseline, i2, baseline + measuredWidth3, this.mNextText.getMeasuredHeight() + i2);
        this.mLastKnownPositionOffset = f;
        this.mUpdatingPositions = false;
    }
}
