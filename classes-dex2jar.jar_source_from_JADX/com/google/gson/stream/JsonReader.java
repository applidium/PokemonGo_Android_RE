package com.google.gson.stream;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.places.Place;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import org.apache.commons.io.IOUtils;

public class JsonReader implements Closeable {
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final char[] NON_EXECUTE_PREFIX;
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;
    private final char[] buffer;
    private final Reader in;
    private boolean lenient;
    private int limit;
    private int lineNumber;
    private int lineStart;
    private int peeked;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int pos;
    private int[] stack;
    private int stackSize;

    /* renamed from: com.google.gson.stream.JsonReader.1 */
    static final class C07301 extends JsonReaderInternalAccess {
        C07301() {
        }

        public void promoteNameToValue(JsonReader jsonReader) throws IOException {
            if (jsonReader instanceof JsonTreeReader) {
                ((JsonTreeReader) jsonReader).promoteNameToValue();
                return;
            }
            int access$000 = jsonReader.peeked;
            if (access$000 == 0) {
                access$000 = jsonReader.doPeek();
            }
            if (access$000 == JsonReader.PEEKED_DOUBLE_QUOTED_NAME) {
                jsonReader.peeked = JsonReader.PEEKED_DOUBLE_QUOTED;
            } else if (access$000 == JsonReader.PEEKED_SINGLE_QUOTED_NAME) {
                jsonReader.peeked = JsonReader.PEEKED_SINGLE_QUOTED;
            } else if (access$000 == JsonReader.PEEKED_UNQUOTED_NAME) {
                jsonReader.peeked = JsonReader.PEEKED_UNQUOTED;
            } else {
                throw new IllegalStateException("Expected a name but was " + jsonReader.peek() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + " at line " + jsonReader.getLineNumber() + " column " + jsonReader.getColumnNumber());
            }
        }
    }

    static {
        NON_EXECUTE_PREFIX = ")]}'\n".toCharArray();
        JsonReaderInternalAccess.INSTANCE = new C07301();
    }

    public JsonReader(Reader reader) {
        this.lenient = false;
        this.buffer = new char[Place.TYPE_SUBLOCALITY_LEVEL_2];
        this.pos = PEEKED_NONE;
        this.limit = PEEKED_NONE;
        this.lineNumber = PEEKED_NONE;
        this.lineStart = PEEKED_NONE;
        this.peeked = PEEKED_NONE;
        this.stack = new int[32];
        this.stackSize = PEEKED_NONE;
        int[] iArr = this.stack;
        int i = this.stackSize;
        this.stackSize = i + PEEKED_BEGIN_OBJECT;
        iArr[i] = PEEKED_FALSE;
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.in = reader;
    }

    private void checkLenient() throws IOException {
        if (!this.lenient) {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void consumeNonExecutePrefix() throws IOException {
        nextNonWhitespace(true);
        this.pos--;
        if (this.pos + NON_EXECUTE_PREFIX.length <= this.limit || fillBuffer(NON_EXECUTE_PREFIX.length)) {
            int i = PEEKED_NONE;
            while (i < NON_EXECUTE_PREFIX.length) {
                if (this.buffer[this.pos + i] == NON_EXECUTE_PREFIX[i]) {
                    i += PEEKED_BEGIN_OBJECT;
                } else {
                    return;
                }
            }
            this.pos += NON_EXECUTE_PREFIX.length;
        }
    }

    private int doPeek() throws IOException {
        int nextNonWhitespace;
        int i = this.stack[this.stackSize - 1];
        if (i == PEEKED_BEGIN_OBJECT) {
            this.stack[this.stackSize - 1] = PEEKED_END_OBJECT;
        } else if (i == PEEKED_END_OBJECT) {
            switch (nextNonWhitespace(true)) {
                case Place.TYPE_GYM /*44*/:
                    break;
                case Place.TYPE_LODGING /*59*/:
                    checkLenient();
                    break;
                case Place.TYPE_TRAVEL_AGENCY /*93*/:
                    this.peeked = PEEKED_END_ARRAY;
                    return PEEKED_END_ARRAY;
                default:
                    throw syntaxError("Unterminated array");
            }
        } else if (i == PEEKED_BEGIN_ARRAY || i == PEEKED_TRUE) {
            this.stack[this.stackSize - 1] = PEEKED_END_ARRAY;
            if (i == PEEKED_TRUE) {
                switch (nextNonWhitespace(true)) {
                    case Place.TYPE_GYM /*44*/:
                        break;
                    case Place.TYPE_LODGING /*59*/:
                        checkLenient();
                        break;
                    case 125:
                        this.peeked = PEEKED_END_OBJECT;
                        return PEEKED_END_OBJECT;
                    default:
                        throw syntaxError("Unterminated object");
                }
            }
            nextNonWhitespace = nextNonWhitespace(true);
            switch (nextNonWhitespace) {
                case Place.TYPE_ESTABLISHMENT /*34*/:
                    this.peeked = PEEKED_DOUBLE_QUOTED_NAME;
                    return PEEKED_DOUBLE_QUOTED_NAME;
                case Place.TYPE_FUNERAL_HOME /*39*/:
                    checkLenient();
                    this.peeked = PEEKED_SINGLE_QUOTED_NAME;
                    return PEEKED_SINGLE_QUOTED_NAME;
                case 125:
                    if (i != PEEKED_TRUE) {
                        this.peeked = PEEKED_END_OBJECT;
                        return PEEKED_END_OBJECT;
                    }
                    throw syntaxError("Expected name");
                default:
                    checkLenient();
                    this.pos--;
                    if (isLiteral((char) nextNonWhitespace)) {
                        this.peeked = PEEKED_UNQUOTED_NAME;
                        return PEEKED_UNQUOTED_NAME;
                    }
                    throw syntaxError("Expected name");
            }
        } else if (i == PEEKED_END_ARRAY) {
            this.stack[this.stackSize - 1] = PEEKED_TRUE;
            switch (nextNonWhitespace(true)) {
                case Place.TYPE_LOCKSMITH /*58*/:
                    break;
                case Place.TYPE_MEAL_TAKEAWAY /*61*/:
                    checkLenient();
                    if ((this.pos < this.limit || fillBuffer(PEEKED_BEGIN_OBJECT)) && this.buffer[this.pos] == '>') {
                        this.pos += PEEKED_BEGIN_OBJECT;
                        break;
                    }
                default:
                    throw syntaxError("Expected ':'");
            }
        } else if (i == PEEKED_FALSE) {
            if (this.lenient) {
                consumeNonExecutePrefix();
            }
            this.stack[this.stackSize - 1] = PEEKED_NULL;
        } else if (i == PEEKED_NULL) {
            if (nextNonWhitespace(false) == -1) {
                this.peeked = PEEKED_EOF;
                return PEEKED_EOF;
            }
            checkLenient();
            this.pos--;
        } else if (i == PEEKED_SINGLE_QUOTED) {
            throw new IllegalStateException("JsonReader is closed");
        }
        switch (nextNonWhitespace(true)) {
            case Place.TYPE_ESTABLISHMENT /*34*/:
                if (this.stackSize == PEEKED_BEGIN_OBJECT) {
                    checkLenient();
                }
                this.peeked = PEEKED_DOUBLE_QUOTED;
                return PEEKED_DOUBLE_QUOTED;
            case Place.TYPE_FUNERAL_HOME /*39*/:
                checkLenient();
                this.peeked = PEEKED_SINGLE_QUOTED;
                return PEEKED_SINGLE_QUOTED;
            case Place.TYPE_GYM /*44*/:
            case Place.TYPE_LODGING /*59*/:
                break;
            case Place.TYPE_TAXI_STAND /*91*/:
                this.peeked = PEEKED_BEGIN_ARRAY;
                return PEEKED_BEGIN_ARRAY;
            case Place.TYPE_TRAVEL_AGENCY /*93*/:
                if (i == PEEKED_BEGIN_OBJECT) {
                    this.peeked = PEEKED_END_ARRAY;
                    return PEEKED_END_ARRAY;
                }
                break;
            case 123:
                this.peeked = PEEKED_BEGIN_OBJECT;
                return PEEKED_BEGIN_OBJECT;
            default:
                this.pos--;
                if (this.stackSize == PEEKED_BEGIN_OBJECT) {
                    checkLenient();
                }
                nextNonWhitespace = peekKeyword();
                if (nextNonWhitespace != 0) {
                    return nextNonWhitespace;
                }
                nextNonWhitespace = peekNumber();
                if (nextNonWhitespace != 0) {
                    return nextNonWhitespace;
                }
                if (isLiteral(this.buffer[this.pos])) {
                    checkLenient();
                    this.peeked = PEEKED_UNQUOTED;
                    return PEEKED_UNQUOTED;
                }
                throw syntaxError("Expected value");
        }
        if (i == PEEKED_BEGIN_OBJECT || i == PEEKED_END_OBJECT) {
            checkLenient();
            this.pos--;
            this.peeked = PEEKED_NULL;
            return PEEKED_NULL;
        }
        throw syntaxError("Unexpected value");
    }

    private boolean fillBuffer(int i) throws IOException {
        Object obj = this.buffer;
        this.lineStart -= this.pos;
        if (this.limit != this.pos) {
            this.limit -= this.pos;
            System.arraycopy(obj, this.pos, obj, PEEKED_NONE, this.limit);
        } else {
            this.limit = PEEKED_NONE;
        }
        this.pos = PEEKED_NONE;
        do {
            int read = this.in.read(obj, this.limit, obj.length - this.limit);
            if (read == -1) {
                return false;
            }
            this.limit = read + this.limit;
            if (this.lineNumber == 0 && this.lineStart == 0 && this.limit > 0 && obj[PEEKED_NONE] == '\ufeff') {
                this.pos += PEEKED_BEGIN_OBJECT;
                this.lineStart += PEEKED_BEGIN_OBJECT;
                i += PEEKED_BEGIN_OBJECT;
            }
        } while (this.limit < i);
        return true;
    }

    private int getColumnNumber() {
        return (this.pos - this.lineStart) + PEEKED_BEGIN_OBJECT;
    }

    private int getLineNumber() {
        return this.lineNumber + PEEKED_BEGIN_OBJECT;
    }

    private boolean isLiteral(char c) throws IOException {
        switch (c) {
            case PEEKED_DOUBLE_QUOTED /*9*/:
            case PEEKED_UNQUOTED /*10*/:
            case PEEKED_SINGLE_QUOTED_NAME /*12*/:
            case PEEKED_DOUBLE_QUOTED_NAME /*13*/:
            case Place.TYPE_ELECTRONICS_STORE /*32*/:
            case Place.TYPE_GYM /*44*/:
            case Place.TYPE_LOCKSMITH /*58*/:
            case Place.TYPE_TAXI_STAND /*91*/:
            case Place.TYPE_TRAVEL_AGENCY /*93*/:
            case '{':
            case '}':
                break;
            case Place.TYPE_FINANCE /*35*/:
            case Place.TYPE_HEALTH /*47*/:
            case Place.TYPE_LODGING /*59*/:
            case Place.TYPE_MEAL_TAKEAWAY /*61*/:
            case Place.TYPE_TRAIN_STATION /*92*/:
                checkLenient();
                break;
            default:
                return true;
        }
        return false;
    }

    private int nextNonWhitespace(boolean z) throws IOException {
        char[] cArr = this.buffer;
        int i = this.pos;
        int i2 = this.limit;
        while (true) {
            if (i == i2) {
                this.pos = i;
                if (fillBuffer(PEEKED_BEGIN_OBJECT)) {
                    i = this.pos;
                    i2 = this.limit;
                } else if (!z) {
                    return -1;
                } else {
                    throw new EOFException("End of input at line " + getLineNumber() + " column " + getColumnNumber());
                }
            }
            int i3 = i + PEEKED_BEGIN_OBJECT;
            char c = cArr[i];
            if (c == '\n') {
                this.lineNumber += PEEKED_BEGIN_OBJECT;
                this.lineStart = i3;
                i = i3;
            } else if (c == ' ' || c == '\r') {
                i = i3;
            } else if (c == '\t') {
                i = i3;
            } else if (c == IOUtils.DIR_SEPARATOR_UNIX) {
                this.pos = i3;
                if (i3 == i2) {
                    this.pos--;
                    boolean fillBuffer = fillBuffer(PEEKED_END_OBJECT);
                    this.pos += PEEKED_BEGIN_OBJECT;
                    if (!fillBuffer) {
                        return c;
                    }
                }
                checkLenient();
                switch (cArr[this.pos]) {
                    case Place.TYPE_GENERAL_CONTRACTOR /*42*/:
                        this.pos += PEEKED_BEGIN_OBJECT;
                        if (skipTo("*/")) {
                            i = this.pos + PEEKED_END_OBJECT;
                            i2 = this.limit;
                            break;
                        }
                        throw syntaxError("Unterminated comment");
                    case Place.TYPE_HEALTH /*47*/:
                        this.pos += PEEKED_BEGIN_OBJECT;
                        skipToEndOfLine();
                        i = this.pos;
                        i2 = this.limit;
                        break;
                    default:
                        return c;
                }
            } else if (c == '#') {
                this.pos = i3;
                checkLenient();
                skipToEndOfLine();
                i = this.pos;
                i2 = this.limit;
            } else {
                this.pos = i3;
                return c;
            }
        }
    }

    private String nextQuotedValue(char c) throws IOException {
        char[] cArr = this.buffer;
        StringBuilder stringBuilder = new StringBuilder();
        do {
            int i = this.pos;
            int i2 = this.limit;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + PEEKED_BEGIN_OBJECT;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.pos = i4;
                    stringBuilder.append(cArr, i, (i4 - i) - 1);
                    return stringBuilder.toString();
                }
                if (c2 == IOUtils.DIR_SEPARATOR_WINDOWS) {
                    this.pos = i4;
                    stringBuilder.append(cArr, i, (i4 - i) - 1);
                    stringBuilder.append(readEscapeCharacter());
                    i = this.pos;
                    i2 = this.limit;
                    i4 = i;
                } else if (c2 == '\n') {
                    this.lineNumber += PEEKED_BEGIN_OBJECT;
                    this.lineStart = i4;
                }
                i3 = i4;
            }
            stringBuilder.append(cArr, i, i3 - i);
            this.pos = i3;
        } while (fillBuffer(PEEKED_BEGIN_OBJECT));
        throw syntaxError("Unterminated string");
    }

    private String nextUnquotedValue() throws IOException {
        StringBuilder stringBuilder = null;
        int i = PEEKED_NONE;
        while (true) {
            String str;
            if (this.pos + i < this.limit) {
                switch (this.buffer[this.pos + i]) {
                    case PEEKED_DOUBLE_QUOTED /*9*/:
                    case PEEKED_UNQUOTED /*10*/:
                    case PEEKED_SINGLE_QUOTED_NAME /*12*/:
                    case PEEKED_DOUBLE_QUOTED_NAME /*13*/:
                    case Place.TYPE_ELECTRONICS_STORE /*32*/:
                    case Place.TYPE_GYM /*44*/:
                    case Place.TYPE_LOCKSMITH /*58*/:
                    case Place.TYPE_TAXI_STAND /*91*/:
                    case Place.TYPE_TRAVEL_AGENCY /*93*/:
                    case '{':
                    case '}':
                        break;
                    case Place.TYPE_FINANCE /*35*/:
                    case Place.TYPE_HEALTH /*47*/:
                    case Place.TYPE_LODGING /*59*/:
                    case Place.TYPE_MEAL_TAKEAWAY /*61*/:
                    case Place.TYPE_TRAIN_STATION /*92*/:
                        checkLenient();
                        break;
                    default:
                        i += PEEKED_BEGIN_OBJECT;
                        continue;
                }
            } else if (i >= this.buffer.length) {
                if (stringBuilder == null) {
                    stringBuilder = new StringBuilder();
                }
                stringBuilder.append(this.buffer, this.pos, i);
                this.pos = i + this.pos;
                i = !fillBuffer(PEEKED_BEGIN_OBJECT) ? PEEKED_NONE : PEEKED_NONE;
            } else if (fillBuffer(i + PEEKED_BEGIN_OBJECT)) {
            }
            if (stringBuilder == null) {
                str = new String(this.buffer, this.pos, i);
            } else {
                stringBuilder.append(this.buffer, this.pos, i);
                str = stringBuilder.toString();
            }
            this.pos = i + this.pos;
            return str;
        }
    }

    private int peekKeyword() throws IOException {
        String str;
        int i;
        char c = this.buffer[this.pos];
        String str2;
        if (c == 't' || c == 'T') {
            str = "true";
            str2 = "TRUE";
            i = PEEKED_TRUE;
        } else if (c == 'f' || c == 'F') {
            str = "false";
            str2 = "FALSE";
            i = PEEKED_FALSE;
        } else if (c != 'n' && c != 'N') {
            return PEEKED_NONE;
        } else {
            str = "null";
            str2 = "NULL";
            i = PEEKED_NULL;
        }
        int length = str.length();
        int i2 = PEEKED_BEGIN_OBJECT;
        while (i2 < length) {
            if (this.pos + i2 >= this.limit && !fillBuffer(i2 + PEEKED_BEGIN_OBJECT)) {
                return PEEKED_NONE;
            }
            char c2 = this.buffer[this.pos + i2];
            if (c2 != str.charAt(i2) && c2 != r0.charAt(i2)) {
                return PEEKED_NONE;
            }
            i2 += PEEKED_BEGIN_OBJECT;
        }
        if ((this.pos + length < this.limit || fillBuffer(length + PEEKED_BEGIN_OBJECT)) && isLiteral(this.buffer[this.pos + length])) {
            return PEEKED_NONE;
        }
        this.pos += length;
        this.peeked = i;
        return i;
    }

    private int peekNumber() throws IOException {
        char[] cArr = this.buffer;
        int i = this.pos;
        int i2 = this.limit;
        long j = 0;
        Object obj = null;
        int i3 = PEEKED_BEGIN_OBJECT;
        int i4 = PEEKED_NONE;
        int i5 = PEEKED_NONE;
        int i6 = i;
        while (true) {
            int i7;
            int i8;
            Object obj2;
            if (i6 + i5 == i2) {
                if (i5 == cArr.length) {
                    return PEEKED_NONE;
                }
                if (fillBuffer(i5 + PEEKED_BEGIN_OBJECT)) {
                    i6 = this.pos;
                    i2 = this.limit;
                } else if (i4 != PEEKED_END_OBJECT && i3 != 0 && (j != Long.MIN_VALUE || obj != null)) {
                    if (obj == null) {
                        j = -j;
                    }
                    this.peekedLong = j;
                    this.pos += i5;
                    this.peeked = PEEKED_LONG;
                    return PEEKED_LONG;
                } else if (i4 == PEEKED_END_OBJECT && i4 != PEEKED_END_ARRAY && i4 != PEEKED_NULL) {
                    return PEEKED_NONE;
                } else {
                    this.peekedNumberLength = i5;
                    this.peeked = PEEKED_NUMBER;
                    return PEEKED_NUMBER;
                }
            }
            char c = cArr[i6 + i5];
            Object obj3;
            switch (c) {
                case Place.TYPE_GROCERY_OR_SUPERMARKET /*43*/:
                    if (i4 != PEEKED_TRUE) {
                        return PEEKED_NONE;
                    }
                    i7 = i3;
                    obj3 = obj;
                    i8 = PEEKED_FALSE;
                    obj2 = obj3;
                    continue;
                case Place.TYPE_HAIR_CARE /*45*/:
                    if (i4 == 0) {
                        obj2 = PEEKED_BEGIN_OBJECT;
                        i8 = PEEKED_BEGIN_OBJECT;
                        i7 = i3;
                        continue;
                    } else if (i4 == PEEKED_TRUE) {
                        i7 = i3;
                        obj3 = obj;
                        i8 = PEEKED_FALSE;
                        obj2 = obj3;
                        break;
                    } else {
                        return PEEKED_NONE;
                    }
                case Place.TYPE_HARDWARE_STORE /*46*/:
                    if (i4 != PEEKED_END_OBJECT) {
                        return PEEKED_NONE;
                    }
                    i7 = i3;
                    obj3 = obj;
                    i8 = PEEKED_BEGIN_ARRAY;
                    obj2 = obj3;
                    continue;
                case Place.TYPE_PARK /*69*/:
                case 'e':
                    if (i4 != PEEKED_END_OBJECT && i4 != PEEKED_END_ARRAY) {
                        return PEEKED_NONE;
                    }
                    i7 = i3;
                    obj3 = obj;
                    i8 = PEEKED_TRUE;
                    obj2 = obj3;
                    continue;
                default:
                    if (c >= '0' && c <= '9') {
                        if (i4 != PEEKED_BEGIN_OBJECT && i4 != 0) {
                            if (i4 != PEEKED_END_OBJECT) {
                                if (i4 != PEEKED_BEGIN_ARRAY) {
                                    if (i4 != PEEKED_TRUE && i4 != PEEKED_FALSE) {
                                        obj2 = obj;
                                        i7 = i3;
                                        i8 = i4;
                                        break;
                                    }
                                    i7 = i3;
                                    obj3 = obj;
                                    i8 = PEEKED_NULL;
                                    obj2 = obj3;
                                    break;
                                }
                                i7 = i3;
                                obj3 = obj;
                                i8 = PEEKED_END_ARRAY;
                                obj2 = obj3;
                                break;
                            } else if (j != 0) {
                                long j2 = (10 * j) - ((long) (c - 48));
                                int i9 = (j > MIN_INCOMPLETE_INTEGER || (j == MIN_INCOMPLETE_INTEGER && j2 < j)) ? PEEKED_BEGIN_OBJECT : PEEKED_NONE;
                                long j3 = j2;
                                obj2 = obj;
                                i7 = i9 & i3;
                                j = j3;
                                i8 = i4;
                                break;
                            } else {
                                return PEEKED_NONE;
                            }
                        }
                        j = (long) (-(c - 48));
                        i7 = i3;
                        obj3 = obj;
                        i8 = PEEKED_END_OBJECT;
                        obj2 = obj3;
                        continue;
                    } else if (isLiteral(c)) {
                        return PEEKED_NONE;
                    }
                    break;
            }
            if (i4 != PEEKED_END_OBJECT) {
            }
            if (i4 == PEEKED_END_OBJECT) {
            }
            this.peekedNumberLength = i5;
            this.peeked = PEEKED_NUMBER;
            return PEEKED_NUMBER;
            i4 = i8;
            i5 += PEEKED_BEGIN_OBJECT;
            i3 = i7;
            obj = obj2;
        }
    }

    private void push(int i) {
        if (this.stackSize == this.stack.length) {
            Object obj = new int[(this.stackSize * PEEKED_END_OBJECT)];
            System.arraycopy(this.stack, PEEKED_NONE, obj, PEEKED_NONE, this.stackSize);
            this.stack = obj;
        }
        int[] iArr = this.stack;
        int i2 = this.stackSize;
        this.stackSize = i2 + PEEKED_BEGIN_OBJECT;
        iArr[i2] = i;
    }

    private char readEscapeCharacter() throws IOException {
        if (this.pos != this.limit || fillBuffer(PEEKED_BEGIN_OBJECT)) {
            char[] cArr = this.buffer;
            int i = this.pos;
            this.pos = i + PEEKED_BEGIN_OBJECT;
            char c = cArr[i];
            switch (c) {
                case PEEKED_UNQUOTED /*10*/:
                    this.lineNumber += PEEKED_BEGIN_OBJECT;
                    this.lineStart = this.pos;
                    return c;
                case 'b':
                    return '\b';
                case LocationRequest.PRIORITY_BALANCED_POWER_ACCURACY /*102*/:
                    return '\f';
                case 'n':
                    return '\n';
                case 'r':
                    return '\r';
                case 't':
                    return '\t';
                case 'u':
                    if (this.pos + PEEKED_END_ARRAY <= this.limit || fillBuffer(PEEKED_END_ARRAY)) {
                        c = '\u0000';
                        int i2 = this.pos;
                        for (i = i2; i < i2 + PEEKED_END_ARRAY; i += PEEKED_BEGIN_OBJECT) {
                            char c2 = this.buffer[i];
                            c = (char) (c << PEEKED_END_ARRAY);
                            if (c2 >= '0' && c2 <= '9') {
                                c = (char) (c + (c2 - 48));
                            } else if (c2 >= 'a' && c2 <= 'f') {
                                c = (char) (c + ((c2 - 97) + PEEKED_UNQUOTED));
                            } else if (c2 < 'A' || c2 > 'F') {
                                throw new NumberFormatException("\\u" + new String(this.buffer, this.pos, PEEKED_END_ARRAY));
                            } else {
                                c = (char) (c + ((c2 - 65) + PEEKED_UNQUOTED));
                            }
                        }
                        this.pos += PEEKED_END_ARRAY;
                        return c;
                    }
                    throw syntaxError("Unterminated escape sequence");
                default:
                    return c;
            }
        }
        throw syntaxError("Unterminated escape sequence");
    }

    private void skipQuotedValue(char c) throws IOException {
        char[] cArr = this.buffer;
        do {
            int i = this.pos;
            int i2 = this.limit;
            int i3 = i;
            while (i3 < i2) {
                i = i3 + PEEKED_BEGIN_OBJECT;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.pos = i;
                    return;
                }
                if (c2 == IOUtils.DIR_SEPARATOR_WINDOWS) {
                    this.pos = i;
                    readEscapeCharacter();
                    i = this.pos;
                    i2 = this.limit;
                } else if (c2 == '\n') {
                    this.lineNumber += PEEKED_BEGIN_OBJECT;
                    this.lineStart = i;
                }
                i3 = i;
            }
            this.pos = i3;
        } while (fillBuffer(PEEKED_BEGIN_OBJECT));
        throw syntaxError("Unterminated string");
    }

    private boolean skipTo(String str) throws IOException {
        while (true) {
            if (this.pos + str.length() > this.limit && !fillBuffer(str.length())) {
                return false;
            }
            if (this.buffer[this.pos] == '\n') {
                this.lineNumber += PEEKED_BEGIN_OBJECT;
                this.lineStart = this.pos + PEEKED_BEGIN_OBJECT;
            } else {
                int i = PEEKED_NONE;
                while (i < str.length()) {
                    if (this.buffer[this.pos + i] == str.charAt(i)) {
                        i += PEEKED_BEGIN_OBJECT;
                    }
                }
                return true;
            }
            this.pos += PEEKED_BEGIN_OBJECT;
        }
    }

    private void skipToEndOfLine() throws IOException {
        char c;
        do {
            if (this.pos < this.limit || fillBuffer(PEEKED_BEGIN_OBJECT)) {
                char[] cArr = this.buffer;
                int i = this.pos;
                this.pos = i + PEEKED_BEGIN_OBJECT;
                c = cArr[i];
                if (c == '\n') {
                    this.lineNumber += PEEKED_BEGIN_OBJECT;
                    this.lineStart = this.pos;
                    return;
                }
            } else {
                return;
            }
        } while (c != '\r');
    }

    private void skipUnquotedValue() throws IOException {
        do {
            int i = PEEKED_NONE;
            while (this.pos + i < this.limit) {
                switch (this.buffer[this.pos + i]) {
                    case PEEKED_DOUBLE_QUOTED /*9*/:
                    case PEEKED_UNQUOTED /*10*/:
                    case PEEKED_SINGLE_QUOTED_NAME /*12*/:
                    case PEEKED_DOUBLE_QUOTED_NAME /*13*/:
                    case Place.TYPE_ELECTRONICS_STORE /*32*/:
                    case Place.TYPE_GYM /*44*/:
                    case Place.TYPE_LOCKSMITH /*58*/:
                    case Place.TYPE_TAXI_STAND /*91*/:
                    case Place.TYPE_TRAVEL_AGENCY /*93*/:
                    case '{':
                    case '}':
                        break;
                    case Place.TYPE_FINANCE /*35*/:
                    case Place.TYPE_HEALTH /*47*/:
                    case Place.TYPE_LODGING /*59*/:
                    case Place.TYPE_MEAL_TAKEAWAY /*61*/:
                    case Place.TYPE_TRAIN_STATION /*92*/:
                        checkLenient();
                        break;
                    default:
                        i += PEEKED_BEGIN_OBJECT;
                }
                this.pos = i + this.pos;
                return;
            }
            this.pos = i + this.pos;
        } while (fillBuffer(PEEKED_BEGIN_OBJECT));
    }

    private IOException syntaxError(String str) throws IOException {
        throw new MalformedJsonException(str + " at line " + getLineNumber() + " column " + getColumnNumber());
    }

    public void beginArray() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == PEEKED_BEGIN_ARRAY) {
            push(PEEKED_BEGIN_OBJECT);
            this.peeked = PEEKED_NONE;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
    }

    public void beginObject() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == PEEKED_BEGIN_OBJECT) {
            push(PEEKED_BEGIN_ARRAY);
            this.peeked = PEEKED_NONE;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
    }

    public void close() throws IOException {
        this.peeked = PEEKED_NONE;
        this.stack[PEEKED_NONE] = PEEKED_SINGLE_QUOTED;
        this.stackSize = PEEKED_BEGIN_OBJECT;
        this.in.close();
    }

    public void endArray() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == PEEKED_END_ARRAY) {
            this.stackSize--;
            this.peeked = PEEKED_NONE;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
    }

    public void endObject() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == PEEKED_END_OBJECT) {
            this.stackSize--;
            this.peeked = PEEKED_NONE;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
    }

    public boolean hasNext() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        return (i == PEEKED_END_OBJECT || i == PEEKED_END_ARRAY) ? false : true;
    }

    public final boolean isLenient() {
        return this.lenient;
    }

    public boolean nextBoolean() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == PEEKED_TRUE) {
            this.peeked = PEEKED_NONE;
            return true;
        } else if (i == PEEKED_FALSE) {
            this.peeked = PEEKED_NONE;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
        }
    }

    public double nextDouble() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == PEEKED_LONG) {
            this.peeked = PEEKED_NONE;
            return (double) this.peekedLong;
        }
        if (i == PEEKED_NUMBER) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i == PEEKED_SINGLE_QUOTED || i == PEEKED_DOUBLE_QUOTED) {
            this.peekedString = nextQuotedValue(i == PEEKED_SINGLE_QUOTED ? '\'' : '\"');
        } else if (i == PEEKED_UNQUOTED) {
            this.peekedString = nextUnquotedValue();
        } else if (i != PEEKED_BUFFERED) {
            throw new IllegalStateException("Expected a double but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
        }
        this.peeked = PEEKED_BUFFERED;
        double parseDouble = Double.parseDouble(this.peekedString);
        if (this.lenient || !(Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            this.peekedString = null;
            this.peeked = PEEKED_NONE;
            return parseDouble;
        }
        throw new MalformedJsonException("JSON forbids NaN and infinities: " + parseDouble + " at line " + getLineNumber() + " column " + getColumnNumber());
    }

    public int nextInt() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == PEEKED_LONG) {
            i = (int) this.peekedLong;
            if (this.peekedLong != ((long) i)) {
                throw new NumberFormatException("Expected an int but was " + this.peekedLong + " at line " + getLineNumber() + " column " + getColumnNumber());
            }
            this.peeked = PEEKED_NONE;
        } else {
            if (i == PEEKED_NUMBER) {
                this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
                this.pos += this.peekedNumberLength;
            } else if (i == PEEKED_SINGLE_QUOTED || i == PEEKED_DOUBLE_QUOTED) {
                this.peekedString = nextQuotedValue(i == PEEKED_SINGLE_QUOTED ? '\'' : '\"');
                try {
                    i = Integer.parseInt(this.peekedString);
                    this.peeked = PEEKED_NONE;
                } catch (NumberFormatException e) {
                }
            } else {
                throw new IllegalStateException("Expected an int but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
            }
            this.peeked = PEEKED_BUFFERED;
            double parseDouble = Double.parseDouble(this.peekedString);
            i = (int) parseDouble;
            if (((double) i) != parseDouble) {
                throw new NumberFormatException("Expected an int but was " + this.peekedString + " at line " + getLineNumber() + " column " + getColumnNumber());
            }
            this.peekedString = null;
            this.peeked = PEEKED_NONE;
        }
        return i;
    }

    public long nextLong() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == PEEKED_LONG) {
            this.peeked = PEEKED_NONE;
            return this.peekedLong;
        }
        long parseLong;
        if (i == PEEKED_NUMBER) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i == PEEKED_SINGLE_QUOTED || i == PEEKED_DOUBLE_QUOTED) {
            this.peekedString = nextQuotedValue(i == PEEKED_SINGLE_QUOTED ? '\'' : '\"');
            try {
                parseLong = Long.parseLong(this.peekedString);
                this.peeked = PEEKED_NONE;
                return parseLong;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
        }
        this.peeked = PEEKED_BUFFERED;
        double parseDouble = Double.parseDouble(this.peekedString);
        parseLong = (long) parseDouble;
        if (((double) parseLong) != parseDouble) {
            throw new NumberFormatException("Expected a long but was " + this.peekedString + " at line " + getLineNumber() + " column " + getColumnNumber());
        }
        this.peekedString = null;
        this.peeked = PEEKED_NONE;
        return parseLong;
    }

    public String nextName() throws IOException {
        String nextUnquotedValue;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == PEEKED_UNQUOTED_NAME) {
            nextUnquotedValue = nextUnquotedValue();
        } else if (i == PEEKED_SINGLE_QUOTED_NAME) {
            nextUnquotedValue = nextQuotedValue('\'');
        } else if (i == PEEKED_DOUBLE_QUOTED_NAME) {
            nextUnquotedValue = nextQuotedValue('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
        }
        this.peeked = PEEKED_NONE;
        return nextUnquotedValue;
    }

    public void nextNull() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == PEEKED_NULL) {
            this.peeked = PEEKED_NONE;
            return;
        }
        throw new IllegalStateException("Expected null but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
    }

    public String nextString() throws IOException {
        String nextUnquotedValue;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == PEEKED_UNQUOTED) {
            nextUnquotedValue = nextUnquotedValue();
        } else if (i == PEEKED_SINGLE_QUOTED) {
            nextUnquotedValue = nextQuotedValue('\'');
        } else if (i == PEEKED_DOUBLE_QUOTED) {
            nextUnquotedValue = nextQuotedValue('\"');
        } else if (i == PEEKED_BUFFERED) {
            nextUnquotedValue = this.peekedString;
            this.peekedString = null;
        } else if (i == PEEKED_LONG) {
            nextUnquotedValue = Long.toString(this.peekedLong);
        } else if (i == PEEKED_NUMBER) {
            nextUnquotedValue = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            throw new IllegalStateException("Expected a string but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
        }
        this.peeked = PEEKED_NONE;
        return nextUnquotedValue;
    }

    public JsonToken peek() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        switch (i) {
            case PEEKED_BEGIN_OBJECT /*1*/:
                return JsonToken.BEGIN_OBJECT;
            case PEEKED_END_OBJECT /*2*/:
                return JsonToken.END_OBJECT;
            case PEEKED_BEGIN_ARRAY /*3*/:
                return JsonToken.BEGIN_ARRAY;
            case PEEKED_END_ARRAY /*4*/:
                return JsonToken.END_ARRAY;
            case PEEKED_TRUE /*5*/:
            case PEEKED_FALSE /*6*/:
                return JsonToken.BOOLEAN;
            case PEEKED_NULL /*7*/:
                return JsonToken.NULL;
            case PEEKED_SINGLE_QUOTED /*8*/:
            case PEEKED_DOUBLE_QUOTED /*9*/:
            case PEEKED_UNQUOTED /*10*/:
            case PEEKED_BUFFERED /*11*/:
                return JsonToken.STRING;
            case PEEKED_SINGLE_QUOTED_NAME /*12*/:
            case PEEKED_DOUBLE_QUOTED_NAME /*13*/:
            case PEEKED_UNQUOTED_NAME /*14*/:
                return JsonToken.NAME;
            case PEEKED_LONG /*15*/:
            case PEEKED_NUMBER /*16*/:
                return JsonToken.NUMBER;
            case PEEKED_EOF /*17*/:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final void setLenient(boolean z) {
        this.lenient = z;
    }

    public void skipValue() throws IOException {
        int i = PEEKED_NONE;
        do {
            int i2 = this.peeked;
            if (i2 == 0) {
                i2 = doPeek();
            }
            if (i2 == PEEKED_BEGIN_ARRAY) {
                push(PEEKED_BEGIN_OBJECT);
                i += PEEKED_BEGIN_OBJECT;
            } else if (i2 == PEEKED_BEGIN_OBJECT) {
                push(PEEKED_BEGIN_ARRAY);
                i += PEEKED_BEGIN_OBJECT;
            } else if (i2 == PEEKED_END_ARRAY) {
                this.stackSize--;
                i--;
            } else if (i2 == PEEKED_END_OBJECT) {
                this.stackSize--;
                i--;
            } else if (i2 == PEEKED_UNQUOTED_NAME || i2 == PEEKED_UNQUOTED) {
                skipUnquotedValue();
            } else if (i2 == PEEKED_SINGLE_QUOTED || i2 == PEEKED_SINGLE_QUOTED_NAME) {
                skipQuotedValue('\'');
            } else if (i2 == PEEKED_DOUBLE_QUOTED || i2 == PEEKED_DOUBLE_QUOTED_NAME) {
                skipQuotedValue('\"');
            } else if (i2 == PEEKED_NUMBER) {
                this.pos += this.peekedNumberLength;
            }
            this.peeked = PEEKED_NONE;
        } while (i != 0);
    }

    public String toString() {
        return getClass().getSimpleName() + " at line " + getLineNumber() + " column " + getColumnNumber();
    }
}
