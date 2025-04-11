.class public Lcom/android/server/desktopmode/MultiResolutionManager$4;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "MultiResolutionManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/MultiResolutionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualModeStartLoadingScreen(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmUserSettingResolutionChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmDualModeDensityChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmUserSettingResolutionChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmDualModeDensityChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    :goto_0
    return-void
.end method

.method public onDualModeStopLoadingScreen(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$mshowUserSettingIsNotSupportedToast(Lcom/android/server/desktopmode/MultiResolutionManager;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fputmDisplayRemovedOnEnablingDesktopMode(Lcom/android/server/desktopmode/MultiResolutionManager;Z)V

    return-void
.end method

.method public onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .locals 3

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$mupdateDisplayResolutionUnsupported(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/DisplayInfo;)V

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmDisplayRemovedOnEnablingDesktopMode(Lcom/android/server/desktopmode/MultiResolutionManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$mhandleReconnection(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/State;)V

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fputmDisplayRemovedOnEnablingDesktopMode(Lcom/android/server/desktopmode/MultiResolutionManager;Z)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    :cond_2
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fputmDisplayRemovedOnEnablingDesktopMode(Lcom/android/server/desktopmode/MultiResolutionManager;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onExternalDisplayUpdated(Lcom/android/server/desktopmode/State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$mupdateDisplayResolutionUnsupported(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/DisplayInfo;)V

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$mhandleReconnection(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public onSetDesktopModeInternal(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmStandaloneModeDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->-$$Nest$mupdateDesktopModeDensity(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmStandaloneModeDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->-$$Nest$msetForcedDisplayMertics(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;Z)V

    return-void
.end method

.method public onStartLoadingScreen(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmStandaloneModeDensityChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmStandaloneModeDensityChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    :goto_0
    return-void
.end method

.method public onUserChanged(Lcom/android/server/desktopmode/State;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x66

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->onUserChanged(Z)V

    return-void
.end method
