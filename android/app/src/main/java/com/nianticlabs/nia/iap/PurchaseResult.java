package com.nianticlabs.nia.iap;

enum PurchaseResult {
    UNDEFINED,
    NO_PURCHASE,
    FAILURE,
    BALANCE_TOO_LOW,
    SKU_NOT_AVAILABLE,
    IN_PROGRESS,
    SUCCESS,
    PURCHASE_DEFERRED,
    USER_CANCELLED,
    BILLING_UNAVAILABLE
}
