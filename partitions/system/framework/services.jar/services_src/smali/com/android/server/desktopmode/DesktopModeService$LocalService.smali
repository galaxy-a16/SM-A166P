.class public final Lcom/android/server/desktopmode/DesktopModeService$LocalService;
.super Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;
.source "DesktopModeService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    .line 919
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$LocalService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$LocalService;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public getCurrentUiMode()I
    .locals 0

    .line 994
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mgetCurrentUiMode(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p0

    return p0
.end method

.method public getDesktopModeKillPolicy()Landroid/os/Bundle;
    .locals 0

    .line 948
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getDesktopModeKillPolicy()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 0

    .line 928
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    return-object p0
.end method

.method public getDexHDMIAutoEnterState()I
    .locals 2

    .line 1075
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "knox_hdmi_auto_enter_state"

    const/16 v1, 0x9

    .line 1076
    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getModeToModeChangeType()I
    .locals 0

    .line 1088
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mgetModeToModeChangeType(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p0

    return p0
.end method

.method public getTouchpadSupportedFeatures()I
    .locals 0

    .line 1083
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mgetTouchpadSupportedFeatures(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p0

    return p0
.end method

.method public isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z
    .locals 0

    .line 1004
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misConfigurationChangedFromDeX(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public isDesktopModeAvailableEx(ZZ)Z
    .locals 0

    .line 964
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misDesktopModeAvailableEx(Lcom/android/server/desktopmode/DesktopModeService;ZZ)Z

    move-result p0

    return p0
.end method

.method public isDesktopModeEnablingOrEnabled()Z
    .locals 0

    .line 958
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p0

    return p0
.end method

.method public isDesktopModeForPreparing()Z
    .locals 0

    .line 933
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misDesktopModeForPreparing(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p0

    return p0
.end method

.method public isDesktopModeForPreparing(I)Z
    .locals 0

    .line 938
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misDesktopModeForPreparing(Lcom/android/server/desktopmode/DesktopModeService;I)Z

    move-result p0

    return p0
.end method

.method public isExternalDisplayConnected()Z
    .locals 0

    .line 943
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnected()Z

    move-result p0

    return p0
.end method

.method public isForcedInternalScreenModeEnabled()Z
    .locals 0

    .line 969
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misForcedInternalScreenModeEnabled(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p0

    return p0
.end method

.method public isLockTaskModeEnabledAndSecured()Z
    .locals 0

    .line 999
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misLockTaskModeEnabledAndSecured(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p0

    return p0
.end method

.method public isModeChangePending()Z
    .locals 0

    .line 974
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misModeChangePending(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p0

    return p0
.end method

.method public isModeChangePending(I)Z
    .locals 0

    .line 979
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misModeChangePending(Lcom/android/server/desktopmode/DesktopModeService;I)Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 984
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDesktopDisplayConfigured(Z)V
    .locals 0

    .line 989
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$monDesktopDisplayConfigured(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    return-void
.end method

.method public onSecuredAppLaunched(ILjava/lang/String;)V
    .locals 0

    .line 1093
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$monSecuredAppLaunched(Lcom/android/server/desktopmode/DesktopModeService;ILjava/lang/String;)V

    return-void
.end method

.method public scheduleUpdateDesktopMode(Z)V
    .locals 0

    .line 923
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method public sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 953
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setDexHDMIAutoEnterState(I)I
    .locals 5

    .line 1014
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "knox_hdmi_auto_enter_state"

    const/4 v1, 0x0

    const-string v2, "hdmi_auto_enter"

    const-string v3, "hdmi_auto_enter_backup"

    if-eqz p1, :cond_4

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v1, "hdmi_initial_connection_dialog_shown"

    .line 1053
    invoke-static {p0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1055
    invoke-static {p0, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1057
    invoke-static {p0, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1059
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_1

    .line 1032
    :cond_1
    invoke-static {p0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1036
    :cond_2
    invoke-static {p0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "false"

    .line 1040
    invoke-static {p0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1043
    :cond_3
    invoke-static {p0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "true"

    .line 1046
    invoke-static {p0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_1

    .line 1018
    :cond_4
    invoke-static {p0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1022
    invoke-static {p0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-static {p0, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1027
    :cond_5
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 p0, 0x0

    return p0

    .line 1066
    :catch_0
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDexHDMIAutoEnterState(), Failed to setting(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public startHome()V
    .locals 0

    .line 1009
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mstartHome(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method
