package com.fasterxml.jackson.annotation;

import java.lang.annotation.Annotation;

public interface JacksonAnnotationValue<A extends Annotation> {
    Class<A> valueFor();
}
