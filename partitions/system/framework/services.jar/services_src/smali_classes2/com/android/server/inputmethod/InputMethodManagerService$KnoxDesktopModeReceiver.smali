.class public Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 7728
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 7757
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    if-eqz p2, :cond_7

    .line 7758
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 7759
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 7760
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmFocusedDisplayId(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetDisplayIdOfInputMethodWindowToBeAdded(Lcom/android/server/inputmethod/InputMethodManagerService;I)I

    move-result v0

    .line 7761
    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "InputMethodManagerService"

    const-string v0, "KnoxDesktop Connected"

    .line 7762
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7763
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDEXStandAloneMode()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    move-result p2

    if-nez p2, :cond_7

    :cond_0
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$misSamsungDefaultMethodID(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 7765
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetCurrentInputMethodPackageName(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p2

    .line 7767
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7768
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetDefaultInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    goto/16 :goto_1

    .line 7770
    :cond_1
    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 7773
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    const-string p2, "InputMethodManagerService"

    .line 7775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbind service when Desktop disconnected and Keyboard not in default display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7776
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmDeXDualViewChangeObserver(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->onChange(Z)V

    .line 7778
    :cond_2
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$misSamsungDefaultMethodID(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result p2

    .line 7779
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-1"

    .line 7780
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    if-eqz v1, :cond_5

    const-string p2, "InputMethodManagerService"

    const-string v0, "KnoxDesktop Disconnected startInputInnerLocked"

    .line 7782
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7783
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/16 v0, 0x1e

    invoke-virtual {p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(I)V

    .line 7784
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    const-string p2, "InputMethodManagerService"

    const-string v0, "KnoxDesktop Disconnected Restore previous inputmethod"

    .line 7787
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7788
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->restorePreviousUsedInputMethod()V

    :cond_6
    const-string p0, "InputMethodManagerService"

    const-string p2, "KnoxDesktop Disconnected it do not need to unbind service"

    .line 7790
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7794
    :cond_7
    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final restorePreviousUsedInputMethod()V
    .locals 7

    .line 7732
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "InputMethodManagerService"

    if-eqz v0, :cond_3

    const-string v3, "-1"

    .line 7735
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 7739
    :cond_0
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v4, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$misInstalledInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7740
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxDesktopModeReceiver : Failed to return the previous IME becuase the stored ime is uninstalled pre imi id = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7744
    :cond_1
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetCurrentInputMethodPackageName(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7745
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Restore the Previous Used IME because KnoxDesktop Disconnected"

    .line 7747
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7748
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 7749
    invoke-virtual {v4, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v4

    .line 7748
    invoke-virtual {v2, v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 7750
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "KnoxDesktopModeReceiver : Failed to return the previous IME becuase the stored info is null or do not need restore"

    .line 7736
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
