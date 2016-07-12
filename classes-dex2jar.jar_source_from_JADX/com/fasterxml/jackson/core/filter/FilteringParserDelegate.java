package com.fasterxml.jackson.core.filter;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.util.JsonParserDelegate;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import spacemadness.com.lunarconsole.C1401R;

public class FilteringParserDelegate extends JsonParserDelegate {
    protected boolean _allowMultipleMatches;
    protected JsonToken _currToken;
    protected TokenFilterContext _exposedContext;
    protected TokenFilterContext _headContext;
    @Deprecated
    protected boolean _includeImmediateParent;
    protected boolean _includePath;
    protected TokenFilter _itemFilter;
    protected JsonToken _lastClearedToken;
    protected int _matchCount;
    protected TokenFilter rootFilter;

    public FilteringParserDelegate(JsonParser jsonParser, TokenFilter tokenFilter, boolean z, boolean z2) {
        super(jsonParser);
        this._includeImmediateParent = false;
        this.rootFilter = tokenFilter;
        this._itemFilter = tokenFilter;
        this._headContext = TokenFilterContext.createRootContext(tokenFilter);
        this._includePath = z;
        this._allowMultipleMatches = z2;
    }

    private JsonToken _nextBuffered(TokenFilterContext tokenFilterContext) throws IOException {
        this._exposedContext = tokenFilterContext;
        JsonToken nextTokenToRead = tokenFilterContext.nextTokenToRead();
        if (nextTokenToRead == null) {
            while (tokenFilterContext != this._headContext) {
                tokenFilterContext = this._exposedContext.findChildOf(tokenFilterContext);
                this._exposedContext = tokenFilterContext;
                if (tokenFilterContext == null) {
                    throw _constructError("Unexpected problem: chain of filtered context broken");
                }
                nextTokenToRead = this._exposedContext.nextTokenToRead();
                if (nextTokenToRead != null) {
                }
            }
            throw _constructError("Internal error: failed to locate expected buffered tokens");
        }
        return nextTokenToRead;
    }

    protected JsonStreamContext _filterContext() {
        return this._exposedContext != null ? this._exposedContext : this._headContext;
    }

    protected final JsonToken _nextToken2() throws IOException {
        while (true) {
            JsonToken nextToken = this.delegate.nextToken();
            if (nextToken == null) {
                this._currToken = nextToken;
            } else {
                TokenFilter tokenFilter;
                TokenFilter filter;
                switch (nextToken.id()) {
                    case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                        tokenFilter = this._itemFilter;
                        if (tokenFilter == TokenFilter.INCLUDE_ALL) {
                            this._headContext = this._headContext.createChildObjectContext(tokenFilter, true);
                            this._currToken = nextToken;
                            break;
                        } else if (tokenFilter == null) {
                            this.delegate.skipChildren();
                            continue;
                        } else {
                            tokenFilter = this._headContext.checkValue(tokenFilter);
                            if (tokenFilter == null) {
                                this.delegate.skipChildren();
                                break;
                            }
                            if (tokenFilter != TokenFilter.INCLUDE_ALL) {
                                tokenFilter = tokenFilter.filterStartObject();
                            }
                            this._itemFilter = tokenFilter;
                            if (tokenFilter == TokenFilter.INCLUDE_ALL) {
                                this._headContext = this._headContext.createChildObjectContext(tokenFilter, true);
                                this._currToken = nextToken;
                                break;
                            }
                            this._headContext = this._headContext.createChildObjectContext(tokenFilter, false);
                            if (this._includePath) {
                                nextToken = _nextTokenWithBuffering(this._headContext);
                                if (nextToken == null) {
                                    break;
                                }
                                this._currToken = nextToken;
                                break;
                            }
                            continue;
                        }
                    case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    case Place.TYPE_AQUARIUM /*4*/:
                        boolean isStartHandled = this._headContext.isStartHandled();
                        filter = this._headContext.getFilter();
                        if (!(filter == null || filter == TokenFilter.INCLUDE_ALL)) {
                            filter.filterFinishArray();
                        }
                        this._headContext = this._headContext.getParent();
                        this._itemFilter = this._headContext.getFilter();
                        if (isStartHandled) {
                            this._currToken = nextToken;
                            break;
                        }
                        continue;
                    case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                        tokenFilter = this._itemFilter;
                        if (tokenFilter == TokenFilter.INCLUDE_ALL) {
                            this._headContext = this._headContext.createChildArrayContext(tokenFilter, true);
                            this._currToken = nextToken;
                            break;
                        } else if (tokenFilter == null) {
                            this.delegate.skipChildren();
                            continue;
                        } else {
                            tokenFilter = this._headContext.checkValue(tokenFilter);
                            if (tokenFilter == null) {
                                this.delegate.skipChildren();
                                break;
                            }
                            if (tokenFilter != TokenFilter.INCLUDE_ALL) {
                                tokenFilter = tokenFilter.filterStartArray();
                            }
                            this._itemFilter = tokenFilter;
                            if (tokenFilter == TokenFilter.INCLUDE_ALL) {
                                this._headContext = this._headContext.createChildArrayContext(tokenFilter, true);
                                this._currToken = nextToken;
                                break;
                            }
                            this._headContext = this._headContext.createChildArrayContext(tokenFilter, false);
                            if (this._includePath) {
                                nextToken = _nextTokenWithBuffering(this._headContext);
                                if (nextToken == null) {
                                    break;
                                }
                                this._currToken = nextToken;
                                break;
                            }
                            continue;
                        }
                    case Place.TYPE_ART_GALLERY /*5*/:
                        String currentName = this.delegate.getCurrentName();
                        filter = this._headContext.setFieldName(currentName);
                        if (filter == TokenFilter.INCLUDE_ALL) {
                            this._itemFilter = filter;
                            this._currToken = nextToken;
                            break;
                        } else if (filter == null) {
                            this.delegate.nextToken();
                            this.delegate.skipChildren();
                            continue;
                        } else {
                            tokenFilter = filter.includeProperty(currentName);
                            if (tokenFilter == null) {
                                this.delegate.nextToken();
                                this.delegate.skipChildren();
                                break;
                            }
                            this._itemFilter = tokenFilter;
                            if (tokenFilter == TokenFilter.INCLUDE_ALL) {
                                if (!this._includePath) {
                                    break;
                                }
                                this._currToken = nextToken;
                                break;
                            } else if (this._includePath) {
                                nextToken = _nextTokenWithBuffering(this._headContext);
                                if (nextToken == null) {
                                    break;
                                }
                                this._currToken = nextToken;
                                break;
                            } else {
                                continue;
                            }
                        }
                    default:
                        tokenFilter = this._itemFilter;
                        if (tokenFilter == TokenFilter.INCLUDE_ALL) {
                            this._currToken = nextToken;
                            break;
                        } else if (tokenFilter != null) {
                            tokenFilter = this._headContext.checkValue(tokenFilter);
                            if (tokenFilter == TokenFilter.INCLUDE_ALL || (tokenFilter != null && tokenFilter.includeValue(this.delegate))) {
                                this._currToken = nextToken;
                                break;
                            }
                        } else {
                            continue;
                        }
                }
            }
            return nextToken;
        }
    }

    protected final JsonToken _nextTokenWithBuffering(TokenFilterContext tokenFilterContext) throws IOException {
        while (true) {
            JsonToken nextToken = this.delegate.nextToken();
            if (nextToken == null) {
                return nextToken;
            }
            TokenFilter tokenFilter;
            TokenFilter checkValue;
            switch (nextToken.id()) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    tokenFilter = this._itemFilter;
                    if (tokenFilter != TokenFilter.INCLUDE_ALL) {
                        if (tokenFilter != null) {
                            checkValue = this._headContext.checkValue(tokenFilter);
                            if (checkValue != null) {
                                if (checkValue != TokenFilter.INCLUDE_ALL) {
                                    checkValue = checkValue.filterStartObject();
                                }
                                this._itemFilter = checkValue;
                                if (checkValue != TokenFilter.INCLUDE_ALL) {
                                    this._headContext = this._headContext.createChildObjectContext(checkValue, false);
                                    break;
                                }
                                this._headContext = this._headContext.createChildObjectContext(checkValue, true);
                                return _nextBuffered(tokenFilterContext);
                            }
                            this.delegate.skipChildren();
                            break;
                        }
                        this.delegate.skipChildren();
                        break;
                    }
                    this._headContext = this._headContext.createChildObjectContext(tokenFilter, true);
                    return nextToken;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                case Place.TYPE_AQUARIUM /*4*/:
                    tokenFilter = this._headContext.getFilter();
                    if (!(tokenFilter == null || tokenFilter == TokenFilter.INCLUDE_ALL)) {
                        tokenFilter.filterFinishArray();
                    }
                    boolean z = this._headContext == tokenFilterContext;
                    boolean z2 = z && this._headContext.isStartHandled();
                    this._headContext = this._headContext.getParent();
                    this._itemFilter = this._headContext.getFilter();
                    if (!z2) {
                        if (!z && this._headContext != tokenFilterContext) {
                            break;
                        }
                        return null;
                    }
                    return nextToken;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    checkValue = this._headContext.checkValue(this._itemFilter);
                    if (checkValue != null) {
                        if (checkValue != TokenFilter.INCLUDE_ALL) {
                            checkValue = checkValue.filterStartArray();
                        }
                        this._itemFilter = checkValue;
                        if (checkValue != TokenFilter.INCLUDE_ALL) {
                            this._headContext = this._headContext.createChildArrayContext(checkValue, false);
                            break;
                        }
                        this._headContext = this._headContext.createChildArrayContext(checkValue, true);
                        return _nextBuffered(tokenFilterContext);
                    }
                    this.delegate.skipChildren();
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    String currentName = this.delegate.getCurrentName();
                    tokenFilter = this._headContext.setFieldName(currentName);
                    if (tokenFilter != TokenFilter.INCLUDE_ALL) {
                        if (tokenFilter != null) {
                            checkValue = tokenFilter.includeProperty(currentName);
                            if (checkValue != null) {
                                this._itemFilter = checkValue;
                                if (checkValue != TokenFilter.INCLUDE_ALL) {
                                    break;
                                }
                                return _nextBuffered(tokenFilterContext);
                            }
                            this.delegate.nextToken();
                            this.delegate.skipChildren();
                            break;
                        }
                        this.delegate.nextToken();
                        this.delegate.skipChildren();
                        break;
                    }
                    this._itemFilter = tokenFilter;
                    return _nextBuffered(tokenFilterContext);
                default:
                    checkValue = this._itemFilter;
                    if (checkValue == TokenFilter.INCLUDE_ALL) {
                        return _nextBuffered(tokenFilterContext);
                    }
                    if (checkValue != null) {
                        checkValue = this._headContext.checkValue(checkValue);
                        if (checkValue == TokenFilter.INCLUDE_ALL || (checkValue != null && checkValue.includeValue(this.delegate))) {
                            return _nextBuffered(tokenFilterContext);
                        }
                    }
                    continue;
            }
        }
    }

    public void clearCurrentToken() {
        if (this._currToken != null) {
            this._lastClearedToken = this._currToken;
            this._currToken = null;
        }
    }

    public BigInteger getBigIntegerValue() throws IOException {
        return this.delegate.getBigIntegerValue();
    }

    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException {
        return this.delegate.getBinaryValue(base64Variant);
    }

    public boolean getBooleanValue() throws IOException {
        return this.delegate.getBooleanValue();
    }

    public byte getByteValue() throws IOException {
        return this.delegate.getByteValue();
    }

    public JsonLocation getCurrentLocation() {
        return this.delegate.getCurrentLocation();
    }

    public String getCurrentName() throws IOException {
        JsonStreamContext _filterContext = _filterContext();
        if (this._currToken != JsonToken.START_OBJECT && this._currToken != JsonToken.START_ARRAY) {
            return _filterContext.getCurrentName();
        }
        _filterContext = _filterContext.getParent();
        return _filterContext == null ? null : _filterContext.getCurrentName();
    }

    public JsonToken getCurrentToken() {
        return this._currToken;
    }

    public final int getCurrentTokenId() {
        JsonToken jsonToken = this._currToken;
        return jsonToken == null ? 0 : jsonToken.id();
    }

    public BigDecimal getDecimalValue() throws IOException {
        return this.delegate.getDecimalValue();
    }

    public double getDoubleValue() throws IOException {
        return this.delegate.getDoubleValue();
    }

    public Object getEmbeddedObject() throws IOException {
        return this.delegate.getEmbeddedObject();
    }

    public TokenFilter getFilter() {
        return this.rootFilter;
    }

    public float getFloatValue() throws IOException {
        return this.delegate.getFloatValue();
    }

    public int getIntValue() throws IOException {
        return this.delegate.getIntValue();
    }

    public JsonToken getLastClearedToken() {
        return this._lastClearedToken;
    }

    public long getLongValue() throws IOException {
        return this.delegate.getLongValue();
    }

    public int getMatchCount() {
        return this._matchCount;
    }

    public NumberType getNumberType() throws IOException {
        return this.delegate.getNumberType();
    }

    public Number getNumberValue() throws IOException {
        return this.delegate.getNumberValue();
    }

    public JsonStreamContext getParsingContext() {
        return _filterContext();
    }

    public short getShortValue() throws IOException {
        return this.delegate.getShortValue();
    }

    public String getText() throws IOException {
        return this.delegate.getText();
    }

    public char[] getTextCharacters() throws IOException {
        return this.delegate.getTextCharacters();
    }

    public int getTextLength() throws IOException {
        return this.delegate.getTextLength();
    }

    public int getTextOffset() throws IOException {
        return this.delegate.getTextOffset();
    }

    public JsonLocation getTokenLocation() {
        return this.delegate.getTokenLocation();
    }

    public boolean getValueAsBoolean() throws IOException {
        return this.delegate.getValueAsBoolean();
    }

    public boolean getValueAsBoolean(boolean z) throws IOException {
        return this.delegate.getValueAsBoolean(z);
    }

    public double getValueAsDouble() throws IOException {
        return this.delegate.getValueAsDouble();
    }

    public double getValueAsDouble(double d) throws IOException {
        return this.delegate.getValueAsDouble(d);
    }

    public int getValueAsInt() throws IOException {
        return this.delegate.getValueAsInt();
    }

    public int getValueAsInt(int i) throws IOException {
        return this.delegate.getValueAsInt(i);
    }

    public long getValueAsLong() throws IOException {
        return this.delegate.getValueAsLong();
    }

    public long getValueAsLong(long j) throws IOException {
        return this.delegate.getValueAsLong(j);
    }

    public String getValueAsString() throws IOException {
        return this.delegate.getValueAsString();
    }

    public String getValueAsString(String str) throws IOException {
        return this.delegate.getValueAsString(str);
    }

    public boolean hasCurrentToken() {
        return this._currToken != null;
    }

    public boolean hasTextCharacters() {
        return this.delegate.hasTextCharacters();
    }

    public final boolean hasToken(JsonToken jsonToken) {
        return this._currToken == jsonToken;
    }

    public boolean hasTokenId(int i) {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == null) {
            if (i != 0) {
                return false;
            }
        } else if (jsonToken.id() != i) {
            return false;
        }
        return true;
    }

    public boolean isExpectedStartArrayToken() {
        return this._currToken == JsonToken.START_ARRAY;
    }

    public boolean isExpectedStartObjectToken() {
        return this._currToken == JsonToken.START_OBJECT;
    }

    public JsonToken nextToken() throws IOException {
        JsonToken currentToken;
        TokenFilterContext tokenFilterContext = this._exposedContext;
        if (tokenFilterContext != null) {
            do {
                JsonToken nextTokenToRead = tokenFilterContext.nextTokenToRead();
                if (nextTokenToRead != null) {
                    this._currToken = nextTokenToRead;
                    return nextTokenToRead;
                } else if (tokenFilterContext == this._headContext) {
                    this._exposedContext = null;
                    if (tokenFilterContext.inArray()) {
                        currentToken = this.delegate.getCurrentToken();
                        this._currToken = currentToken;
                        return currentToken;
                    }
                } else {
                    tokenFilterContext = this._headContext.findChildOf(tokenFilterContext);
                    this._exposedContext = tokenFilterContext;
                }
            } while (tokenFilterContext != null);
            throw _constructError("Unexpected problem: chain of filtered context broken");
        }
        currentToken = this.delegate.nextToken();
        if (currentToken == null) {
            this._currToken = currentToken;
            return currentToken;
        }
        TokenFilter tokenFilter;
        TokenFilter filter;
        switch (currentToken.id()) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                tokenFilter = this._itemFilter;
                if (tokenFilter == TokenFilter.INCLUDE_ALL) {
                    this._headContext = this._headContext.createChildObjectContext(tokenFilter, true);
                    this._currToken = currentToken;
                    return currentToken;
                } else if (tokenFilter == null) {
                    this.delegate.skipChildren();
                    break;
                } else {
                    tokenFilter = this._headContext.checkValue(tokenFilter);
                    if (tokenFilter == null) {
                        this.delegate.skipChildren();
                        break;
                    }
                    if (tokenFilter != TokenFilter.INCLUDE_ALL) {
                        tokenFilter = tokenFilter.filterStartObject();
                    }
                    this._itemFilter = tokenFilter;
                    if (tokenFilter == TokenFilter.INCLUDE_ALL) {
                        this._headContext = this._headContext.createChildObjectContext(tokenFilter, true);
                        this._currToken = currentToken;
                        return currentToken;
                    }
                    this._headContext = this._headContext.createChildObjectContext(tokenFilter, false);
                    if (this._includePath) {
                        currentToken = _nextTokenWithBuffering(this._headContext);
                        if (currentToken != null) {
                            this._currToken = currentToken;
                            return currentToken;
                        }
                    }
                }
                break;
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
            case Place.TYPE_AQUARIUM /*4*/:
                boolean isStartHandled = this._headContext.isStartHandled();
                filter = this._headContext.getFilter();
                if (!(filter == null || filter == TokenFilter.INCLUDE_ALL)) {
                    filter.filterFinishArray();
                }
                this._headContext = this._headContext.getParent();
                this._itemFilter = this._headContext.getFilter();
                if (isStartHandled) {
                    this._currToken = currentToken;
                    return currentToken;
                }
                break;
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                tokenFilter = this._itemFilter;
                if (tokenFilter == TokenFilter.INCLUDE_ALL) {
                    this._headContext = this._headContext.createChildArrayContext(tokenFilter, true);
                    this._currToken = currentToken;
                    return currentToken;
                } else if (tokenFilter == null) {
                    this.delegate.skipChildren();
                    break;
                } else {
                    tokenFilter = this._headContext.checkValue(tokenFilter);
                    if (tokenFilter == null) {
                        this.delegate.skipChildren();
                        break;
                    }
                    if (tokenFilter != TokenFilter.INCLUDE_ALL) {
                        tokenFilter = tokenFilter.filterStartArray();
                    }
                    this._itemFilter = tokenFilter;
                    if (tokenFilter == TokenFilter.INCLUDE_ALL) {
                        this._headContext = this._headContext.createChildArrayContext(tokenFilter, true);
                        this._currToken = currentToken;
                        return currentToken;
                    }
                    this._headContext = this._headContext.createChildArrayContext(tokenFilter, false);
                    if (this._includePath) {
                        currentToken = _nextTokenWithBuffering(this._headContext);
                        if (currentToken != null) {
                            this._currToken = currentToken;
                            return currentToken;
                        }
                    }
                }
                break;
            case Place.TYPE_ART_GALLERY /*5*/:
                String currentName = this.delegate.getCurrentName();
                filter = this._headContext.setFieldName(currentName);
                if (filter == TokenFilter.INCLUDE_ALL) {
                    this._itemFilter = filter;
                    if (!(this._includePath || !this._includeImmediateParent || this._headContext.isStartHandled())) {
                        currentToken = this._headContext.nextTokenToRead();
                        this._exposedContext = this._headContext;
                    }
                    this._currToken = currentToken;
                    return currentToken;
                } else if (filter == null) {
                    this.delegate.nextToken();
                    this.delegate.skipChildren();
                    break;
                } else {
                    tokenFilter = filter.includeProperty(currentName);
                    if (tokenFilter == null) {
                        this.delegate.nextToken();
                        this.delegate.skipChildren();
                        break;
                    }
                    this._itemFilter = tokenFilter;
                    if (tokenFilter == TokenFilter.INCLUDE_ALL && this._includePath) {
                        this._currToken = currentToken;
                        return currentToken;
                    } else if (this._includePath) {
                        currentToken = _nextTokenWithBuffering(this._headContext);
                        if (currentToken != null) {
                            this._currToken = currentToken;
                            return currentToken;
                        }
                    }
                }
                break;
            default:
                tokenFilter = this._itemFilter;
                if (tokenFilter == TokenFilter.INCLUDE_ALL) {
                    this._currToken = currentToken;
                    return currentToken;
                } else if (tokenFilter != null) {
                    tokenFilter = this._headContext.checkValue(tokenFilter);
                    if (tokenFilter == TokenFilter.INCLUDE_ALL || (tokenFilter != null && tokenFilter.includeValue(this.delegate))) {
                        this._currToken = currentToken;
                        return currentToken;
                    }
                }
                break;
        }
        return _nextToken2();
    }

    public JsonToken nextValue() throws IOException {
        JsonToken nextToken = nextToken();
        return nextToken == JsonToken.FIELD_NAME ? nextToken() : nextToken;
    }

    public void overrideCurrentName(String str) {
        throw new UnsupportedOperationException("Can not currently override name during filtering read");
    }

    public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        return this.delegate.readBinaryValue(base64Variant, outputStream);
    }

    public JsonParser skipChildren() throws IOException {
        if (this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) {
            int i = 1;
            while (true) {
                JsonToken nextToken = nextToken();
                if (nextToken == null) {
                    break;
                } else if (nextToken.isStructStart()) {
                    i++;
                } else if (nextToken.isStructEnd()) {
                    i--;
                    if (i == 0) {
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return this;
    }
}
