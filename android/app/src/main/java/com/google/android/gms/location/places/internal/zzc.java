package com.google.android.gms.location.places.internal;

import android.text.SpannableString;
import android.text.style.CharacterStyle;
import com.google.android.gms.location.places.internal.AutocompletePredictionEntity.SubstringEntity;
import java.util.List;

public class zzc {
    public static CharSequence zza(String str, List<SubstringEntity> list, CharacterStyle characterStyle) {
        if (characterStyle == null) {
            return str;
        }
        CharSequence spannableString = new SpannableString(str);
        for (SubstringEntity substringEntity : list) {
            spannableString.setSpan(CharacterStyle.wrap(characterStyle), substringEntity.getOffset(), substringEntity.getLength() + substringEntity.getOffset(), 0);
        }
        return spannableString;
    }
}
