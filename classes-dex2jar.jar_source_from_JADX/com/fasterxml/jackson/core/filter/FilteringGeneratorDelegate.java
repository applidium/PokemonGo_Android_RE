package com.fasterxml.jackson.core.filter;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.util.JsonGeneratorDelegate;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

public class FilteringGeneratorDelegate extends JsonGeneratorDelegate {
    protected boolean _allowMultipleMatches;
    protected TokenFilterContext _filterContext;
    @Deprecated
    protected boolean _includeImmediateParent;
    protected boolean _includePath;
    protected TokenFilter _itemFilter;
    protected int _matchCount;
    protected TokenFilter rootFilter;

    public FilteringGeneratorDelegate(JsonGenerator jsonGenerator, TokenFilter tokenFilter, boolean z, boolean z2) {
        super(jsonGenerator, false);
        this._includeImmediateParent = false;
        this.rootFilter = tokenFilter;
        this._itemFilter = tokenFilter;
        this._filterContext = TokenFilterContext.createRootContext(tokenFilter);
        this._includePath = z;
        this._allowMultipleMatches = z2;
    }

    protected boolean _checkBinaryWrite() throws IOException {
        if (this._itemFilter != null) {
            if (this._itemFilter == TokenFilter.INCLUDE_ALL) {
                return true;
            }
            if (this._itemFilter.includeBinary()) {
                _checkParentPath();
                return true;
            }
        }
        return false;
    }

    protected void _checkParentPath() throws IOException {
        this._matchCount++;
        if (this._includePath) {
            this._filterContext.writePath(this.delegate);
        }
        if (!this._allowMultipleMatches) {
            this._filterContext.skipParentChecks();
        }
    }

    protected void _checkPropertyParentPath() throws IOException {
        this._matchCount++;
        if (this._includePath) {
            this._filterContext.writePath(this.delegate);
        } else if (this._includeImmediateParent) {
            this._filterContext.writeImmediatePath(this.delegate);
        }
        if (!this._allowMultipleMatches) {
            this._filterContext.skipParentChecks();
        }
    }

    protected boolean _checkRawValueWrite() throws IOException {
        if (this._itemFilter != null) {
            if (this._itemFilter == TokenFilter.INCLUDE_ALL) {
                return true;
            }
            if (this._itemFilter.includeRawValue()) {
                _checkParentPath();
                return true;
            }
        }
        return false;
    }

    public TokenFilter getFilter() {
        return this.rootFilter;
    }

    public JsonStreamContext getFilterContext() {
        return this._filterContext;
    }

    public int getMatchCount() {
        return this._matchCount;
    }

    public JsonStreamContext getOutputContext() {
        return this._filterContext;
    }

    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i) throws IOException {
        return _checkBinaryWrite() ? this.delegate.writeBinary(base64Variant, inputStream, i) : -1;
    }

    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException {
        if (_checkBinaryWrite()) {
            this.delegate.writeBinary(base64Variant, bArr, i, i2);
        }
    }

    public void writeBoolean(boolean z) throws IOException {
        if (this._itemFilter != null) {
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
                if (checkValue == null) {
                    return;
                }
                if (checkValue == TokenFilter.INCLUDE_ALL || checkValue.includeBoolean(z)) {
                    _checkParentPath();
                } else {
                    return;
                }
            }
            this.delegate.writeBoolean(z);
        }
    }

    public void writeEndArray() throws IOException {
        this._filterContext = this._filterContext.closeArray(this.delegate);
        if (this._filterContext != null) {
            this._itemFilter = this._filterContext.getFilter();
        }
    }

    public void writeEndObject() throws IOException {
        this._filterContext = this._filterContext.closeObject(this.delegate);
        if (this._filterContext != null) {
            this._itemFilter = this._filterContext.getFilter();
        }
    }

    public void writeFieldName(SerializableString serializableString) throws IOException {
        TokenFilter fieldName = this._filterContext.setFieldName(serializableString.getValue());
        if (fieldName == null) {
            this._itemFilter = null;
        } else if (fieldName == TokenFilter.INCLUDE_ALL) {
            this._itemFilter = fieldName;
            this.delegate.writeFieldName(serializableString);
        } else {
            fieldName = fieldName.includeProperty(serializableString.getValue());
            this._itemFilter = fieldName;
            if (fieldName == TokenFilter.INCLUDE_ALL) {
                _checkPropertyParentPath();
            }
        }
    }

    public void writeFieldName(String str) throws IOException {
        TokenFilter fieldName = this._filterContext.setFieldName(str);
        if (fieldName == null) {
            this._itemFilter = null;
        } else if (fieldName == TokenFilter.INCLUDE_ALL) {
            this._itemFilter = fieldName;
            this.delegate.writeFieldName(str);
        } else {
            fieldName = fieldName.includeProperty(str);
            this._itemFilter = fieldName;
            if (fieldName == TokenFilter.INCLUDE_ALL) {
                _checkPropertyParentPath();
            }
        }
    }

    public void writeNull() throws IOException {
        if (this._itemFilter != null) {
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
                if (checkValue == null) {
                    return;
                }
                if (checkValue == TokenFilter.INCLUDE_ALL || checkValue.includeNull()) {
                    _checkParentPath();
                } else {
                    return;
                }
            }
            this.delegate.writeNull();
        }
    }

    public void writeNumber(double d) throws IOException {
        if (this._itemFilter != null) {
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
                if (checkValue == null) {
                    return;
                }
                if (checkValue == TokenFilter.INCLUDE_ALL || checkValue.includeNumber(d)) {
                    _checkParentPath();
                } else {
                    return;
                }
            }
            this.delegate.writeNumber(d);
        }
    }

    public void writeNumber(float f) throws IOException {
        if (this._itemFilter != null) {
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
                if (checkValue == null) {
                    return;
                }
                if (checkValue == TokenFilter.INCLUDE_ALL || checkValue.includeNumber(f)) {
                    _checkParentPath();
                } else {
                    return;
                }
            }
            this.delegate.writeNumber(f);
        }
    }

    public void writeNumber(int i) throws IOException {
        if (this._itemFilter != null) {
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
                if (checkValue == null) {
                    return;
                }
                if (checkValue == TokenFilter.INCLUDE_ALL || checkValue.includeNumber(i)) {
                    _checkParentPath();
                } else {
                    return;
                }
            }
            this.delegate.writeNumber(i);
        }
    }

    public void writeNumber(long j) throws IOException {
        if (this._itemFilter != null) {
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
                if (checkValue == null) {
                    return;
                }
                if (checkValue == TokenFilter.INCLUDE_ALL || checkValue.includeNumber(j)) {
                    _checkParentPath();
                } else {
                    return;
                }
            }
            this.delegate.writeNumber(j);
        }
    }

    public void writeNumber(String str) throws IOException, UnsupportedOperationException {
        if (this._itemFilter != null) {
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
                if (checkValue == null) {
                    return;
                }
                if (checkValue == TokenFilter.INCLUDE_ALL || checkValue.includeRawValue()) {
                    _checkParentPath();
                } else {
                    return;
                }
            }
            this.delegate.writeNumber(str);
        }
    }

    public void writeNumber(BigDecimal bigDecimal) throws IOException {
        if (this._itemFilter != null) {
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
                if (checkValue == null) {
                    return;
                }
                if (checkValue == TokenFilter.INCLUDE_ALL || checkValue.includeNumber(bigDecimal)) {
                    _checkParentPath();
                } else {
                    return;
                }
            }
            this.delegate.writeNumber(bigDecimal);
        }
    }

    public void writeNumber(BigInteger bigInteger) throws IOException {
        if (this._itemFilter != null) {
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
                if (checkValue == null) {
                    return;
                }
                if (checkValue == TokenFilter.INCLUDE_ALL || checkValue.includeNumber(bigInteger)) {
                    _checkParentPath();
                } else {
                    return;
                }
            }
            this.delegate.writeNumber(bigInteger);
        }
    }

    public void writeNumber(short s) throws IOException {
        if (this._itemFilter != null) {
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
                if (checkValue == null) {
                    return;
                }
                if (checkValue == TokenFilter.INCLUDE_ALL || checkValue.includeNumber((int) s)) {
                    _checkParentPath();
                } else {
                    return;
                }
            }
            this.delegate.writeNumber(s);
        }
    }

    public void writeObjectId(Object obj) throws IOException {
        if (this._itemFilter != null) {
            this.delegate.writeObjectId(obj);
        }
    }

    public void writeObjectRef(Object obj) throws IOException {
        if (this._itemFilter != null) {
            this.delegate.writeObjectRef(obj);
        }
    }

    public void writeOmittedField(String str) throws IOException {
        if (this._itemFilter != null) {
            this.delegate.writeOmittedField(str);
        }
    }

    public void writeRaw(char c) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRaw(c);
        }
    }

    public void writeRaw(SerializableString serializableString) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRaw(serializableString);
        }
    }

    public void writeRaw(String str) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRaw(str);
        }
    }

    public void writeRaw(String str, int i, int i2) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRaw(str);
        }
    }

    public void writeRaw(char[] cArr, int i, int i2) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRaw(cArr, i, i2);
        }
    }

    public void writeRawUTF8String(byte[] bArr, int i, int i2) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRawUTF8String(bArr, i, i2);
        }
    }

    public void writeRawValue(String str) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRaw(str);
        }
    }

    public void writeRawValue(String str, int i, int i2) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRaw(str, i, i2);
        }
    }

    public void writeRawValue(char[] cArr, int i, int i2) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRaw(cArr, i, i2);
        }
    }

    public void writeStartArray() throws IOException {
        if (this._itemFilter == null) {
            this._filterContext = this._filterContext.createChildArrayContext(null, false);
        } else if (this._itemFilter == TokenFilter.INCLUDE_ALL) {
            this._filterContext = this._filterContext.createChildArrayContext(this._itemFilter, true);
            this.delegate.writeStartArray();
        } else {
            this._itemFilter = this._filterContext.checkValue(this._itemFilter);
            if (this._itemFilter == null) {
                this._filterContext = this._filterContext.createChildArrayContext(null, false);
                return;
            }
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                this._itemFilter = this._itemFilter.filterStartArray();
            }
            if (this._itemFilter == TokenFilter.INCLUDE_ALL) {
                _checkParentPath();
                this._filterContext = this._filterContext.createChildArrayContext(this._itemFilter, true);
                this.delegate.writeStartArray();
                return;
            }
            this._filterContext = this._filterContext.createChildArrayContext(this._itemFilter, false);
        }
    }

    public void writeStartArray(int i) throws IOException {
        if (this._itemFilter == null) {
            this._filterContext = this._filterContext.createChildArrayContext(null, false);
        } else if (this._itemFilter == TokenFilter.INCLUDE_ALL) {
            this._filterContext = this._filterContext.createChildArrayContext(this._itemFilter, true);
            this.delegate.writeStartArray(i);
        } else {
            this._itemFilter = this._filterContext.checkValue(this._itemFilter);
            if (this._itemFilter == null) {
                this._filterContext = this._filterContext.createChildArrayContext(null, false);
                return;
            }
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                this._itemFilter = this._itemFilter.filterStartArray();
            }
            if (this._itemFilter == TokenFilter.INCLUDE_ALL) {
                _checkParentPath();
                this._filterContext = this._filterContext.createChildArrayContext(this._itemFilter, true);
                this.delegate.writeStartArray(i);
                return;
            }
            this._filterContext = this._filterContext.createChildArrayContext(this._itemFilter, false);
        }
    }

    public void writeStartObject() throws IOException {
        if (this._itemFilter == null) {
            this._filterContext = this._filterContext.createChildObjectContext(this._itemFilter, false);
        } else if (this._itemFilter == TokenFilter.INCLUDE_ALL) {
            this._filterContext = this._filterContext.createChildObjectContext(this._itemFilter, true);
            this.delegate.writeStartObject();
        } else {
            TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
            if (checkValue != null) {
                if (checkValue != TokenFilter.INCLUDE_ALL) {
                    checkValue = checkValue.filterStartObject();
                }
                if (checkValue == TokenFilter.INCLUDE_ALL) {
                    _checkParentPath();
                    this._filterContext = this._filterContext.createChildObjectContext(checkValue, true);
                    this.delegate.writeStartObject();
                    return;
                }
                this._filterContext = this._filterContext.createChildObjectContext(checkValue, false);
            }
        }
    }

    public void writeString(SerializableString serializableString) throws IOException {
        if (this._itemFilter != null) {
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
                if (checkValue == null) {
                    return;
                }
                if (checkValue == TokenFilter.INCLUDE_ALL || checkValue.includeString(serializableString.getValue())) {
                    _checkParentPath();
                } else {
                    return;
                }
            }
            this.delegate.writeString(serializableString);
        }
    }

    public void writeString(String str) throws IOException {
        if (this._itemFilter != null) {
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
                if (checkValue == null) {
                    return;
                }
                if (checkValue == TokenFilter.INCLUDE_ALL || checkValue.includeString(str)) {
                    _checkParentPath();
                } else {
                    return;
                }
            }
            this.delegate.writeString(str);
        }
    }

    public void writeString(char[] cArr, int i, int i2) throws IOException {
        if (this._itemFilter != null) {
            if (this._itemFilter != TokenFilter.INCLUDE_ALL) {
                String str = new String(cArr, i, i2);
                TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
                if (checkValue == null) {
                    return;
                }
                if (checkValue == TokenFilter.INCLUDE_ALL || checkValue.includeString(str)) {
                    _checkParentPath();
                } else {
                    return;
                }
            }
            this.delegate.writeString(cArr, i, i2);
        }
    }

    public void writeTypeId(Object obj) throws IOException {
        if (this._itemFilter != null) {
            this.delegate.writeTypeId(obj);
        }
    }

    public void writeUTF8String(byte[] bArr, int i, int i2) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRawUTF8String(bArr, i, i2);
        }
    }
}
