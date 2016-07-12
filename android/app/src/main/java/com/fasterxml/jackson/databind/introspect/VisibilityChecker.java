package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import spacemadness.com.lunarconsole.C1401R;

public interface VisibilityChecker<T extends VisibilityChecker<T>> {

    /* renamed from: com.fasterxml.jackson.databind.introspect.VisibilityChecker.1 */
    static /* synthetic */ class C01551 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor;

        static {
            $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor = new int[PropertyAccessor.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.GETTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.SETTER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.CREATOR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.FIELD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.IS_GETTER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[PropertyAccessor.ALL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    @JsonAutoDetect(creatorVisibility = Visibility.ANY, fieldVisibility = Visibility.PUBLIC_ONLY, getterVisibility = Visibility.PUBLIC_ONLY, isGetterVisibility = Visibility.PUBLIC_ONLY, setterVisibility = Visibility.ANY)
    public static class Std implements VisibilityChecker<Std>, Serializable {
        protected static final Std DEFAULT;
        private static final long serialVersionUID = 1;
        protected final Visibility _creatorMinLevel;
        protected final Visibility _fieldMinLevel;
        protected final Visibility _getterMinLevel;
        protected final Visibility _isGetterMinLevel;
        protected final Visibility _setterMinLevel;

        static {
            DEFAULT = new Std((JsonAutoDetect) Std.class.getAnnotation(JsonAutoDetect.class));
        }

        public Std(Visibility visibility) {
            if (visibility == Visibility.DEFAULT) {
                this._getterMinLevel = DEFAULT._getterMinLevel;
                this._isGetterMinLevel = DEFAULT._isGetterMinLevel;
                this._setterMinLevel = DEFAULT._setterMinLevel;
                this._creatorMinLevel = DEFAULT._creatorMinLevel;
                this._fieldMinLevel = DEFAULT._fieldMinLevel;
                return;
            }
            this._getterMinLevel = visibility;
            this._isGetterMinLevel = visibility;
            this._setterMinLevel = visibility;
            this._creatorMinLevel = visibility;
            this._fieldMinLevel = visibility;
        }

        public Std(Visibility visibility, Visibility visibility2, Visibility visibility3, Visibility visibility4, Visibility visibility5) {
            this._getterMinLevel = visibility;
            this._isGetterMinLevel = visibility2;
            this._setterMinLevel = visibility3;
            this._creatorMinLevel = visibility4;
            this._fieldMinLevel = visibility5;
        }

        public Std(JsonAutoDetect jsonAutoDetect) {
            this._getterMinLevel = jsonAutoDetect.getterVisibility();
            this._isGetterMinLevel = jsonAutoDetect.isGetterVisibility();
            this._setterMinLevel = jsonAutoDetect.setterVisibility();
            this._creatorMinLevel = jsonAutoDetect.creatorVisibility();
            this._fieldMinLevel = jsonAutoDetect.fieldVisibility();
        }

        public static Std defaultInstance() {
            return DEFAULT;
        }

        public boolean isCreatorVisible(AnnotatedMember annotatedMember) {
            return isCreatorVisible(annotatedMember.getMember());
        }

        public boolean isCreatorVisible(Member member) {
            return this._creatorMinLevel.isVisible(member);
        }

        public boolean isFieldVisible(AnnotatedField annotatedField) {
            return isFieldVisible(annotatedField.getAnnotated());
        }

        public boolean isFieldVisible(Field field) {
            return this._fieldMinLevel.isVisible(field);
        }

        public boolean isGetterVisible(AnnotatedMethod annotatedMethod) {
            return isGetterVisible(annotatedMethod.getAnnotated());
        }

        public boolean isGetterVisible(Method method) {
            return this._getterMinLevel.isVisible(method);
        }

        public boolean isIsGetterVisible(AnnotatedMethod annotatedMethod) {
            return isIsGetterVisible(annotatedMethod.getAnnotated());
        }

        public boolean isIsGetterVisible(Method method) {
            return this._isGetterMinLevel.isVisible(method);
        }

        public boolean isSetterVisible(AnnotatedMethod annotatedMethod) {
            return isSetterVisible(annotatedMethod.getAnnotated());
        }

        public boolean isSetterVisible(Method method) {
            return this._setterMinLevel.isVisible(method);
        }

        public String toString() {
            return "[Visibility:" + " getter: " + this._getterMinLevel + ", isGetter: " + this._isGetterMinLevel + ", setter: " + this._setterMinLevel + ", creator: " + this._creatorMinLevel + ", field: " + this._fieldMinLevel + "]";
        }

        public Std with(Visibility visibility) {
            return visibility == Visibility.DEFAULT ? DEFAULT : new Std(visibility);
        }

        public Std with(JsonAutoDetect jsonAutoDetect) {
            return jsonAutoDetect != null ? withGetterVisibility(jsonAutoDetect.getterVisibility()).withIsGetterVisibility(jsonAutoDetect.isGetterVisibility()).withSetterVisibility(jsonAutoDetect.setterVisibility()).withCreatorVisibility(jsonAutoDetect.creatorVisibility()).withFieldVisibility(jsonAutoDetect.fieldVisibility()) : this;
        }

        public Std withCreatorVisibility(Visibility visibility) {
            Visibility visibility2 = visibility == Visibility.DEFAULT ? DEFAULT._creatorMinLevel : visibility;
            return this._creatorMinLevel == visibility2 ? this : new Std(this._getterMinLevel, this._isGetterMinLevel, this._setterMinLevel, visibility2, this._fieldMinLevel);
        }

        public Std withFieldVisibility(Visibility visibility) {
            Visibility visibility2 = visibility == Visibility.DEFAULT ? DEFAULT._fieldMinLevel : visibility;
            return this._fieldMinLevel == visibility2 ? this : new Std(this._getterMinLevel, this._isGetterMinLevel, this._setterMinLevel, this._creatorMinLevel, visibility2);
        }

        public Std withGetterVisibility(Visibility visibility) {
            Visibility visibility2 = visibility == Visibility.DEFAULT ? DEFAULT._getterMinLevel : visibility;
            return this._getterMinLevel == visibility2 ? this : new Std(visibility2, this._isGetterMinLevel, this._setterMinLevel, this._creatorMinLevel, this._fieldMinLevel);
        }

        public Std withIsGetterVisibility(Visibility visibility) {
            Visibility visibility2 = visibility == Visibility.DEFAULT ? DEFAULT._isGetterMinLevel : visibility;
            return this._isGetterMinLevel == visibility2 ? this : new Std(this._getterMinLevel, visibility2, this._setterMinLevel, this._creatorMinLevel, this._fieldMinLevel);
        }

        public Std withSetterVisibility(Visibility visibility) {
            Visibility visibility2 = visibility == Visibility.DEFAULT ? DEFAULT._setterMinLevel : visibility;
            return this._setterMinLevel == visibility2 ? this : new Std(this._getterMinLevel, this._isGetterMinLevel, visibility2, this._creatorMinLevel, this._fieldMinLevel);
        }

        public Std withVisibility(PropertyAccessor propertyAccessor, Visibility visibility) {
            switch (C01551.$SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor[propertyAccessor.ordinal()]) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    return withGetterVisibility(visibility);
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    return withSetterVisibility(visibility);
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    return withCreatorVisibility(visibility);
                case Place.TYPE_AQUARIUM /*4*/:
                    return withFieldVisibility(visibility);
                case Place.TYPE_ART_GALLERY /*5*/:
                    return withIsGetterVisibility(visibility);
                case Place.TYPE_ATM /*6*/:
                    return with(visibility);
                default:
                    return this;
            }
        }
    }

    boolean isCreatorVisible(AnnotatedMember annotatedMember);

    boolean isCreatorVisible(Member member);

    boolean isFieldVisible(AnnotatedField annotatedField);

    boolean isFieldVisible(Field field);

    boolean isGetterVisible(AnnotatedMethod annotatedMethod);

    boolean isGetterVisible(Method method);

    boolean isIsGetterVisible(AnnotatedMethod annotatedMethod);

    boolean isIsGetterVisible(Method method);

    boolean isSetterVisible(AnnotatedMethod annotatedMethod);

    boolean isSetterVisible(Method method);

    T with(Visibility visibility);

    T with(JsonAutoDetect jsonAutoDetect);

    T withCreatorVisibility(Visibility visibility);

    T withFieldVisibility(Visibility visibility);

    T withGetterVisibility(Visibility visibility);

    T withIsGetterVisibility(Visibility visibility);

    T withSetterVisibility(Visibility visibility);

    T withVisibility(PropertyAccessor propertyAccessor, Visibility visibility);
}
