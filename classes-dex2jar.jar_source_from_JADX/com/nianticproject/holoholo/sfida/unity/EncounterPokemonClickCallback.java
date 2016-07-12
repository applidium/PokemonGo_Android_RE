package com.nianticproject.holoholo.sfida.unity;

import com.nianticproject.holoholo.sfida.service.SfidaButtonDetector.OnClickListener;

public class EncounterPokemonClickCallback implements OnClickListener {
    private String pokemonId;

    public EncounterPokemonClickCallback(String str) {
        this.pokemonId = str;
    }

    public String getId() {
        return this.pokemonId;
    }

    public void onClick() {
    }

    public void onPress() {
    }

    public void onRelease() {
    }
}
