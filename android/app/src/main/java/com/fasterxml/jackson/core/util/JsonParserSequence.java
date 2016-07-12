package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class JsonParserSequence extends JsonParserDelegate {
    protected int _nextParser;
    protected final JsonParser[] _parsers;

    protected JsonParserSequence(JsonParser[] jsonParserArr) {
        super(jsonParserArr[0]);
        this._parsers = jsonParserArr;
        this._nextParser = 1;
    }

    public static JsonParserSequence createFlattened(JsonParser jsonParser, JsonParser jsonParser2) {
        if ((jsonParser instanceof JsonParserSequence) || (jsonParser2 instanceof JsonParserSequence)) {
            ArrayList arrayList = new ArrayList();
            if (jsonParser instanceof JsonParserSequence) {
                ((JsonParserSequence) jsonParser).addFlattenedActiveParsers(arrayList);
            } else {
                arrayList.add(jsonParser);
            }
            if (jsonParser2 instanceof JsonParserSequence) {
                ((JsonParserSequence) jsonParser2).addFlattenedActiveParsers(arrayList);
            } else {
                arrayList.add(jsonParser2);
            }
            return new JsonParserSequence((JsonParser[]) arrayList.toArray(new JsonParser[arrayList.size()]));
        }
        return new JsonParserSequence(new JsonParser[]{jsonParser, jsonParser2});
    }

    protected void addFlattenedActiveParsers(List<JsonParser> list) {
        int i = this._nextParser - 1;
        int length = this._parsers.length;
        for (int i2 = i; i2 < length; i2++) {
            Object obj = this._parsers[i2];
            if (obj instanceof JsonParserSequence) {
                ((JsonParserSequence) obj).addFlattenedActiveParsers(list);
            } else {
                list.add(obj);
            }
        }
    }

    public void close() throws IOException {
        do {
            this.delegate.close();
        } while (switchToNext());
    }

    public int containedParsersCount() {
        return this._parsers.length;
    }

    public JsonToken nextToken() throws IOException, JsonParseException {
        JsonToken nextToken = this.delegate.nextToken();
        if (nextToken != null) {
            return nextToken;
        }
        while (switchToNext()) {
            nextToken = this.delegate.nextToken();
            if (nextToken != null) {
                return nextToken;
            }
        }
        return null;
    }

    protected boolean switchToNext() {
        if (this._nextParser >= this._parsers.length) {
            return false;
        }
        JsonParser[] jsonParserArr = this._parsers;
        int i = this._nextParser;
        this._nextParser = i + 1;
        this.delegate = jsonParserArr[i];
        return true;
    }
}
