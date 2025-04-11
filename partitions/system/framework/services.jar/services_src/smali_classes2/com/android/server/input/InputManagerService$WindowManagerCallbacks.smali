.class public interface abstract Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;


# virtual methods
.method public abstract createSurfaceForGestureMonitor(Ljava/lang/String;I)Landroid/view/SurfaceControl;
.end method

.method public abstract dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
.end method

.method public abstract getParentSurfaceForPointers(I)Landroid/view/SurfaceControl;
.end method

.method public abstract getPointerDisplayId()I
.end method

.method public abstract getPointerLayer()I
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptMotionBeforeQueueingNonInteractive(IJI)I
.end method

.method public abstract interceptQuickAccess(IFF)Z
.end method

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyConfigurationChanged()V
.end method

.method public abstract notifyDropWindow(Landroid/os/IBinder;FF)V
.end method

.method public abstract notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V
.end method

.method public abstract notifyInputChannelBroken(Landroid/os/IBinder;)V
.end method

.method public abstract notifyNoFocusedWindowAnr(Landroid/view/InputApplicationHandle;)V
.end method

.method public abstract notifyPenSwitchChanged(JZZ)V
.end method

.method public abstract notifyPogoKeyboardStatus(Z)V
.end method

.method public abstract notifyPointerDisplayIdChanged(IFF)V
.end method

.method public abstract notifyWindowResponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;)V
.end method

.method public abstract notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;Ljava/lang/String;)V
.end method

.method public abstract onPointerDownOutsideFocus(Landroid/os/IBinder;)V
.end method

.method public abstract onPointerDownUpCancelOutsideFocus(Landroid/os/IBinder;III)V
.end method

.method public abstract startGameToolsService(IIZ)V
.end method
