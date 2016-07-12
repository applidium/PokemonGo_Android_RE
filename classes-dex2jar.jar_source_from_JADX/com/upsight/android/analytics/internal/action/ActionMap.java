package com.upsight.android.analytics.internal.action;

import com.fasterxml.jackson.databind.JsonNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class ActionMap<T extends Actionable, U extends ActionContext> extends HashMap<String, List<Action<T, U>>> {
    private static final String ACTIONS = "actions";
    private static final String TAG;
    private static final String TRIGGER = "trigger";
    private int mActiveActionCount;
    private boolean mIsActionMapCompleted;

    static {
        TAG = ActionMap.class.getSimpleName();
    }

    public ActionMap(ActionFactory<T, U> actionFactory, U u, JsonNode jsonNode) {
        this.mActiveActionCount = 0;
        this.mIsActionMapCompleted = false;
        if (jsonNode != null && jsonNode.isArray()) {
            Iterator elements = jsonNode.elements();
            while (elements.hasNext()) {
                JsonNode jsonNode2 = (JsonNode) elements.next();
                JsonNode jsonNode3 = jsonNode2.get(TRIGGER);
                JsonNode jsonNode4 = jsonNode2.get(ACTIONS);
                if (jsonNode3 != null && jsonNode3.isTextual() && jsonNode4 != null && jsonNode4.isArray()) {
                    int size = jsonNode4.size();
                    if (size > 0) {
                        List arrayList = new ArrayList(size);
                        for (int i = 0; i < size; i++) {
                            Object obj = null;
                            try {
                                obj = jsonNode4.get(i);
                                arrayList.add(actionFactory.create(u, obj));
                            } catch (Throwable e) {
                                u.mLogger.m200e(TAG, e, "Unable to create action from actionJSON=" + obj, new Object[0]);
                            }
                        }
                        if (arrayList.size() > 0) {
                            put(jsonNode3.asText(), arrayList);
                        }
                    }
                }
            }
        }
    }

    private boolean isFinished() {
        return this.mIsActionMapCompleted && this.mActiveActionCount == 0;
    }

    public void executeActions(String str, T t) {
        synchronized (this) {
            List<Action> list = (List) get(str);
            if (list != null) {
                for (Action action : list) {
                    this.mActiveActionCount++;
                    action.execute(t);
                }
            }
        }
    }

    public boolean signalActionCompleted() {
        boolean isFinished;
        synchronized (this) {
            this.mActiveActionCount--;
            isFinished = isFinished();
        }
        return isFinished;
    }

    public boolean signalActionMapCompleted() {
        boolean isFinished;
        synchronized (this) {
            this.mIsActionMapCompleted = true;
            isFinished = isFinished();
        }
        return isFinished;
    }
}
