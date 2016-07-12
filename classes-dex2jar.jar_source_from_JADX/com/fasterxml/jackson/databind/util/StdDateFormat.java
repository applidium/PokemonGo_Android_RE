package com.fasterxml.jackson.databind.util;

import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class StdDateFormat extends DateFormat {
    protected static final String[] ALL_FORMATS;
    protected static final DateFormat DATE_FORMAT_ISO8601;
    protected static final DateFormat DATE_FORMAT_ISO8601_Z;
    protected static final DateFormat DATE_FORMAT_PLAIN;
    protected static final DateFormat DATE_FORMAT_RFC1123;
    protected static final String DATE_FORMAT_STR_ISO8601 = "yyyy-MM-dd'T'HH:mm:ss.SSSZ";
    protected static final String DATE_FORMAT_STR_ISO8601_Z = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
    protected static final String DATE_FORMAT_STR_PLAIN = "yyyy-MM-dd";
    protected static final String DATE_FORMAT_STR_RFC1123 = "EEE, dd MMM yyyy HH:mm:ss zzz";
    private static final Locale DEFAULT_LOCALE;
    private static final TimeZone DEFAULT_TIMEZONE;
    public static final StdDateFormat instance;
    protected transient DateFormat _formatISO8601;
    protected transient DateFormat _formatISO8601_z;
    protected transient DateFormat _formatPlain;
    protected transient DateFormat _formatRFC1123;
    protected final Locale _locale;
    protected transient TimeZone _timezone;

    static {
        ALL_FORMATS = new String[]{DATE_FORMAT_STR_ISO8601, DATE_FORMAT_STR_ISO8601_Z, DATE_FORMAT_STR_RFC1123, DATE_FORMAT_STR_PLAIN};
        DEFAULT_TIMEZONE = TimeZone.getTimeZone("GMT");
        DEFAULT_LOCALE = Locale.US;
        DATE_FORMAT_RFC1123 = new SimpleDateFormat(DATE_FORMAT_STR_RFC1123, DEFAULT_LOCALE);
        DATE_FORMAT_RFC1123.setTimeZone(DEFAULT_TIMEZONE);
        DATE_FORMAT_ISO8601 = new SimpleDateFormat(DATE_FORMAT_STR_ISO8601, DEFAULT_LOCALE);
        DATE_FORMAT_ISO8601.setTimeZone(DEFAULT_TIMEZONE);
        DATE_FORMAT_ISO8601_Z = new SimpleDateFormat(DATE_FORMAT_STR_ISO8601_Z, DEFAULT_LOCALE);
        DATE_FORMAT_ISO8601_Z.setTimeZone(DEFAULT_TIMEZONE);
        DATE_FORMAT_PLAIN = new SimpleDateFormat(DATE_FORMAT_STR_PLAIN, DEFAULT_LOCALE);
        DATE_FORMAT_PLAIN.setTimeZone(DEFAULT_TIMEZONE);
        instance = new StdDateFormat();
    }

    public StdDateFormat() {
        this._locale = DEFAULT_LOCALE;
    }

    @Deprecated
    public StdDateFormat(TimeZone timeZone) {
        this(timeZone, DEFAULT_LOCALE);
    }

    public StdDateFormat(TimeZone timeZone, Locale locale) {
        this._timezone = timeZone;
        this._locale = locale;
    }

    private static final DateFormat _cloneFormat(DateFormat dateFormat, String str, TimeZone timeZone, Locale locale) {
        DateFormat dateFormat2;
        if (locale.equals(DEFAULT_LOCALE)) {
            dateFormat2 = (DateFormat) dateFormat.clone();
            if (timeZone != null) {
                dateFormat2.setTimeZone(timeZone);
            }
        } else {
            dateFormat2 = new SimpleDateFormat(str, locale);
            if (timeZone == null) {
                timeZone = DEFAULT_TIMEZONE;
            }
            dateFormat2.setTimeZone(timeZone);
        }
        return dateFormat2;
    }

    @Deprecated
    public static DateFormat getBlueprintISO8601Format() {
        return DATE_FORMAT_ISO8601;
    }

    @Deprecated
    public static DateFormat getBlueprintRFC1123Format() {
        return DATE_FORMAT_RFC1123;
    }

    public static TimeZone getDefaultTimeZone() {
        return DEFAULT_TIMEZONE;
    }

    @Deprecated
    public static DateFormat getISO8601Format(TimeZone timeZone) {
        return getISO8601Format(timeZone, DEFAULT_LOCALE);
    }

    public static DateFormat getISO8601Format(TimeZone timeZone, Locale locale) {
        return _cloneFormat(DATE_FORMAT_ISO8601, DATE_FORMAT_STR_ISO8601, timeZone, locale);
    }

    @Deprecated
    public static DateFormat getRFC1123Format(TimeZone timeZone) {
        return getRFC1123Format(timeZone, DEFAULT_LOCALE);
    }

    public static DateFormat getRFC1123Format(TimeZone timeZone, Locale locale) {
        return _cloneFormat(DATE_FORMAT_RFC1123, DATE_FORMAT_STR_RFC1123, timeZone, locale);
    }

    private static final boolean hasTimeZone(String str) {
        int length = str.length();
        if (length >= 6) {
            char charAt = str.charAt(length - 6);
            if (charAt == '+' || charAt == '-') {
                return true;
            }
            charAt = str.charAt(length - 5);
            if (charAt == '+' || charAt == '-') {
                return true;
            }
            char charAt2 = str.charAt(length - 3);
            if (charAt2 == '+' || charAt2 == '-') {
                return true;
            }
        }
        return false;
    }

    public StdDateFormat clone() {
        return new StdDateFormat(this._timezone, this._locale);
    }

    public StringBuffer format(Date date, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (this._formatISO8601 == null) {
            this._formatISO8601 = _cloneFormat(DATE_FORMAT_ISO8601, DATE_FORMAT_STR_ISO8601, this._timezone, this._locale);
        }
        return this._formatISO8601.format(date, stringBuffer, fieldPosition);
    }

    public TimeZone getTimeZone() {
        return this._timezone;
    }

    protected boolean looksLikeISO8601(String str) {
        return str.length() >= 5 && Character.isDigit(str.charAt(0)) && Character.isDigit(str.charAt(3)) && str.charAt(4) == '-';
    }

    public Date parse(String str) throws ParseException {
        String trim = str.trim();
        ParsePosition parsePosition = new ParsePosition(0);
        Date parse = parse(trim, parsePosition);
        if (parse != null) {
            return parse;
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (String str2 : ALL_FORMATS) {
            if (stringBuilder.length() > 0) {
                stringBuilder.append("\", \"");
            } else {
                stringBuilder.append('\"');
            }
            stringBuilder.append(str2);
        }
        stringBuilder.append('\"');
        throw new ParseException(String.format("Can not parse date \"%s\": not compatible with any of standard forms (%s)", new Object[]{trim, stringBuilder.toString()}), parsePosition.getErrorIndex());
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.Date parse(java.lang.String r6, java.text.ParsePosition r7) {
        /*
        r5 = this;
        r4 = 45;
        r3 = 0;
        r0 = r5.looksLikeISO8601(r6);
        if (r0 == 0) goto L_0x000e;
    L_0x0009:
        r0 = r5.parseAsISO8601(r6, r7);
    L_0x000d:
        return r0;
    L_0x000e:
        r0 = r6.length();
    L_0x0012:
        r0 = r0 + -1;
        if (r0 < 0) goto L_0x0026;
    L_0x0016:
        r1 = r6.charAt(r0);
        r2 = 48;
        if (r1 < r2) goto L_0x0022;
    L_0x001e:
        r2 = 57;
        if (r1 <= r2) goto L_0x0012;
    L_0x0022:
        if (r0 > 0) goto L_0x0026;
    L_0x0024:
        if (r1 == r4) goto L_0x0012;
    L_0x0026:
        if (r0 >= 0) goto L_0x003e;
    L_0x0028:
        r0 = r6.charAt(r3);
        if (r0 == r4) goto L_0x0034;
    L_0x002e:
        r0 = com.fasterxml.jackson.core.io.NumberInput.inLongRange(r6, r3);
        if (r0 == 0) goto L_0x003e;
    L_0x0034:
        r0 = new java.util.Date;
        r2 = java.lang.Long.parseLong(r6);
        r0.<init>(r2);
        goto L_0x000d;
    L_0x003e:
        r0 = r5.parseAsRFC1123(r6, r7);
        goto L_0x000d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.StdDateFormat.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected java.util.Date parseAsISO8601(java.lang.String r9, java.text.ParsePosition r10) {
        /*
        r8 = this;
        r7 = 90;
        r6 = 84;
        r5 = 58;
        r3 = 12;
        r4 = 48;
        r1 = r9.length();
        r0 = r1 + -1;
        r0 = r9.charAt(r0);
        r2 = 10;
        if (r1 > r2) goto L_0x0035;
    L_0x0018:
        r2 = java.lang.Character.isDigit(r0);
        if (r2 == 0) goto L_0x0035;
    L_0x001e:
        r0 = r8._formatPlain;
        if (r0 != 0) goto L_0x0030;
    L_0x0022:
        r0 = DATE_FORMAT_PLAIN;
        r1 = "yyyy-MM-dd";
        r2 = r8._timezone;
        r3 = r8._locale;
        r0 = _cloneFormat(r0, r1, r2, r3);
        r8._formatPlain = r0;
    L_0x0030:
        r0 = r0.parse(r9, r10);
        return r0;
    L_0x0035:
        if (r0 != r7) goto L_0x0062;
    L_0x0037:
        r0 = r8._formatISO8601_z;
        if (r0 != 0) goto L_0x0049;
    L_0x003b:
        r0 = DATE_FORMAT_ISO8601_Z;
        r2 = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
        r3 = r8._timezone;
        r4 = r8._locale;
        r0 = _cloneFormat(r0, r2, r3, r4);
        r8._formatISO8601_z = r0;
    L_0x0049:
        r2 = r1 + -4;
        r2 = r9.charAt(r2);
        if (r2 != r5) goto L_0x0030;
    L_0x0051:
        r2 = new java.lang.StringBuilder;
        r2.<init>(r9);
        r1 = r1 + -1;
        r3 = ".000";
        r2.insert(r1, r3);
        r9 = r2.toString();
        goto L_0x0030;
    L_0x0062:
        r0 = hasTimeZone(r9);
        if (r0 == 0) goto L_0x00f1;
    L_0x0068:
        r0 = r1 + -3;
        r0 = r9.charAt(r0);
        if (r0 != r5) goto L_0x00b4;
    L_0x0070:
        r0 = new java.lang.StringBuilder;
        r0.<init>(r9);
        r2 = r1 + -3;
        r1 = r1 + -2;
        r0.delete(r2, r1);
        r0 = r0.toString();
    L_0x0080:
        r1 = r0.length();
        r2 = r0.lastIndexOf(r6);
        r2 = r1 - r2;
        r2 = r2 + -6;
        if (r2 >= r3) goto L_0x009c;
    L_0x008e:
        r1 = r1 + -5;
        r3 = new java.lang.StringBuilder;
        r3.<init>(r0);
        switch(r2) {
            case 5: goto L_0x00eb;
            case 6: goto L_0x00e6;
            case 7: goto L_0x0098;
            case 8: goto L_0x00e0;
            case 9: goto L_0x00da;
            case 10: goto L_0x00d4;
            case 11: goto L_0x00d0;
            default: goto L_0x0098;
        };
    L_0x0098:
        r0 = r3.toString();
    L_0x009c:
        r1 = r8._formatISO8601;
        r2 = r8._formatISO8601;
        if (r2 != 0) goto L_0x012f;
    L_0x00a2:
        r1 = DATE_FORMAT_ISO8601;
        r2 = "yyyy-MM-dd'T'HH:mm:ss.SSSZ";
        r3 = r8._timezone;
        r4 = r8._locale;
        r1 = _cloneFormat(r1, r2, r3, r4);
        r8._formatISO8601 = r1;
        r9 = r0;
        r0 = r1;
        goto L_0x0030;
    L_0x00b4:
        r1 = 43;
        if (r0 == r1) goto L_0x00bc;
    L_0x00b8:
        r1 = 45;
        if (r0 != r1) goto L_0x012c;
    L_0x00bc:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r0 = r0.append(r9);
        r1 = "00";
        r0 = r0.append(r1);
        r0 = r0.toString();
        goto L_0x0080;
    L_0x00d0:
        r3.insert(r1, r4);
        goto L_0x0098;
    L_0x00d4:
        r0 = "00";
        r3.insert(r1, r0);
        goto L_0x0098;
    L_0x00da:
        r0 = "000";
        r3.insert(r1, r0);
        goto L_0x0098;
    L_0x00e0:
        r0 = ".000";
        r3.insert(r1, r0);
        goto L_0x0098;
    L_0x00e6:
        r0 = "00.000";
        r3.insert(r1, r0);
    L_0x00eb:
        r0 = ":00.000";
        r3.insert(r1, r0);
        goto L_0x0098;
    L_0x00f1:
        r0 = new java.lang.StringBuilder;
        r0.<init>(r9);
        r2 = r9.lastIndexOf(r6);
        r1 = r1 - r2;
        r1 = r1 + -1;
        if (r1 >= r3) goto L_0x0107;
    L_0x00ff:
        switch(r1) {
            case 9: goto L_0x0128;
            case 10: goto L_0x0125;
            case 11: goto L_0x0122;
            default: goto L_0x0102;
        };
    L_0x0102:
        r1 = ".000";
        r0.append(r1);
    L_0x0107:
        r0.append(r7);
        r9 = r0.toString();
        r0 = r8._formatISO8601_z;
        if (r0 != 0) goto L_0x0030;
    L_0x0112:
        r0 = DATE_FORMAT_ISO8601_Z;
        r1 = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
        r2 = r8._timezone;
        r3 = r8._locale;
        r0 = _cloneFormat(r0, r1, r2, r3);
        r8._formatISO8601_z = r0;
        goto L_0x0030;
    L_0x0122:
        r0.append(r4);
    L_0x0125:
        r0.append(r4);
    L_0x0128:
        r0.append(r4);
        goto L_0x0107;
    L_0x012c:
        r0 = r9;
        goto L_0x0080;
    L_0x012f:
        r9 = r0;
        r0 = r1;
        goto L_0x0030;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.StdDateFormat.parseAsISO8601(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    protected Date parseAsRFC1123(String str, ParsePosition parsePosition) {
        if (this._formatRFC1123 == null) {
            this._formatRFC1123 = _cloneFormat(DATE_FORMAT_RFC1123, DATE_FORMAT_STR_RFC1123, this._timezone, this._locale);
        }
        return this._formatRFC1123.parse(str, parsePosition);
    }

    public void setTimeZone(TimeZone timeZone) {
        if (!timeZone.equals(this._timezone)) {
            this._formatRFC1123 = null;
            this._formatISO8601 = null;
            this._formatISO8601_z = null;
            this._formatPlain = null;
            this._timezone = timeZone;
        }
    }

    public String toString() {
        String str = "DateFormat " + getClass().getName();
        TimeZone timeZone = this._timezone;
        if (timeZone != null) {
            str = str + " (timezone: " + timeZone + ")";
        }
        return str + "(locale: " + this._locale + ")";
    }

    public StdDateFormat withLocale(Locale locale) {
        return locale.equals(this._locale) ? this : new StdDateFormat(this._timezone, locale);
    }

    public StdDateFormat withTimeZone(TimeZone timeZone) {
        if (timeZone == null) {
            timeZone = DEFAULT_TIMEZONE;
        }
        return (timeZone == this._timezone || timeZone.equals(this._timezone)) ? this : new StdDateFormat(timeZone, this._locale);
    }
}
