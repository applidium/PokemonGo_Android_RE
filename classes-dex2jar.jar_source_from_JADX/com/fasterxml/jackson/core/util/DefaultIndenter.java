package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter.NopIndenter;
import java.io.IOException;
import org.apache.commons.io.IOUtils;

public class DefaultIndenter extends NopIndenter {
    private static final int INDENT_LEVELS = 16;
    public static final DefaultIndenter SYSTEM_LINEFEED_INSTANCE;
    public static final String SYS_LF;
    private static final long serialVersionUID = 1;
    private final int charsPerLevel;
    private final String eol;
    private final char[] indents;

    static {
        String property;
        try {
            property = System.getProperty("line.separator");
        } catch (Throwable th) {
            property = IOUtils.LINE_SEPARATOR_UNIX;
        }
        SYS_LF = property;
        SYSTEM_LINEFEED_INSTANCE = new DefaultIndenter("  ", SYS_LF);
    }

    public DefaultIndenter() {
        this("  ", SYS_LF);
    }

    public DefaultIndenter(String str, String str2) {
        this.charsPerLevel = str.length();
        this.indents = new char[(str.length() * INDENT_LEVELS)];
        int i = 0;
        for (int i2 = 0; i2 < INDENT_LEVELS; i2++) {
            str.getChars(0, str.length(), this.indents, i);
            i += str.length();
        }
        this.eol = str2;
    }

    public String getEol() {
        return this.eol;
    }

    public String getIndent() {
        return new String(this.indents, 0, this.charsPerLevel);
    }

    public boolean isInline() {
        return false;
    }

    public DefaultIndenter withIndent(String str) {
        return str.equals(getIndent()) ? this : new DefaultIndenter(str, this.eol);
    }

    public DefaultIndenter withLinefeed(String str) {
        return str.equals(this.eol) ? this : new DefaultIndenter(getIndent(), str);
    }

    public void writeIndentation(JsonGenerator jsonGenerator, int i) throws IOException {
        jsonGenerator.writeRaw(this.eol);
        if (i > 0) {
            int i2 = this.charsPerLevel * i;
            while (i2 > this.indents.length) {
                jsonGenerator.writeRaw(this.indents, 0, this.indents.length);
                i2 -= this.indents.length;
            }
            jsonGenerator.writeRaw(this.indents, 0, i2);
        }
    }
}
