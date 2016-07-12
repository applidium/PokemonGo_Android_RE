package com.upsight.android.analytics.internal.dispatcher.routing;

import com.upsight.android.analytics.internal.dispatcher.delivery.Queue;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

class Route {
    private int mCurrentStepIndex;
    private List<RouteStep> mSteps;

    public Route(Route route) {
        this(route.mSteps);
    }

    public Route(List<RouteStep> list) {
        this.mCurrentStepIndex = 0;
        this.mSteps = new ArrayList(list.size());
        for (RouteStep routeStep : list) {
            this.mSteps.add(new RouteStep(routeStep));
        }
    }

    public void failedOnCurrentStep(String str) {
        ((RouteStep) this.mSteps.get(this.mCurrentStepIndex)).setFailureReason(str);
    }

    public Queue getCurrentQueue() {
        return ((RouteStep) this.mSteps.get(this.mCurrentStepIndex)).getQueue();
    }

    public String[] getRoutingStack() {
        List linkedList = new LinkedList();
        for (RouteStep routeStep : this.mSteps) {
            linkedList.add(routeStep.getQueue().getName() + " - " + (routeStep.getFailureReason() == null ? "delivered" : routeStep.getFailureReason()));
            if (routeStep.getFailureReason() == null) {
                break;
            }
        }
        return (String[]) linkedList.toArray(new String[linkedList.size()]);
    }

    public int getStepsCount() {
        return this.mSteps.size();
    }

    public boolean hasMoreSteps() {
        return this.mCurrentStepIndex < this.mSteps.size() + -1;
    }

    public void moveToNextStep() {
        if (hasMoreSteps()) {
            this.mCurrentStepIndex++;
            return;
        }
        throw new IllegalStateException("There are no more steps to move on");
    }
}
