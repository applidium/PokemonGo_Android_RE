package com.crittercism.error;

public class CRXMLHttpRequestException extends Exception {
    private static final long serialVersionUID = 1515011187293165939L;

    public CRXMLHttpRequestException(String str) {
        this(str, null);
    }

    public CRXMLHttpRequestException(String str, Throwable th) {
        super(str, th);
    }

    public CRXMLHttpRequestException(Throwable th) {
        super(th);
    }
}
