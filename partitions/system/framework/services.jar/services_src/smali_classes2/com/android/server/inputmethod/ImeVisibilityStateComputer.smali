.class public final Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
.super Ljava/lang/Object;
.source "ImeVisibilityStateComputer.java"


# instance fields
.field public mCurVisibleImeInputTarget:Landroid/os/IBinder;

.field public mCurVisibleImeLayeringOverlay:Landroid/os/IBinder;

.field public final mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

.field public mInputShown:Z

.field public final mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

.field public final mRequestWindowStateMap:Ljava/util/WeakHashMap;

.field public mRequestedImeScreenshot:Z

.field public mRequestedShowExplicitly:Z

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public mShowForced:Z

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurVisibleImeInputTarget(Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mCurVisibleImeInputTarget:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurVisibleImeLayeringOverlay(Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mCurVisibleImeLayeringOverlay:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)Lcom/android/server/inputmethod/InputMethodManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurVisibleImeInputTarget(Lcom/android/server/inputmethod/ImeVisibilityStateComputer;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mCurVisibleImeInputTarget:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurVisibleImeLayeringOverlay(Lcom/android/server/inputmethod/ImeVisibilityStateComputer;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mCurVisibleImeLayeringOverlay:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 3

    .line 175
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 176
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerInternal;)V

    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-direct {v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;-><init>()V

    .line 174
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;)V
    .locals 2

    .line 183
    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getWmService()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getImeValidator()Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    move-result-object p2

    new-instance v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-direct {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)V
    .locals 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    .line 201
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 202
    iput-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 203
    iput-object p3, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 204
    iput-object p4, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 205
    new-instance p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;

    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;-><init>(Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)V

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowManagerInternal;->setInputMethodTargetChangeListener(Lcom/android/server/wm/ImeTargetChangeListener;)V

    return-void
.end method


# virtual methods
.method public canHideIme(Landroid/view/inputmethod/ImeTracker$Token;I)Z
    .locals 3

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const-string v2, "InputMethodManagerService"

    if-eqz v0, :cond_1

    .line 261
    iget-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "Not hiding: explicit show not cancelled by non-explicit hide"

    .line 263
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/4 p2, 0x6

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return v1

    .line 267
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    const/4 v0, 0x7

    if-eqz p0, :cond_2

    and-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_2

    const-string p0, "Not hiding: forced show not cancelled by not-always hide"

    .line 268
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return v1

    .line 272
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public clearImeShowFlags()V
    .locals 1

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    .line 290
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    .line 291
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    return-void
.end method

.method public computeImeDisplayId(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;I)I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    invoke-static {p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I

    move-result p2

    .line 296
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetImeDisplayId(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;I)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 298
    :goto_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->setImeHiddenByDisplayPolicy(Z)V

    return p2
.end method

.method public computeState(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;
    .locals 8

    .line 382
    invoke-static {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$fgetmSoftInputModeState(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    .line 390
    invoke-static {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$fgetmSoftInputModeState(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)I

    move-result v1

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 393
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v5

    .line 395
    :goto_1
    invoke-static {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$fgetmSoftInputModeState(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)I

    move-result v2

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_2

    move v3, v5

    .line 404
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result v2

    const/4 v6, 0x7

    const-string v7, "InputMethodManagerService"

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->shouldRestoreImeVisibility(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p2, "Will show input to restore visibility"

    .line 405
    invoke-static {v7, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {p1, v5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    .line 410
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0x17

    invoke-direct {p0, v6, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    :cond_3
    const/4 v2, 0x5

    if-eqz v0, :cond_b

    if-eq v0, v5, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    if-eq v0, v4, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v0, "Window asks to always show input"

    .line 475
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    .line 477
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasImeFocusChanged()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 478
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0x8

    invoke-direct {p0, v6, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    :cond_5
    const-string p2, "SOFT_INPUT_STATE_ALWAYS_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    .line 482
    invoke-static {v7, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    if-eqz v3, :cond_e

    if-eqz p2, :cond_7

    const-string p0, "Window asks to show input going forward"

    .line 464
    invoke-static {v7, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    invoke-direct {p0, v6, v6}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    :cond_7
    const-string p2, "SOFT_INPUT_STATE_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    .line 468
    invoke-static {v7, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 455
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasImeFocusChanged()Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p0, "Window asks to hide input"

    .line 456
    invoke-static {v7, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0xe

    invoke-direct {p0, v2, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    :cond_9
    if-eqz v3, :cond_e

    const-string p0, "Window asks to hide input going forward"

    .line 449
    invoke-static {v7, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0xd

    invoke-direct {p0, v2, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    :cond_a
    const-string p2, "Window asks to unchanged"

    .line 439
    invoke-static {v7, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 442
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 444
    invoke-static {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$fgetmRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V

    goto :goto_2

    .line 416
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasImeFocusChanged()Z

    move-result p2

    const/4 v0, 0x6

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result p2

    if-eqz p2, :cond_c

    if-nez v1, :cond_d

    .line 417
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->getWindowFlags()I

    move-result p2

    invoke-static {p2}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p0, "Unspecified window will hide input"

    .line 421
    invoke-static {v7, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0xc

    invoke-direct {p0, v0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    .line 425
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result p2

    if-eqz p2, :cond_e

    if-eqz v1, :cond_e

    if-eqz v3, :cond_e

    const-string p0, "Unspecified window will show input"

    .line 433
    invoke-static {v7, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    invoke-direct {p0, v6, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    .line 489
    :cond_e
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasImeFocusChanged()Z

    move-result p2

    if-nez p2, :cond_f

    .line 496
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isStartInputByGainFocus()Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p0, "Same window without editor will hide input"

    .line 497
    invoke-static {v7, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0x15

    invoke-direct {p0, v2, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    .line 502
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result p2

    if-nez p2, :cond_10

    iget-boolean p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    if-eqz p2, :cond_10

    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isStartInputByGainFocus()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    .line 503
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;->shouldHideImeWhenNoEditorFocus()Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "Window without editor will hide input"

    .line 511
    invoke-static {v7, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0x21

    invoke-direct {p0, v2, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 584
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 585
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRequestedShowExplicitly="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mShowForced="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 587
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mImeHiddenByDisplayPolicy="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->isImeHiddenByDisplayPolicy()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 588
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInputShown="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 2

    const-wide p2, 0x1080000000aL

    .line 576
    iget-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide p2, 0x1080000000bL

    .line 577
    iget-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 578
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 579
    invoke-virtual {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->isA11yRequestNoSoftKeyboard()Z

    move-result p2

    const-wide v0, 0x10800000018L

    .line 578
    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide p2, 0x1080000000cL

    .line 580
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public getImeDisplayIdForTarget(I)I
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I

    move-result p0

    return p0
.end method

.method public getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    return-object p0
.end method

.method public getImeShowFlags()I
    .locals 0

    .line 278
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getOrCreateWindowState(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    .locals 6

    .line 333
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-nez p0, :cond_0

    .line 335
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;-><init>(IIZZZ)V

    :cond_0
    return-object p0
.end method

.method public getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    return-object p0
.end method

.method public getWindowTokenFrom(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 535
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    .line 536
    invoke-virtual {v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->getRequestImeToken()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 541
    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    return-object p0
.end method

.method public getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;
    .locals 3

    .line 545
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 546
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public isInputShown()Z
    .locals 0

    .line 568
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    return p0
.end method

.method public onImeShowFlags(Landroid/view/inputmethod/ImeTracker$Token;I)Z
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->-$$Nest$fgetmA11yRequestingNoSoftKeyboard(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->-$$Nest$fgetmImeHiddenByDisplayPolicy(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    and-int/lit8 p1, p2, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 245
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    .line 246
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_2

    .line 248
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    :cond_2
    :goto_0
    return v0

    .line 240
    :cond_3
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onInteractiveChanged(Landroid/os/IBinder;Z)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;
    .locals 0

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 521
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isRequestedImeVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    .line 522
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    .line 523
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/4 p1, 0x4

    const/16 p2, 0x22

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 525
    iget-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 526
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    .line 527
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0x8

    const/16 p2, 0x23

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public requestImeVisibility(Landroid/os/IBinder;Z)V
    .locals 2

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getOrCreateWindowState(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-static {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->-$$Nest$fgetmPendingA11yRequestingHideKeyboard(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    invoke-static {v0, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->-$$Nest$fputmPendingA11yRequestingHideKeyboard(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;Z)V

    .line 328
    :goto_0
    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->setRequestImeToken(Landroid/os/IBinder;)V

    .line 329
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    return-void
.end method

.method public setInputShown(Z)V
    .locals 0

    .line 572
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    return-void
.end method

.method public setWindowState(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$fgetmToolType(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 351
    invoke-static {v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$fgetmRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V

    .line 353
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    return-void
.end method

.method public final setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V
    .locals 2

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWindowStateInner, windowToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldRestoreImeVisibility(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Z
    .locals 4

    .line 555
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->getSoftInputModeState()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    return v3

    .line 564
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerInternal;->shouldRestoreImeVisibility(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method
