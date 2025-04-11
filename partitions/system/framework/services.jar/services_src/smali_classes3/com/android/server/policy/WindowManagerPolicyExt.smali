.class public interface abstract Lcom/android/server/policy/WindowManagerPolicyExt;
.super Ljava/lang/Object;
.source "WindowManagerPolicyExt.java"


# direct methods
.method public static getMultiWindowLayerFromTypeLw(I)I
    .locals 1

    .line 0
    const/16 v0, 0xa2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa2e

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public static getSubWindowLayerFromTypeLw(I)I
    .locals 1

    .line 0
    const/16 v0, 0x44c

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getWindowLayerFromTypeLw(IZZ)I
    .locals 0

    const/4 p1, -0x1

    const/16 p2, 0x1f

    sparse-switch p0, :sswitch_data_0

    .line 300
    invoke-static {p0}, Lcom/android/server/policy/WindowManagerPolicyExt;->getMultiWindowLayerFromTypeLw(I)I

    move-result p0

    if-lez p0, :cond_1

    return p0

    :sswitch_0
    const/16 p0, 0x10

    return p0

    :sswitch_1
    const/16 p0, 0x1b

    return p0

    :sswitch_2
    const/16 p0, 0x1c

    return p0

    :sswitch_3
    const/16 p0, 0x11

    return p0

    :sswitch_4
    const/4 p0, 0x1

    return p0

    :sswitch_5
    return p2

    :sswitch_6
    const/16 p0, 0x18

    return p0

    :sswitch_7
    const/16 p0, 0xc

    return p0

    :sswitch_8
    const/16 p0, 0x16

    return p0

    :sswitch_9
    const/16 p0, 0x1e

    return p0

    :sswitch_a
    const/16 p0, 0x22

    return p0

    :sswitch_b
    const/4 p0, 0x3

    return p0

    :sswitch_c
    const/4 p0, 0x5

    return p0

    :sswitch_d
    const/4 p0, 0x7

    return p0

    :sswitch_e
    const/16 p0, 0x19

    return p0

    :sswitch_f
    const/16 p0, 0x17

    return p0

    :sswitch_10
    const/16 p0, 0xf

    return p0

    :sswitch_11
    const/16 p0, 0x1a

    return p0

    :sswitch_12
    return p2

    :sswitch_13
    const/16 p0, 0x12

    return p0

    :sswitch_14
    const/16 p0, 0xa

    return p0

    .line 244
    :sswitch_15
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 245
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/server/wm/WmCoverState;->getWindowLayerFromTypeLw(I)I

    move-result p0

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x15

    return p0

    :sswitch_16
    const/4 p0, 0x6

    return p0

    :cond_1
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x82f -> :sswitch_16
        0x833 -> :sswitch_15
        0x8b1 -> :sswitch_14
        0x8b2 -> :sswitch_13
        0x8b3 -> :sswitch_12
        0x8b4 -> :sswitch_11
        0x8de -> :sswitch_10
        0x8df -> :sswitch_10
        0x8e2 -> :sswitch_f
        0x8e8 -> :sswitch_e
        0x8e9 -> :sswitch_f
        0x961 -> :sswitch_e
        0x962 -> :sswitch_d
        0x963 -> :sswitch_c
        0x965 -> :sswitch_e
        0x966 -> :sswitch_b
        0x967 -> :sswitch_a
        0x968 -> :sswitch_9
        0x96b -> :sswitch_15
        0x96c -> :sswitch_d
        0x96e -> :sswitch_8
        0x96f -> :sswitch_13
        0x97e -> :sswitch_b
        0x97f -> :sswitch_7
        0x988 -> :sswitch_f
        0x989 -> :sswitch_f
        0x98a -> :sswitch_6
        0xa28 -> :sswitch_5
        0xa29 -> :sswitch_11
        0xa2d -> :sswitch_11
        0xa3a -> :sswitch_7
        0xa3b -> :sswitch_a
        0xa3c -> :sswitch_4
        0xa3d -> :sswitch_10
        0xa3e -> :sswitch_3
        0xa3f -> :sswitch_6
        0xa46 -> :sswitch_2
        0xa47 -> :sswitch_1
        0xa48 -> :sswitch_b
        0xa49 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isAppWindowType(I)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x7cf

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSystemWindowType(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x7d0

    if-lt p0, v0, :cond_0

    const/16 v0, 0xbb7

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract clearKeyCustomizationInfoByAction(III)V
.end method

.method public abstract clearKeyCustomizationInfoByKeyCode(II)V
.end method

.method public abstract getBackupKeyCustomizationInfoList()Ljava/util/List;
.end method

.method public abstract getKeyCustomizationInfo(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
.end method

.method public abstract getKeyCustomizationInfoByPackage(Ljava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
.end method

.method public abstract getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
.end method

.method public abstract getWakingUpReason()I
.end method

.method public abstract handleNotifyPogoKeyboardStatus(Z)V
.end method

.method public abstract init()V
.end method

.method public abstract interceptQuickAccess(IFF)Z
.end method

.method public abstract isImeBtnOnGestureEnabled()Z
.end method

.method public abstract isInteractionControlEnabled()Z
.end method

.method public abstract isKeyguardOccluded(I)Z
.end method

.method public abstract isLockTaskModePinned()Z
.end method

.method public abstract isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
.end method

.method public abstract isNavGetureHintEnabled()Z
.end method

.method public abstract isScreenTurnedOn()Z
.end method

.method public abstract isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
.end method

.method public abstract keyguardGoingAwayWithFingerprintUnlock(Z)V
.end method

.method public abstract launchHomeForDesktopMode(I)V
.end method

.method public abstract notifyPenSwitchChanged(JZZ)V
.end method

.method public abstract notifyRequestedGameToolsWin(Z)V
.end method

.method public abstract onFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)V
.end method

.method public abstract onKeyguardOccludedChangedLw(ZIZ)V
.end method

.method public abstract onLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V
.end method

.method public abstract onLockTaskStateChanged(I)V
.end method

.method public abstract putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
.end method

.method public abstract registerSystemKeyEvent(ILandroid/content/ComponentName;I)V
.end method

.method public abstract removeKeyCustomizationInfo(III)V
.end method

.method public abstract removeKeyCustomizationInfoByPackage(Ljava/lang/String;II)V
.end method

.method public abstract requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
.end method

.method public abstract requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
.end method

.method public abstract restoreKeyCustomizationInfo(Ljava/util/List;)V
.end method

.method public abstract setCarLifeDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
.end method

.method public abstract setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
.end method

.method public abstract setRotation(I)V
.end method

.method public abstract setTspStateController(Lcom/android/server/wm/TspStateController;)V
.end method

.method public abstract showBootDialog(I)V
.end method

.method public abstract startGameToolsService(IIZ)Z
.end method

.method public abstract startLockscreenFingerprintAuth()V
.end method

.method public abstract unregisterSystemKeyEvent(ILandroid/content/ComponentName;)V
.end method

.method public abstract updateTopActivity(Landroid/content/ComponentName;)V
.end method
