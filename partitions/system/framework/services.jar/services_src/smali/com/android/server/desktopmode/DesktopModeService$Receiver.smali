.class public Lcom/android/server/desktopmode/DesktopModeService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Receiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$Receiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 496
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 497
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive(), action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const-string v1, "com.samsung.android.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    .line 499
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_b

    .line 500
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mlogDesktopModeChanged(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;)V

    const-string p1, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_SOURCE"

    .line 501
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "com.samsung.android.desktopmode.extra.NEW_DEX_MODE_STATE"

    .line 503
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v3, :cond_1

    .line 506
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mupdateNewDexMode(Lcom/android/server/desktopmode/DesktopModeService;I)V

    return-void

    :cond_1
    const-string v1, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_STATE"

    .line 509
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_a

    if-eq p2, v4, :cond_6

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    goto/16 :goto_0

    .line 534
    :cond_2
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 535
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mshouldStayInDesktopMode(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    .line 538
    :cond_3
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStatusBarManager(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 539
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 540
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mminimizeAllTasks(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 541
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmWirelessDexManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/WirelessDexManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->disconnect()V

    goto/16 :goto_0

    .line 542
    :cond_4
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isDexOnPcConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 543
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p0

    const/16 p1, 0x3e8

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyDisplayDisconnectionRequest(I)V

    goto/16 :goto_0

    .line 546
    :cond_5
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto/16 :goto_0

    .line 513
    :cond_6
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStatusBarManager(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 514
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "welcome_completed"

    invoke-static {p2, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p2

    .line 516
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misNeededStartConnectivityActivity(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;I)Z

    move-result p1

    .line 517
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz v2, :cond_9

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_9

    :cond_7
    if-eqz p1, :cond_8

    .line 519
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mstartConnectivityActivity(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_0

    :cond_8
    if-nez p2, :cond_10

    .line 522
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 527
    :cond_9
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 528
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmIsDexSourceEntry(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 529
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto/16 :goto_0

    .line 551
    :cond_a
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStatusBarManager(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 552
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 556
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 558
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Shutdown received with UserId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_c
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p1

    if-ne p1, v3, :cond_10

    .line 560
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fputmIsBootComplete(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_0

    :cond_d
    const-string v1, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 562
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 563
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Utils;->isRetailMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 564
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/android/server/desktopmode/SettingsHelper;->clearSettingsByLauncherDataCleared(Lcom/android/server/desktopmode/State;I)V

    .line 565
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/desktopmode/SettingsHelper;->setDefaultSettingsInRetailMode(Lcom/android/server/desktopmode/State;I)V

    goto :goto_0

    :cond_e
    const-string v1, "com.samsung.android.desktopmode.action.DEX_RUNNING_NOTIFICATION_PRESSED"

    .line 567
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 568
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmStatusBarManager(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/StatusBarManager;->collapsePanels()V

    const-string p1, "CLICK_DISPLAYID"

    .line 569
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 571
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mstartConnectivityActivity(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_0

    :cond_f
    const-string p2, "com.sec.android.app.secsetupwizard.FOTA_SUW_COMPLETE"

    .line 572
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 573
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetEnterRequestIfStandaloneLastBoot(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V

    .line 574
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :cond_10
    :goto_0
    return-void
.end method

.method public register()V
    .locals 7

    .line 476
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 477
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 478
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.desktopmode.action.DEX_RUNNING_NOTIFICATION_PRESSED"

    .line 479
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.secsetupwizard.FOTA_SUW_COMPLETE"

    .line 480
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 483
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
