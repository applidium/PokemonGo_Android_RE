package com.upsight.android.managedvariables.experience;

import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightManagedVariablesExtension;
import java.util.List;

public abstract class UpsightUserExperience {

    public interface Handler {
        boolean onReceive();

        void onSynchronize(List<String> list);
    }

    public static void registerHandler(UpsightContext upsightContext, Handler handler) {
        UpsightManagedVariablesExtension upsightManagedVariablesExtension = (UpsightManagedVariablesExtension) upsightContext.getUpsightExtension(UpsightManagedVariablesExtension.EXTENSION_NAME);
        if (upsightManagedVariablesExtension != null) {
            upsightManagedVariablesExtension.getApi().registerUserExperienceHandler(handler);
        } else {
            upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.managedvariables must be registered in your Android Manifest", new Object[0]);
        }
    }

    public abstract Handler getHandler();

    public abstract void registerHandler(Handler handler);
}
