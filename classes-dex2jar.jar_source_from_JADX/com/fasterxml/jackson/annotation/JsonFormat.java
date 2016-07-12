package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Locale;
import java.util.TimeZone;
import spacemadness.com.lunarconsole.BuildConfig;

@Target({ElementType.ANNOTATION_TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.TYPE})
@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
public @interface JsonFormat {
    public static final String DEFAULT_LOCALE = "##default";
    public static final String DEFAULT_TIMEZONE = "##default";

    public enum Feature {
        ACCEPT_SINGLE_VALUE_AS_ARRAY,
        WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS,
        WRITE_DATES_WITH_ZONE_ID,
        WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED,
        WRITE_SORTED_MAP_ENTRIES
    }

    public static class Features {
        private static final Features EMPTY;
        private final int disabled;
        private final int enabled;

        static {
            EMPTY = new Features(0, 0);
        }

        private Features(int i, int i2) {
            this.enabled = i;
            this.disabled = i2;
        }

        public static Features construct(JsonFormat jsonFormat) {
            return construct(jsonFormat.with(), jsonFormat.without());
        }

        public static Features construct(Feature[] featureArr, Feature[] featureArr2) {
            int i = 0;
            int i2 = 0;
            for (Feature ordinal : featureArr) {
                i2 |= 1 << ordinal.ordinal();
            }
            for (Feature ordinal2 : featureArr2) {
                i |= 1 << ordinal2.ordinal();
            }
            return new Features(i2, i);
        }

        public static Features empty() {
            return EMPTY;
        }

        public Boolean get(Feature feature) {
            int ordinal = 1 << feature.ordinal();
            return (this.disabled & ordinal) != 0 ? Boolean.FALSE : (ordinal & this.enabled) != 0 ? Boolean.TRUE : null;
        }

        public Features with(Feature... featureArr) {
            int i = 0;
            int i2 = this.enabled;
            while (i < featureArr.length) {
                int ordinal = (1 << featureArr[i].ordinal()) | i2;
                i++;
                i2 = ordinal;
            }
            return i2 == this.enabled ? this : new Features(i2, this.disabled);
        }

        public Features without(Feature... featureArr) {
            int i = 0;
            int i2 = this.disabled;
            while (i < featureArr.length) {
                int ordinal = (1 << featureArr[i].ordinal()) | i2;
                i++;
                i2 = ordinal;
            }
            return i2 == this.disabled ? this : new Features(this.enabled, i2);
        }
    }

    public enum Shape {
        ANY,
        SCALAR,
        ARRAY,
        OBJECT,
        NUMBER,
        NUMBER_FLOAT,
        NUMBER_INT,
        STRING,
        BOOLEAN;

        public boolean isNumeric() {
            return this == NUMBER || this == NUMBER_INT || this == NUMBER_FLOAT;
        }

        public boolean isStructured() {
            return this == OBJECT || this == ARRAY;
        }
    }

    public static class Value implements JacksonAnnotationValue<JsonFormat> {
        private TimeZone _timezone;
        private final Features features;
        private final Locale locale;
        private final String pattern;
        private final Shape shape;
        private final String timezoneStr;

        public Value() {
            this(BuildConfig.FLAVOR, Shape.ANY, BuildConfig.FLAVOR, BuildConfig.FLAVOR, Features.empty());
        }

        public Value(JsonFormat jsonFormat) {
            this(jsonFormat.pattern(), jsonFormat.shape(), jsonFormat.locale(), jsonFormat.timezone(), Features.construct(jsonFormat));
        }

        @Deprecated
        public Value(String str, Shape shape, String str2, String str3) {
            this(str, shape, str2, str3, Features.empty());
        }

        public Value(String str, Shape shape, String str2, String str3, Features features) {
            Locale locale = (str2 == null || str2.length() == 0 || JsonFormat.DEFAULT_TIMEZONE.equals(str2)) ? null : new Locale(str2);
            String str4 = (str3 == null || str3.length() == 0 || JsonFormat.DEFAULT_TIMEZONE.equals(str3)) ? null : str3;
            this(str, shape, locale, str4, null, features);
        }

        @Deprecated
        public Value(String str, Shape shape, Locale locale, String str2, TimeZone timeZone) {
            this(str, shape, locale, str2, timeZone, Features.empty());
        }

        public Value(String str, Shape shape, Locale locale, String str2, TimeZone timeZone, Features features) {
            this.pattern = str;
            if (shape == null) {
                shape = Shape.ANY;
            }
            this.shape = shape;
            this.locale = locale;
            this._timezone = timeZone;
            this.timezoneStr = str2;
            if (features == null) {
                features = Features.empty();
            }
            this.features = features;
        }

        @Deprecated
        public Value(String str, Shape shape, Locale locale, TimeZone timeZone) {
            this(str, shape, locale, timeZone, Features.empty());
        }

        public Value(String str, Shape shape, Locale locale, TimeZone timeZone, Features features) {
            this.pattern = str;
            if (shape == null) {
                shape = Shape.ANY;
            }
            this.shape = shape;
            this.locale = locale;
            this._timezone = timeZone;
            this.timezoneStr = null;
            if (features == null) {
                features = Features.empty();
            }
            this.features = features;
        }

        public static Value forPattern(String str) {
            return new Value(str, null, null, null, null, Features.empty());
        }

        public Boolean getFeature(Feature feature) {
            return this.features.get(feature);
        }

        public Locale getLocale() {
            return this.locale;
        }

        public String getPattern() {
            return this.pattern;
        }

        public Shape getShape() {
            return this.shape;
        }

        public TimeZone getTimeZone() {
            TimeZone timeZone = this._timezone;
            if (timeZone != null) {
                return timeZone;
            }
            if (this.timezoneStr == null) {
                return null;
            }
            timeZone = TimeZone.getTimeZone(this.timezoneStr);
            this._timezone = timeZone;
            return timeZone;
        }

        public boolean hasLocale() {
            return this.locale != null;
        }

        public boolean hasPattern() {
            return this.pattern != null && this.pattern.length() > 0;
        }

        public boolean hasShape() {
            return this.shape != Shape.ANY;
        }

        public boolean hasTimeZone() {
            return (this._timezone == null && (this.timezoneStr == null || this.timezoneStr.isEmpty())) ? false : true;
        }

        public String timeZoneAsString() {
            return this._timezone != null ? this._timezone.getID() : this.timezoneStr;
        }

        public Class<JsonFormat> valueFor() {
            return JsonFormat.class;
        }

        public Value withFeature(Feature feature) {
            Features with = this.features.with(feature);
            return with == this.features ? this : new Value(this.pattern, this.shape, this.locale, this.timezoneStr, this._timezone, with);
        }

        public Value withLocale(Locale locale) {
            return new Value(this.pattern, this.shape, locale, this.timezoneStr, this._timezone, this.features);
        }

        public Value withPattern(String str) {
            return new Value(str, this.shape, this.locale, this.timezoneStr, this._timezone, this.features);
        }

        public Value withShape(Shape shape) {
            return new Value(this.pattern, shape, this.locale, this.timezoneStr, this._timezone, this.features);
        }

        public Value withTimeZone(TimeZone timeZone) {
            return new Value(this.pattern, this.shape, this.locale, null, timeZone, this.features);
        }

        public Value withoutFeature(Feature feature) {
            Features without = this.features.without(feature);
            return without == this.features ? this : new Value(this.pattern, this.shape, this.locale, this.timezoneStr, this._timezone, without);
        }
    }

    String locale() default "##default";

    String pattern() default "";

    Shape shape() default Shape.ANY;

    String timezone() default "##default";

    Feature[] with() default {};

    Feature[] without() default {};
}
