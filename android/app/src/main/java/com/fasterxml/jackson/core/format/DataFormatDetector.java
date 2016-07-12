package com.fasterxml.jackson.core.format;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.format.InputAccessor.Std;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;

public class DataFormatDetector {
    public static final int DEFAULT_MAX_INPUT_LOOKAHEAD = 64;
    protected final JsonFactory[] _detectors;
    protected final int _maxInputLookahead;
    protected final MatchStrength _minimalMatch;
    protected final MatchStrength _optimalMatch;

    public DataFormatDetector(Collection<JsonFactory> collection) {
        this((JsonFactory[]) collection.toArray(new JsonFactory[collection.size()]));
    }

    public DataFormatDetector(JsonFactory... jsonFactoryArr) {
        this(jsonFactoryArr, MatchStrength.SOLID_MATCH, MatchStrength.WEAK_MATCH, DEFAULT_MAX_INPUT_LOOKAHEAD);
    }

    private DataFormatDetector(JsonFactory[] jsonFactoryArr, MatchStrength matchStrength, MatchStrength matchStrength2, int i) {
        this._detectors = jsonFactoryArr;
        this._optimalMatch = matchStrength;
        this._minimalMatch = matchStrength2;
        this._maxInputLookahead = i;
    }

    private DataFormatMatcher _findFormat(Std std) throws IOException {
        JsonFactory jsonFactory;
        MatchStrength hasFormat;
        JsonFactory jsonFactory2 = null;
        JsonFactory[] jsonFactoryArr = this._detectors;
        int length = jsonFactoryArr.length;
        MatchStrength matchStrength = null;
        int i = 0;
        while (i < length) {
            MatchStrength matchStrength2;
            jsonFactory = jsonFactoryArr[i];
            std.reset();
            hasFormat = jsonFactory.hasFormat(std);
            if (hasFormat != null) {
                if (hasFormat.ordinal() < this._minimalMatch.ordinal()) {
                    matchStrength2 = matchStrength;
                } else if (jsonFactory2 == null || matchStrength.ordinal() < hasFormat.ordinal()) {
                    if (hasFormat.ordinal() >= this._optimalMatch.ordinal()) {
                        break;
                    }
                    jsonFactory2 = jsonFactory;
                    matchStrength2 = hasFormat;
                }
                i++;
                matchStrength = matchStrength2;
            }
            matchStrength2 = matchStrength;
            i++;
            matchStrength = matchStrength2;
        }
        jsonFactory = jsonFactory2;
        hasFormat = matchStrength;
        return std.createMatcher(jsonFactory, hasFormat);
    }

    public DataFormatMatcher findFormat(InputStream inputStream) throws IOException {
        return _findFormat(new Std(inputStream, new byte[this._maxInputLookahead]));
    }

    public DataFormatMatcher findFormat(byte[] bArr) throws IOException {
        return _findFormat(new Std(bArr));
    }

    public DataFormatMatcher findFormat(byte[] bArr, int i, int i2) throws IOException {
        return _findFormat(new Std(bArr, i, i2));
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append('[');
        int length = this._detectors.length;
        if (length > 0) {
            stringBuilder.append(this._detectors[0].getFormatName());
            for (int i = 1; i < length; i++) {
                stringBuilder.append(", ");
                stringBuilder.append(this._detectors[i].getFormatName());
            }
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public DataFormatDetector withMaxInputLookahead(int i) {
        return i == this._maxInputLookahead ? this : new DataFormatDetector(this._detectors, this._optimalMatch, this._minimalMatch, i);
    }

    public DataFormatDetector withMinimalMatch(MatchStrength matchStrength) {
        return matchStrength == this._minimalMatch ? this : new DataFormatDetector(this._detectors, this._optimalMatch, matchStrength, this._maxInputLookahead);
    }

    public DataFormatDetector withOptimalMatch(MatchStrength matchStrength) {
        return matchStrength == this._optimalMatch ? this : new DataFormatDetector(this._detectors, matchStrength, this._minimalMatch, this._maxInputLookahead);
    }
}
