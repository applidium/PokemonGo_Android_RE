package com.nianticproject.holoholo.sfida.unity;

public interface UnityInterface {
    void connect();

    void disconnect();

    boolean init();

    boolean notifyCancel();

    boolean notifyCancelDowser();

    boolean notifyError();

    boolean notifyFoundDowser();

    boolean notifyNoPokeball();

    boolean notifyPokeballShakeAndBroken(String str);

    boolean notifyPokemonCaught();

    boolean notifyProximityDowser(String str);

    boolean notifyReachedPokestop(String str);

    boolean notifyReadyForThrowPokeball(String str);

    boolean notifyRewardItems(String str);

    boolean notifySpawnedLegendaryPokemon(String str);

    boolean notifySpawnedPokemon(String str);

    boolean notifySpawnedUncaughtPokemon(String str);

    boolean notifyStartDowser();

    void releaseSfida();
}
