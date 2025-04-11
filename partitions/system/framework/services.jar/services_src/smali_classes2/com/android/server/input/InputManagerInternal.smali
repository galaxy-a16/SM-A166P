.class public abstract Lcom/android/server/input/InputManagerInternal;
.super Ljava/lang/Object;
.source "InputManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addKeyboardLayoutAssociation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
.end method

.method public abstract decrementKeyboardBacklight(I)V
.end method

.method public abstract forceHideCursor(Z)V
.end method

.method public abstract getCursorPosition()Landroid/graphics/PointF;
.end method

.method public abstract getKeyCodeState(III)I
.end method

.method public abstract getVirtualMousePointerDisplayId()I
.end method

.method public abstract incrementKeyboardBacklight(I)V
.end method

.method public abstract notifyUserActivity()V
.end method

.method public abstract onInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
.end method

.method public abstract onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V
.end method

.method public abstract registerLidSwitchCallback(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V
.end method

.method public abstract removeKeyboardLayoutAssociation(Ljava/lang/String;)V
.end method

.method public abstract setCursorPosition(III)V
.end method

.method public abstract setDisplayEligibilityForPointerCapture(IZ)V
.end method

.method public abstract setDisplayViewports(Ljava/util/List;)V
.end method

.method public abstract setInteractive(Z)V
.end method

.method public abstract setInteractiveForInternalDisplay(Z)V
.end method

.method public abstract setMultiControlOutOfFocus(Z)V
.end method

.method public abstract setPointerAcceleration(FI)V
.end method

.method public abstract setPointerIconVisible(ZI)V
.end method

.method public abstract setPulseGestureEnabled(Z)V
.end method

.method public abstract setStylusButtonMotionEventsEnabled(Z)V
.end method

.method public abstract setTypeAssociation(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setVirtualMousePointerDisplayId(I)Z
.end method

.method public abstract toggleCapsLock(I)V
.end method

.method public abstract transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z
.end method

.method public abstract unsetTypeAssociation(Ljava/lang/String;)V
.end method
