.class public Lcom/android/server/appprelauncher/AppPrelaunchManagerService;
.super Lcom/android/server/SystemService;
.source "AppPrelaunchManagerService.java"


# instance fields
.field public mService:Lcom/android/server/appprelauncher/AppPrelaunchService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    return-void
.end method


# virtual methods
.method public handleActivityExecution(Landroid/content/Intent;IILandroid/app/ActivityOptions;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_0

    const/16 p0, -0x60

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appprelauncher/AppPrelaunchService;->handleActivityExecution(Landroid/content/Intent;IILandroid/app/ActivityOptions;)I

    move-result p0

    return p0
.end method

.method public handlePrelaunchedAppDied(Landroid/app/ApplicationExitInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->handlePrelaunchedAppDied(Landroid/app/ApplicationExitInfo;)V

    return-void
.end method

.method public initPrelauncher(Lcom/android/server/SpegService;Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_PREL:Z

    const-string v1, "PREL"

    if-nez v0, :cond_0

    const-string p0, "Prelaunch service is disabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;-><init>(Landroid/content/Context;Lcom/android/server/SpegService;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-virtual {v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->initCoreServices()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->registerBroadcastReceiver()V

    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->bootCompletedBroadcastReceiver()V

    const-string/jumbo p1, "prelauncher"

    iget-object p2, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    const-string p1, "Failed to start AppPrelaunchService"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    :goto_0
    return-void
.end method

.method public isAppPrelaunched(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isAppPrelaunched(I)Z

    move-result p0

    return p0
.end method

.method public isAppPrelaunched(Ljava/lang/String;I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isAppPrelaunched(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 1

    const-string p0, "PREL"

    const-string v0, "Manager service started"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPidForPrelaunchedAppAsync(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->setPidForPrelaunchedAppAsync(II)V

    return-void
.end method

.method public setSetupWizardFinished(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->setSetupWizardFinished(Z)V

    return-void
.end method

.method public setSmartSwitchState(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->setSmartSwitchState(Z)V

    return-void
.end method

.method public setStartExecutionComplete(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->setStartExecutionComplete(Ljava/lang/String;I)V

    return-void
.end method

.method public setTaskProcessedForPrelaunchedAppAsync(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->setTaskProcessedForPrelaunchedAppAsync(I)V

    return-void
.end method

.method public startTrackIntent(Landroid/content/Intent;I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mIntentTracker:Lcom/android/server/appprelauncher/IntentTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/IntentTracker;->startTrackIntent(Landroid/content/Intent;I)I

    move-result p0

    return p0
.end method

.method public stopPrelaunch(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->stopPrelaunch(ILjava/lang/String;)Z

    return-void
.end method

.method public stopTrackIntent(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mIntentTracker:Lcom/android/server/appprelauncher/IntentTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/IntentTracker;->stopTrackIntent(I)V

    return-void
.end method
