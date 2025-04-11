.class public Lcom/android/server/inputmethod/InputMethodManagerInternal$1;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "InputMethodManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .locals 0

    .line 209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodListAsUser(I)Ljava/util/List;
    .locals 0

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hideCurrentInputMethod(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public maybeFinishStylusHandwriting()V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreateInlineSuggestionsRequest(ILcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onImeParentChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)V
    .locals 0

    .line 0
    return-void
.end method

.method public removeImeSurface()V
    .locals 0

    .line 0
    return-void
.end method

.method public reportImeControl(Landroid/os/IBinder;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setInputMethodEnabled(Ljava/lang/String;ZI)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setInteractive(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public switchKeyboardLayout(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public switchToInputMethod(Ljava/lang/String;I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public unbindAccessibilityFromCurrentClient(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateImeWindowStatus(Z)V
    .locals 0

    .line 0
    return-void
.end method
