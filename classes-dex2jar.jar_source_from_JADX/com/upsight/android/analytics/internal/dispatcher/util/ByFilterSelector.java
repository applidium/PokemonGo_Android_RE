package com.upsight.android.analytics.internal.dispatcher.util;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import spacemadness.com.lunarconsole.BuildConfig;

public class ByFilterSelector<D> implements Selector<D> {
    private Map<String, D> mData;
    private D mDefaultValue;
    private Set<Filter> mFilters;

    static class Filter {
        private static final String SEPARATOR = ".";
        private final String mFilter;
        private final boolean mIsWildcard;
        private final String mMatcher;

        public Filter(String str) {
            this.mFilter = str;
            this.mIsWildcard = str.endsWith("*");
            this.mMatcher = str.replaceAll("\\*", BuildConfig.FLAVOR);
        }

        public String getFilter() {
            return this.mFilter;
        }

        public Filter getFilterIfBetter(String str, Filter filter) {
            if (!this.mMatcher.equals(str)) {
                if (!str.startsWith(this.mMatcher)) {
                    return filter;
                }
                if (!this.mMatcher.endsWith(SEPARATOR) && !this.mIsWildcard && !this.mMatcher.isEmpty()) {
                    return filter;
                }
                if (filter != null && filter.getMatcher().length() >= this.mMatcher.length()) {
                    return filter;
                }
            }
            return this;
        }

        public String getMatcher() {
            return this.mMatcher;
        }
    }

    public ByFilterSelector(Map<String, D> map) {
        this.mDefaultValue = null;
        this.mData = map;
        this.mFilters = new HashSet();
        for (String filter : this.mData.keySet()) {
            this.mFilters.add(new Filter(filter));
        }
    }

    public ByFilterSelector(Map<String, D> map, D d) {
        this(map);
        this.mDefaultValue = d;
    }

    private String getFilterFor(String str) {
        Filter filter = null;
        for (Filter filterIfBetter : this.mFilters) {
            filter = filterIfBetter.getFilterIfBetter(str, filter);
        }
        return filter == null ? null : filter.getFilter();
    }

    public D select(String str) {
        String filterFor = getFilterFor(str);
        return filterFor == null ? this.mDefaultValue : this.mData.get(filterFor);
    }
}
