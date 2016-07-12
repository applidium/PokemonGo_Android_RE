package com.fasterxml.jackson.databind.introspect;

public interface WithMember<T> {
    T withMember(AnnotatedMember annotatedMember);
}
