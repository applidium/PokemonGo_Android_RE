package com.fasterxml.jackson.core.json;

import android.support.v4.media.TransportMediator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonGenerator.Feature;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.core.util.VersionUtil;
import java.io.IOException;

public abstract class JsonGeneratorImpl extends GeneratorBase {
    protected static final int[] sOutputEscapes;
    protected CharacterEscapes _characterEscapes;
    protected final IOContext _ioContext;
    protected int _maximumNonEscapedChar;
    protected int[] _outputEscapes;
    protected SerializableString _rootValueSeparator;

    static {
        sOutputEscapes = CharTypes.get7BitOutputEscapes();
    }

    public JsonGeneratorImpl(IOContext iOContext, int i, ObjectCodec objectCodec) {
        super(i, objectCodec);
        this._outputEscapes = sOutputEscapes;
        this._rootValueSeparator = DefaultPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR;
        this._ioContext = iOContext;
        if (isEnabled(Feature.ESCAPE_NON_ASCII)) {
            setHighestNonEscapedChar(TransportMediator.KEYCODE_MEDIA_PAUSE);
        }
    }

    public CharacterEscapes getCharacterEscapes() {
        return this._characterEscapes;
    }

    public int getHighestEscapedChar() {
        return this._maximumNonEscapedChar;
    }

    public JsonGenerator setCharacterEscapes(CharacterEscapes characterEscapes) {
        this._characterEscapes = characterEscapes;
        if (characterEscapes == null) {
            this._outputEscapes = sOutputEscapes;
        } else {
            this._outputEscapes = characterEscapes.getEscapeCodesForAscii();
        }
        return this;
    }

    public JsonGenerator setHighestNonEscapedChar(int i) {
        if (i < 0) {
            i = 0;
        }
        this._maximumNonEscapedChar = i;
        return this;
    }

    public JsonGenerator setRootValueSeparator(SerializableString serializableString) {
        this._rootValueSeparator = serializableString;
        return this;
    }

    public Version version() {
        return VersionUtil.versionFor(getClass());
    }

    public final void writeStringField(String str, String str2) throws IOException {
        writeFieldName(str);
        writeString(str2);
    }
}
