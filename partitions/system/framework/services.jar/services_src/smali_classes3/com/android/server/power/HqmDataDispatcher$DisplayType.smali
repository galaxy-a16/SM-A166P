.class public abstract Lcom/android/server/power/HqmDataDispatcher$DisplayType;
.super Ljava/lang/Object;
.source "HqmDataDispatcher.java"


# direct methods
.method public static getType(I)I
    .locals 2

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method
