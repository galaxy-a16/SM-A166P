.class public Lcom/android/server/desktopmode/WirelessDexManager$StateListener;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "WirelessDexManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/WirelessDexManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/WirelessDexManager;Lcom/android/server/desktopmode/WirelessDexManager$StateListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;)V

    return-void
.end method


# virtual methods
.method public onDualModeStartLoadingScreen(Z)V
    .locals 3

    if-nez p1, :cond_2

    .line 406
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmIsWirelessDexEntered(Lcom/android/server/desktopmode/WirelessDexManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 407
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmIsPointerEventListener(Lcom/android/server/desktopmode/WirelessDexManager;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 408
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmWindowManager(Lcom/android/server/desktopmode/WirelessDexManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmDesktopPointerEventListener(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmDesktopDisplayId(Lcom/android/server/desktopmode/WirelessDexManager;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 410
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmIsPointerEventListener(Lcom/android/server/desktopmode/WirelessDexManager;Z)V

    .line 412
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmIsPointerIconListener(Lcom/android/server/desktopmode/WirelessDexManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 413
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmInputManager(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/hardware/input/InputManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmPointerIconChangedListener(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/input/InputManager;->semUnregisterOnPointerIconChangedListener(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)V

    .line 414
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmIsPointerIconListener(Lcom/android/server/desktopmode/WirelessDexManager;Z)V

    .line 416
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmIsWirelessDexEntered(Lcom/android/server/desktopmode/WirelessDexManager;Z)V

    .line 417
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmIsLowLatencyMode(Lcom/android/server/desktopmode/WirelessDexManager;Z)V

    .line 418
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmConnectedDeviceName(Lcom/android/server/desktopmode/WirelessDexManager;Ljava/lang/String;)V

    .line 419
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$mremoveNotifications(Lcom/android/server/desktopmode/WirelessDexManager;)V

    .line 420
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onDualModeStartLoadingScreen() finish"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onDualModeStopLoadingScreen(Z)V
    .locals 4

    if-eqz p1, :cond_3

    .line 382
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/WirelessDexManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 383
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmIsWirelessDexEntered(Lcom/android/server/desktopmode/WirelessDexManager;Z)V

    .line 384
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmDesktopDisplayId(Lcom/android/server/desktopmode/WirelessDexManager;I)V

    .line 385
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmIsWirelessDexEntered(Lcom/android/server/desktopmode/WirelessDexManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 386
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmTvTizenVersion(Lcom/android/server/desktopmode/WirelessDexManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmIsPointerEventListener(Lcom/android/server/desktopmode/WirelessDexManager;Z)V

    .line 388
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmWindowManager(Lcom/android/server/desktopmode/WirelessDexManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmDesktopPointerEventListener(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmDesktopDisplayId(Lcom/android/server/desktopmode/WirelessDexManager;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$mshowQosDialog(Lcom/android/server/desktopmode/WirelessDexManager;Lcom/android/server/desktopmode/State;)V

    .line 392
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmPointerIconSync(Lcom/android/server/desktopmode/WirelessDexManager;)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 393
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1, v1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmIsPointerIconListener(Lcom/android/server/desktopmode/WirelessDexManager;Z)V

    .line 394
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmInputManager(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/hardware/input/InputManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmPointerIconChangedListener(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/hardware/input/InputManager;->semRegisterOnPointerIconChangedListener(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;Landroid/os/Handler;)V

    .line 397
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmPointerIconSync(Lcom/android/server/desktopmode/WirelessDexManager;)I

    move-result v0

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string/jumbo v0, "uibc_finger_enabled"

    invoke-static {p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 399
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$msetConnectedDeviceName(Lcom/android/server/desktopmode/WirelessDexManager;)V

    :cond_3
    return-void
.end method

.method public onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .locals 2

    .line 426
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 427
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmReducedLatency(Lcom/android/server/desktopmode/WirelessDexManager;I)V

    .line 428
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmPointerIconSync(Lcom/android/server/desktopmode/WirelessDexManager;I)V

    .line 429
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmFrequencyValue(Lcom/android/server/desktopmode/WirelessDexManager;I)V

    .line 430
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmTvTizenVersion(Lcom/android/server/desktopmode/WirelessDexManager;Ljava/lang/String;)V

    .line 431
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "uibc_finger_enabled"

    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onUserChanged(Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->setDefaultSettings()V

    return-void
.end method
