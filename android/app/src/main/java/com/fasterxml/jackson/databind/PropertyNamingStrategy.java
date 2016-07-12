package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import java.io.Serializable;

public abstract class PropertyNamingStrategy implements Serializable {
    public static final PropertyNamingStrategy CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES;
    public static final PropertyNamingStrategy LOWER_CASE;
    public static final PropertyNamingStrategy PASCAL_CASE_TO_CAMEL_CASE;

    public static abstract class PropertyNamingStrategyBase extends PropertyNamingStrategy {
        public String nameForConstructorParameter(MapperConfig<?> mapperConfig, AnnotatedParameter annotatedParameter, String str) {
            return translate(str);
        }

        public String nameForField(MapperConfig<?> mapperConfig, AnnotatedField annotatedField, String str) {
            return translate(str);
        }

        public String nameForGetterMethod(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, String str) {
            return translate(str);
        }

        public String nameForSetterMethod(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, String str) {
            return translate(str);
        }

        public abstract String translate(String str);
    }

    public static class LowerCaseStrategy extends PropertyNamingStrategyBase {
        public String translate(String str) {
            return str.toLowerCase();
        }
    }

    public static class LowerCaseWithUnderscoresStrategy extends PropertyNamingStrategyBase {
        public String translate(String str) {
            if (str == null) {
                return str;
            }
            int length = str.length();
            StringBuilder stringBuilder = new StringBuilder(length * 2);
            Object obj = null;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                Object obj2;
                char charAt = str.charAt(i);
                if (i > 0 || charAt != '_') {
                    char toLowerCase;
                    if (Character.isUpperCase(charAt)) {
                        if (obj == null && i2 > 0 && stringBuilder.charAt(i2 - 1) != '_') {
                            stringBuilder.append('_');
                            i2++;
                        }
                        toLowerCase = Character.toLowerCase(charAt);
                        obj2 = 1;
                    } else {
                        toLowerCase = charAt;
                        obj2 = null;
                    }
                    stringBuilder.append(toLowerCase);
                    i2++;
                } else {
                    obj2 = obj;
                }
                i++;
                obj = obj2;
            }
            return i2 > 0 ? stringBuilder.toString() : str;
        }
    }

    public static class PascalCaseStrategy extends PropertyNamingStrategyBase {
        public String translate(String str) {
            if (str == null || str.length() == 0) {
                return str;
            }
            char charAt = str.charAt(0);
            char toUpperCase = Character.toUpperCase(charAt);
            if (charAt == toUpperCase) {
                return str;
            }
            StringBuilder stringBuilder = new StringBuilder(str);
            stringBuilder.setCharAt(0, toUpperCase);
            return stringBuilder.toString();
        }
    }

    static {
        CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES = new LowerCaseWithUnderscoresStrategy();
        PASCAL_CASE_TO_CAMEL_CASE = new PascalCaseStrategy();
        LOWER_CASE = new LowerCaseStrategy();
    }

    public String nameForConstructorParameter(MapperConfig<?> mapperConfig, AnnotatedParameter annotatedParameter, String str) {
        return str;
    }

    public String nameForField(MapperConfig<?> mapperConfig, AnnotatedField annotatedField, String str) {
        return str;
    }

    public String nameForGetterMethod(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, String str) {
        return str;
    }

    public String nameForSetterMethod(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, String str) {
        return str;
    }
}
