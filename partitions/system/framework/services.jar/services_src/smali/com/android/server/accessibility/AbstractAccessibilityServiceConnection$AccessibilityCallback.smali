.class public final Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback;
.super Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;
.source "AbstractAccessibilityServiceConnection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2572
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public sessionCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .locals 4

    const-string p0, "AACS.sessionCreated"

    const-wide/16 v0, 0x20

    .line 2576
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2577
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2579
    :try_start_0
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2581
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2583
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 2581
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2582
    throw p0
.end method
