package dagger;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

@Documented
@Target({ElementType.TYPE})
public @interface Subcomponent {
    Class<?>[] modules() default {};
}
