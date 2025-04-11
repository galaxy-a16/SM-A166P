.class public interface abstract Lcom/android/server/wm/BoundsCompatController;
.super Ljava/lang/Object;
.source "BoundsCompatController.java"


# virtual methods
.method public abstract adjustBounds(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
.end method

.method public canHaveSizeCompatBounds(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBoundsCompatUtils()Lcom/android/server/wm/BoundsCompatUtils;
    .locals 0

    invoke-static {}, Lcom/android/server/wm/BoundsCompatUtils;->get()Lcom/android/server/wm/BoundsCompatUtils;

    move-result-object p0

    return-object p0
.end method

.method public shouldUpdatePosition()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldUseSandboxDisplay(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldUseSandboxViewBoundsAndMotionEvent(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldUseSizeCompatMode(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportsCustomLetterbox()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
