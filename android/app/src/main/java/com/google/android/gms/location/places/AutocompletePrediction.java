package com.google.android.gms.location.places;

import android.text.style.CharacterStyle;
import com.google.android.gms.common.data.Freezable;
import java.util.List;

public interface AutocompletePrediction extends Freezable<AutocompletePrediction> {

    @Deprecated
    public interface Substring {
        int getLength();

        int getOffset();
    }

    @Deprecated
    String getDescription();

    CharSequence getFullText(CharacterStyle characterStyle);

    @Deprecated
    List<? extends Substring> getMatchedSubstrings();

    String getPlaceId();

    List<Integer> getPlaceTypes();

    CharSequence getPrimaryText(CharacterStyle characterStyle);

    CharSequence getSecondaryText(CharacterStyle characterStyle);
}
