.class public Lcom/android/server/desktopmode/SettingsHelper$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "SettingsHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/SettingsHelper;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper$1;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualModeStopLoadingScreen(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 106
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper$1;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-static {p0}, Lcom/android/server/desktopmode/SettingsHelper;->-$$Nest$msetToDefaultIfNoSettings(Lcom/android/server/desktopmode/SettingsHelper;)V

    :cond_0
    return-void
.end method

.method public onStopLoadingScreen(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 98
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper$1;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-static {p0}, Lcom/android/server/desktopmode/SettingsHelper;->-$$Nest$msetToDefaultIfNoSettings(Lcom/android/server/desktopmode/SettingsHelper;)V

    :cond_0
    return-void
.end method

.method public onUserChanged(Lcom/android/server/desktopmode/State;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper$1;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/SettingsHelper;->setCurrentUserId(I)V

    .line 85
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/android/server/desktopmode/SettingsHelper$1;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 88
    :goto_1
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v2

    .line 86
    invoke-virtual {v1, v0, p1, v2}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSettings(ZLcom/android/server/desktopmode/State;I)V

    .line 89
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SFC:Z

    if-eqz v0, :cond_2

    .line 90
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper$1;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result v0

    .line 91
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p1

    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSuperFastCharging(ZI)V

    :cond_2
    return-void
.end method
