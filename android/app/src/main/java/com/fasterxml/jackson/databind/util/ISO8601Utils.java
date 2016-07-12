package com.fasterxml.jackson.databind.util;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.commons.io.FilenameUtils;
import spacemadness.com.lunarconsole.BuildConfig;

public class ISO8601Utils {
    private static final String GMT_ID = "GMT";
    private static final TimeZone TIMEZONE_GMT;
    private static final TimeZone TIMEZONE_Z;

    static {
        TIMEZONE_GMT = TimeZone.getTimeZone(GMT_ID);
        TIMEZONE_Z = TIMEZONE_GMT;
    }

    private static boolean checkOffset(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    public static String format(Date date) {
        return format(date, false, TIMEZONE_GMT);
    }

    public static String format(Date date, boolean z) {
        return format(date, z, TIMEZONE_GMT);
    }

    public static String format(Date date, boolean z, TimeZone timeZone) {
        Calendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder stringBuilder = new StringBuilder(((z ? ".sss".length() : 0) + "yyyy-MM-ddThh:mm:ss".length()) + (timeZone.getRawOffset() == 0 ? "Z".length() : "+hh:mm".length()));
        padInt(stringBuilder, gregorianCalendar.get(1), "yyyy".length());
        stringBuilder.append('-');
        padInt(stringBuilder, gregorianCalendar.get(2) + 1, "MM".length());
        stringBuilder.append('-');
        padInt(stringBuilder, gregorianCalendar.get(5), "dd".length());
        stringBuilder.append('T');
        padInt(stringBuilder, gregorianCalendar.get(11), "hh".length());
        stringBuilder.append(':');
        padInt(stringBuilder, gregorianCalendar.get(12), "mm".length());
        stringBuilder.append(':');
        padInt(stringBuilder, gregorianCalendar.get(13), "ss".length());
        if (z) {
            stringBuilder.append(FilenameUtils.EXTENSION_SEPARATOR);
            padInt(stringBuilder, gregorianCalendar.get(14), "sss".length());
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int abs = Math.abs((offset / 60000) / 60);
            int abs2 = Math.abs((offset / 60000) % 60);
            stringBuilder.append(offset < 0 ? '-' : '+');
            padInt(stringBuilder, abs, "hh".length());
            stringBuilder.append(':');
            padInt(stringBuilder, abs2, "mm".length());
        } else {
            stringBuilder.append('Z');
        }
        return stringBuilder.toString();
    }

    private static void padInt(StringBuilder stringBuilder, int i, int i2) {
        String num = Integer.toString(i);
        for (int length = i2 - num.length(); length > 0; length--) {
            stringBuilder.append('0');
        }
        stringBuilder.append(num);
    }

    public static Date parse(String str, ParsePosition parsePosition) throws ParseException {
        Throwable th;
        String message;
        ParseException parseException;
        int i = 0;
        String substring;
        try {
            int index = parsePosition.getIndex();
            int i2 = index + 4;
            int parseInt = parseInt(str, index, i2);
            if (checkOffset(str, i2, '-')) {
                i2++;
            }
            index = i2 + 2;
            int parseInt2 = parseInt(str, i2, index);
            i2 = checkOffset(str, index, '-') ? index + 1 : index;
            index = i2 + 2;
            int parseInt3 = parseInt(str, i2, index);
            boolean checkOffset = checkOffset(str, index, 'T');
            if (checkOffset || str.length() > index) {
                int parseInt4;
                int i3;
                int i4;
                if (checkOffset) {
                    index++;
                    i2 = index + 2;
                    parseInt4 = parseInt(str, index, i2);
                    if (checkOffset(str, i2, ':')) {
                        i2++;
                    }
                    i3 = i2 + 2;
                    index = parseInt(str, i2, i3);
                    i2 = checkOffset(str, i3, ':') ? i3 + 1 : i3;
                    if (str.length() > i2) {
                        char charAt = str.charAt(i2);
                        if (!(charAt == 'Z' || charAt == '+' || charAt == '-')) {
                            i3 = i2 + 2;
                            i2 = parseInt(str, i2, i3);
                            int i5;
                            if (checkOffset(str, i3, FilenameUtils.EXTENSION_SEPARATOR)) {
                                i = i3 + 1;
                                i3 = i + 3;
                                i4 = parseInt4;
                                parseInt4 = parseInt(str, i, i3);
                                i = i2;
                                i5 = index;
                                index = i3;
                                i3 = i5;
                            } else {
                                i4 = parseInt4;
                                parseInt4 = 0;
                                i = i2;
                                i5 = index;
                                index = i3;
                                i3 = i5;
                            }
                        }
                    }
                    i3 = index;
                    i4 = parseInt4;
                    parseInt4 = 0;
                    index = i2;
                } else {
                    parseInt4 = 0;
                    i3 = 0;
                    i4 = 0;
                }
                if (str.length() <= index) {
                    throw new IllegalArgumentException("No time zone indicator");
                }
                TimeZone timeZone;
                char charAt2 = str.charAt(index);
                if (charAt2 == 'Z') {
                    timeZone = TIMEZONE_Z;
                    index++;
                } else if (charAt2 == '+' || charAt2 == '-') {
                    substring = str.substring(index);
                    index += substring.length();
                    if ("+0000".equals(substring) || "+00:00".equals(substring)) {
                        timeZone = TIMEZONE_Z;
                    } else {
                        String str2 = GMT_ID + substring;
                        timeZone = TimeZone.getTimeZone(str2);
                        String id = timeZone.getID();
                        if (!(id.equals(str2) || id.replace(UpsightEndpoint.SIGNED_MESSAGE_SEPARATOR, BuildConfig.FLAVOR).equals(str2))) {
                            throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str2 + " given, resolves to " + timeZone.getID());
                        }
                    }
                } else {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + charAt2 + "'");
                }
                Calendar gregorianCalendar = new GregorianCalendar(timeZone);
                gregorianCalendar.setLenient(false);
                gregorianCalendar.set(1, parseInt);
                gregorianCalendar.set(2, parseInt2 - 1);
                gregorianCalendar.set(5, parseInt3);
                gregorianCalendar.set(11, i4);
                gregorianCalendar.set(12, i3);
                gregorianCalendar.set(13, i);
                gregorianCalendar.set(14, parseInt4);
                parsePosition.setIndex(index);
                return gregorianCalendar.getTime();
            }
            Calendar gregorianCalendar2 = new GregorianCalendar(parseInt, parseInt2 - 1, parseInt3);
            parsePosition.setIndex(index);
            return gregorianCalendar2.getTime();
        } catch (Throwable e) {
            th = e;
            substring = str == null ? null : '\"' + str + "'";
            message = th.getMessage();
            if (message == null || message.isEmpty()) {
                message = "(" + th.getClass().getName() + ")";
            }
            parseException = new ParseException("Failed to parse date [" + substring + "]: " + message, parsePosition.getIndex());
            parseException.initCause(th);
            throw parseException;
        } catch (Throwable e2) {
            th = e2;
            if (str == null) {
            }
            message = th.getMessage();
            message = "(" + th.getClass().getName() + ")";
            parseException = new ParseException("Failed to parse date [" + substring + "]: " + message, parsePosition.getIndex());
            parseException.initCause(th);
            throw parseException;
        } catch (Throwable e22) {
            th = e22;
            if (str == null) {
            }
            message = th.getMessage();
            message = "(" + th.getClass().getName() + ")";
            parseException = new ParseException("Failed to parse date [" + substring + "]: " + message, parsePosition.getIndex());
            parseException.initCause(th);
            throw parseException;
        }
    }

    private static int parseInt(String str, int i, int i2) throws NumberFormatException {
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        int i3;
        int i4 = 0;
        if (i < i2) {
            i3 = i + 1;
            i4 = Character.digit(str.charAt(i), 10);
            if (i4 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i4 = -i4;
        } else {
            i3 = i;
        }
        while (i3 < i2) {
            int digit = Character.digit(str.charAt(i3), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i4 = (i4 * 10) - digit;
            i3++;
        }
        return -i4;
    }

    @Deprecated
    public static TimeZone timeZoneGMT() {
        return TIMEZONE_GMT;
    }
}
