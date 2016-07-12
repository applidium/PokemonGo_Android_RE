package com.fasterxml.jackson.core.base;

import android.support.v4.media.TransportMediator;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonGenerator.Feature;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.TreeNode;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.json.DupDetector;
import com.fasterxml.jackson.core.json.JsonWriteContext;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.core.util.VersionUtil;
import java.io.IOException;
import java.io.InputStream;

public abstract class GeneratorBase extends JsonGenerator {
    protected static final int DERIVED_FEATURES_MASK;
    public static final int SURR1_FIRST = 55296;
    public static final int SURR1_LAST = 56319;
    public static final int SURR2_FIRST = 56320;
    public static final int SURR2_LAST = 57343;
    protected final String WRITE_BINARY;
    protected final String WRITE_BOOLEAN;
    protected final String WRITE_NULL;
    protected final String WRITE_NUMBER;
    protected final String WRITE_RAW;
    protected final String WRITE_STRING;
    protected boolean _cfgNumbersAsStrings;
    protected boolean _closed;
    protected int _features;
    protected ObjectCodec _objectCodec;
    protected JsonWriteContext _writeContext;

    static {
        DERIVED_FEATURES_MASK = (Feature.WRITE_NUMBERS_AS_STRINGS.getMask() | Feature.ESCAPE_NON_ASCII.getMask()) | Feature.STRICT_DUPLICATE_DETECTION.getMask();
    }

    protected GeneratorBase(int i, ObjectCodec objectCodec) {
        this.WRITE_BINARY = "write a binary value";
        this.WRITE_BOOLEAN = "write a boolean value";
        this.WRITE_NULL = "write a null";
        this.WRITE_NUMBER = "write a number";
        this.WRITE_RAW = "write a raw (unencoded) value";
        this.WRITE_STRING = "write a string";
        this._features = i;
        this._objectCodec = objectCodec;
        this._writeContext = JsonWriteContext.createRootContext(Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i) ? DupDetector.rootDetector((JsonGenerator) this) : null);
        this._cfgNumbersAsStrings = Feature.WRITE_NUMBERS_AS_STRINGS.enabledIn(i);
    }

    protected GeneratorBase(int i, ObjectCodec objectCodec, JsonWriteContext jsonWriteContext) {
        this.WRITE_BINARY = "write a binary value";
        this.WRITE_BOOLEAN = "write a boolean value";
        this.WRITE_NULL = "write a null";
        this.WRITE_NUMBER = "write a number";
        this.WRITE_RAW = "write a raw (unencoded) value";
        this.WRITE_STRING = "write a string";
        this._features = i;
        this._objectCodec = objectCodec;
        this._writeContext = jsonWriteContext;
        this._cfgNumbersAsStrings = Feature.WRITE_NUMBERS_AS_STRINGS.enabledIn(i);
    }

    protected PrettyPrinter _constructDefaultPrettyPrinter() {
        return new DefaultPrettyPrinter();
    }

    protected final int _decodeSurrogate(int i, int i2) throws IOException {
        if (i2 < SURR2_FIRST || i2 > SURR2_LAST) {
            _reportError("Incomplete surrogate pair: first char 0x" + Integer.toHexString(i) + ", second 0x" + Integer.toHexString(i2));
        }
        return (AccessibilityNodeInfoCompat.ACTION_CUT + ((i - SURR1_FIRST) << 10)) + (i2 - SURR2_FIRST);
    }

    protected abstract void _releaseBuffers();

    protected abstract void _verifyValueWrite(String str) throws IOException;

    public void close() throws IOException {
        this._closed = true;
    }

    public JsonGenerator disable(Feature feature) {
        int mask = feature.getMask();
        this._features &= mask ^ -1;
        if ((mask & DERIVED_FEATURES_MASK) != 0) {
            if (feature == Feature.WRITE_NUMBERS_AS_STRINGS) {
                this._cfgNumbersAsStrings = false;
            } else if (feature == Feature.ESCAPE_NON_ASCII) {
                setHighestNonEscapedChar(DERIVED_FEATURES_MASK);
            } else if (feature == Feature.STRICT_DUPLICATE_DETECTION) {
                this._writeContext = this._writeContext.withDupDetector(null);
            }
        }
        return this;
    }

    public JsonGenerator enable(Feature feature) {
        int mask = feature.getMask();
        this._features |= mask;
        if ((mask & DERIVED_FEATURES_MASK) != 0) {
            if (feature == Feature.WRITE_NUMBERS_AS_STRINGS) {
                this._cfgNumbersAsStrings = true;
            } else if (feature == Feature.ESCAPE_NON_ASCII) {
                setHighestNonEscapedChar(TransportMediator.KEYCODE_MEDIA_PAUSE);
            } else if (feature == Feature.STRICT_DUPLICATE_DETECTION && this._writeContext.getDupDetector() == null) {
                this._writeContext = this._writeContext.withDupDetector(DupDetector.rootDetector((JsonGenerator) this));
            }
        }
        return this;
    }

    public abstract void flush() throws IOException;

    public final ObjectCodec getCodec() {
        return this._objectCodec;
    }

    public Object getCurrentValue() {
        return this._writeContext.getCurrentValue();
    }

    public int getFeatureMask() {
        return this._features;
    }

    public final JsonWriteContext getOutputContext() {
        return this._writeContext;
    }

    public boolean isClosed() {
        return this._closed;
    }

    public final boolean isEnabled(Feature feature) {
        return (this._features & feature.getMask()) != 0;
    }

    public JsonGenerator setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
        return this;
    }

    public void setCurrentValue(Object obj) {
        this._writeContext.setCurrentValue(obj);
    }

    public JsonGenerator setFeatureMask(int i) {
        int i2 = this._features ^ i;
        this._features = i;
        if ((DERIVED_FEATURES_MASK & i2) != 0) {
            this._cfgNumbersAsStrings = Feature.WRITE_NUMBERS_AS_STRINGS.enabledIn(i);
            if (Feature.ESCAPE_NON_ASCII.enabledIn(i2)) {
                if (Feature.ESCAPE_NON_ASCII.enabledIn(i)) {
                    setHighestNonEscapedChar(TransportMediator.KEYCODE_MEDIA_PAUSE);
                } else {
                    setHighestNonEscapedChar(DERIVED_FEATURES_MASK);
                }
            }
            if (Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i2)) {
                if (!Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i)) {
                    this._writeContext = this._writeContext.withDupDetector(null);
                } else if (this._writeContext.getDupDetector() == null) {
                    this._writeContext = this._writeContext.withDupDetector(DupDetector.rootDetector((JsonGenerator) this));
                }
            }
        }
        return this;
    }

    public JsonGenerator useDefaultPrettyPrinter() {
        return getPrettyPrinter() != null ? this : setPrettyPrinter(_constructDefaultPrettyPrinter());
    }

    public Version version() {
        return VersionUtil.versionFor(getClass());
    }

    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i) throws IOException {
        _reportUnsupportedOperation();
        return DERIVED_FEATURES_MASK;
    }

    public void writeFieldName(SerializableString serializableString) throws IOException {
        writeFieldName(serializableString.getValue());
    }

    public void writeObject(Object obj) throws IOException {
        if (obj == null) {
            writeNull();
        } else if (this._objectCodec != null) {
            this._objectCodec.writeValue(this, obj);
        } else {
            _writeSimpleObject(obj);
        }
    }

    public void writeRawValue(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write raw value");
        writeRaw(serializableString);
    }

    public void writeRawValue(String str) throws IOException {
        _verifyValueWrite("write raw value");
        writeRaw(str);
    }

    public void writeRawValue(String str, int i, int i2) throws IOException {
        _verifyValueWrite("write raw value");
        writeRaw(str, i, i2);
    }

    public void writeRawValue(char[] cArr, int i, int i2) throws IOException {
        _verifyValueWrite("write raw value");
        writeRaw(cArr, i, i2);
    }

    public void writeString(SerializableString serializableString) throws IOException {
        writeString(serializableString.getValue());
    }

    public void writeTree(TreeNode treeNode) throws IOException {
        if (treeNode == null) {
            writeNull();
        } else if (this._objectCodec == null) {
            throw new IllegalStateException("No ObjectCodec defined");
        } else {
            this._objectCodec.writeValue(this, treeNode);
        }
    }
}
