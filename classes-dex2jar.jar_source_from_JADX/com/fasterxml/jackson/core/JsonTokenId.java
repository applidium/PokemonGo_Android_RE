package com.fasterxml.jackson.core;

public interface JsonTokenId {
    public static final int ID_EMBEDDED_OBJECT = 12;
    public static final int ID_END_ARRAY = 4;
    public static final int ID_END_OBJECT = 2;
    public static final int ID_FALSE = 10;
    public static final int ID_FIELD_NAME = 5;
    public static final int ID_NOT_AVAILABLE = -1;
    public static final int ID_NO_TOKEN = 0;
    public static final int ID_NULL = 11;
    public static final int ID_NUMBER_FLOAT = 8;
    public static final int ID_NUMBER_INT = 7;
    public static final int ID_START_ARRAY = 3;
    public static final int ID_START_OBJECT = 1;
    public static final int ID_STRING = 6;
    public static final int ID_TRUE = 9;
}
