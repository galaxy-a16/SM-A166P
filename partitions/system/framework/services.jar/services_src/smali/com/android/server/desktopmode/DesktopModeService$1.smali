.class public Lcom/android/server/desktopmode/DesktopModeService$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "DesktopModeService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public static synthetic $r8$lambda$sGBjXLVrKvoOhzEklvAH0X2ex00(Lcom/android/server/desktopmode/DesktopModeService$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService$1;->lambda$onBootCompleted$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBootCompleted$0()V
    .locals 1

    .line 168
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmAllowPogoInitialDialog(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmHwManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/HardwareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager;->initialize()V

    .line 163
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCoverStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/CoverStateManager;->initialize()V

    .line 164
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 165
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mhandleHdmiAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 167
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isPogoKeyboardConnected()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mhandlePogoAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 168
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DesktopModeService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/DesktopModeService$1;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetEnterRequestIfStandaloneLastBoot(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 173
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mrequestTileUpdate(Lcom/android/server/desktopmode/DesktopModeService;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method public onBootInitBlockerRegistered(Z)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmIsBootInitBlockerRegistered(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    return-void
.end method

.method public onDesktopModeStateChanged(Lcom/android/server/desktopmode/State;)V
    .locals 3

    .line 256
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    .line 257
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmWirelessDexSetting(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-eq v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmWirelessDexSetting(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 260
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wireless_dex"

    iget v2, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 263
    invoke-virtual {p1, v0, v1, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 267
    :cond_1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mrequestTileUpdate(Lcom/android/server/desktopmode/DesktopModeService;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method public onDockLowChargerPowerChanged(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 224
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$smisDexPadConnected(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDockLowChargerConnected()Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    .line 226
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mshowDialog(Lcom/android/server/desktopmode/DesktopModeService;ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    filled-new-array {v0}, [I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mdismissDialog(Lcom/android/server/desktopmode/DesktopModeService;[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDockStateChanged(Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 216
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result p1

    if-nez p1, :cond_0

    .line 218
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x3

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mdismissDialog(Lcom/android/server/desktopmode/DesktopModeService;[I)V

    :cond_0
    return-void
.end method

.method public onDualModeStopLoadingScreen(Z)V
    .locals 0

    .line 289
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 290
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :goto_0
    return-void
.end method

.method public onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "welcome_completed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 185
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v1, :cond_1

    .line 186
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mhandleWirelessDexEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mhandleHdmiAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 190
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 192
    :goto_0
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result p1

    if-nez p1, :cond_4

    .line 193
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmShowModeChangeScreen(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_1

    .line 196
    :cond_1
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "hdmi_auto_enter"

    invoke-static {v1, v3, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_3

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 203
    :cond_3
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onExternalDisplayUpdated(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 209
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$smisConnectionTypeChanged(Lcom/android/server/desktopmode/State;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(ZZ)V

    :cond_0
    return-void
.end method

.method public onForcedInternalScreenStateChanged(Lcom/android/server/desktopmode/State;)V
    .locals 2

    .line 273
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isForcedInternalScreenModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 275
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isForcedInternalScreenModeEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method public onLauncherPackageReplaced(Z)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/desktopmode/SettingsHelper;->clearSettingsByLauncherDataCleared(Lcom/android/server/desktopmode/State;I)V

    .line 244
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mstartHome(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public onPackageStateChanged(Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPackagesAvailable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method public onPogoKeyboardConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .locals 1

    .line 249
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPogoKeyboardConnected()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mhandlePogoAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    :cond_0
    return-void
.end method

.method public onScheduleUpdateDesktopMode(Z)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method public onStopLoadingScreen(Z)V
    .locals 0

    .line 280
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 281
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :goto_0
    return-void
.end method
