.class public Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z
    .locals 1

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misSystemReady(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isEmergencyModeEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1, p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misBlockerRegistered(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;Z)Z

    return v0

    :cond_1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1, p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misBlockerRegistered(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isPackagesAvailable()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public isDesktopModeAvailableEx(ZZ)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result p0

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDesktopModeAvailable(checkExternalDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", checkDesktopDock="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method

.method public updateDesktopMode(Lcom/android/server/desktopmode/State;ZZ)Z
    .locals 10

    sget-boolean p3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDesktopMode(), enter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isModeChangeLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p3, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misSystemReady(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_14

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result p3

    if-eqz p3, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p3

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "external_display_mode"

    const-string v3, "dual"

    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x65

    const/16 v3, 0x66

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    if-eq p2, v5, :cond_2

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v8

    invoke-static {p2, p1, v6, v8}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misAllowedInternal(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;ZZ)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_2
    invoke-virtual {p3, v4, v0, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v7}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    :cond_3
    :goto_0
    move v0, v6

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p3, v4, v0, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v8, "welcome_completed"

    invoke-static {p2, v8, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p2

    sget-boolean v8, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz v8, :cond_6

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v8, v6}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    :cond_6
    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v8}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v9

    if-eq v9, v6, :cond_8

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v9}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_1

    :cond_7
    move v9, v0

    goto :goto_2

    :cond_8
    :goto_1
    move v9, v6

    :goto_2
    invoke-static {v8, p1, v6, v9}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misAllowedInternal(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;ZZ)Z

    move-result v8

    if-eqz v8, :cond_13

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    if-ne p2, v6, :cond_9

    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mstartWelcomeActivity(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_5

    :cond_9
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$smisExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {p3, v4, v0, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    const/16 v2, 0x73

    const/16 v8, 0x67

    if-eqz p2, :cond_b

    if-nez v1, :cond_a

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUiManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object p2

    invoke-virtual {p2, v8, v2}, Lcom/android/server/desktopmode/UiManager;->showOverlay(II)V

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p2

    new-instance p3, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmShowModeChangeScreen(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v1

    invoke-direct {p3, v1, v5}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;-><init>(ZI)V

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object v7

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p3, v5, v0, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-nez p2, :cond_d

    const/16 p2, 0xa

    invoke-virtual {p3, v5, p2, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {p3, v4, v0, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-eqz p2, :cond_13

    if-nez v1, :cond_13

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p2

    if-nez p2, :cond_13

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUiManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object p2

    invoke-virtual {p2, v8, v2}, Lcom/android/server/desktopmode/UiManager;->showOverlay(II)V

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p2

    new-instance p3, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmShowModeChangeScreen(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v1

    invoke-direct {p3, v1, v6}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;-><init>(ZI)V

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object v7

    goto/16 :goto_0

    :cond_d
    :goto_3
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    if-ne p2, v6, :cond_e

    if-nez v1, :cond_10

    :cond_e
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result p2

    if-ne p2, v5, :cond_f

    goto :goto_4

    :cond_f
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    if-ne p2, v6, :cond_3

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmModeChanger(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger;)V

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object p3

    invoke-virtual {p2, p1, v6, p3}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    goto/16 :goto_0

    :cond_10
    :goto_4
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmModeChanger(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger;)V

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object p3

    invoke-virtual {p2, p1, v6, p3}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    goto/16 :goto_0

    :cond_11
    iget p2, p3, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne p2, v5, :cond_12

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    if-ne p2, v6, :cond_12

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmModeChanger(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger;)V

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    move-result-object p3

    invoke-virtual {p2, p1, v6, p3}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p3, v4, v0, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p2, v0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    goto/16 :goto_0

    :cond_13
    :goto_5
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V

    :cond_14
    :goto_6
    return v0
.end method
