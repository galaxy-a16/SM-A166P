.class public Lcom/android/server/am/FreecessHandler$MainHandler;
.super Landroid/os/Handler;
.source "FreecessHandler.java"


# instance fields
.field public extras:Landroid/os/Bundle;

.field public mFreecessController:Lcom/android/server/am/FreecessController;

.field public final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessHandler;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 193
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 196
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    return-void
.end method


# virtual methods
.method public final handleChangeToFreezeable()V
    .locals 9

    .line 322
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "packageName"

    const-string v2, ""

    .line 323
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 324
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "userId"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 325
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string v1, "isDelay"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 326
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 327
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    const/4 v4, 0x2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/FreecessController;->lcdOnFreezedStateChange(ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public final handleChangeToFrozen()V
    .locals 9

    .line 332
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "packageName"

    const-string v2, ""

    .line 333
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 334
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "userId"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 335
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string v1, "isDelay"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 336
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 337
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    const/4 v4, 0x3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/FreecessController;->lcdOnFreezedStateChange(ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public final handleFreecessResetAllState()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "reason"

    const/4 v2, 0x0

    .line 354
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->handleResetAllState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final handleFreecessResetState()V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "packageName"

    const/4 v2, 0x0

    .line 343
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "userId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_0

    if-eq v1, v3, :cond_0

    .line 347
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->handleLcdOnResetState(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final handleFreecessSettlementPackage()V
    .locals 10

    .line 371
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "packageName"

    const/4 v2, 0x0

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "userId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 377
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 378
    iget-object v4, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "packetMonitorFlag"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 379
    iget-object v5, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string v6, "disableWakelockFlag"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 380
    iget-object v6, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v7, "isLcdOnTrigger"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 381
    iget-object v7, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "unrestrictJobs"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 386
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v7

    invoke-virtual {v7, v2, v8}, Lcom/android/server/am/MARsPolicyManager;->restrictJobsByUid(IZ)V

    :cond_1
    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    goto :goto_0

    .line 395
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {v4, v2, v0, v1}, Lcom/android/server/am/FreecessController;->configPacketMonitoredUid(ILjava/lang/String;I)V

    goto :goto_0

    .line 392
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessController;->deletePacketMonitoredUid(I)V

    :goto_0
    if-eq v5, v3, :cond_5

    .line 404
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    if-ne v5, v7, :cond_4

    move v8, v7

    :cond_4
    invoke-virtual {p0, v0, v2, v8, v6}, Lcom/android/server/am/FreecessController;->setWakeLockEnableDisable(Ljava/lang/String;IZZ)V

    :cond_5
    return-void
.end method

.method public final handleFreezeStateChanged()V
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "enabled"

    const/4 v2, 0x0

    .line 431
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 432
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "uid"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 433
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->onFreezeStateChanged(ZI)V

    :cond_0
    return-void
.end method

.method public final handleManualIdlePackage()V
    .locals 9

    .line 458
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "packageName"

    const/4 v2, 0x0

    .line 459
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 460
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "uid"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 461
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 462
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_0

    if-eq v5, v3, :cond_0

    if-eq v6, v3, :cond_0

    if-eqz v7, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string v1, "isDelay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 465
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/FreecessController;->makePkgIdleForLcdOn(Ljava/lang/String;IILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 202
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 204
    iget v1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v2, "packageName"

    const-string/jumbo v3, "uid"

    const-string v4, ""

    const/4 v5, -0x1

    packed-switch v1, :pswitch_data_0

    .line 302
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 299
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleReportBroadcastQueue()V

    goto/16 :goto_0

    .line 296
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleManualIdlePackage()V

    goto/16 :goto_0

    .line 293
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleReportStatus()V

    goto/16 :goto_0

    .line 290
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->handleUnfreezeRequestFocusPackage()V

    goto/16 :goto_0

    .line 287
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->cancelCalmMode()V

    goto/16 :goto_0

    .line 284
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleRepeatCalmMode()V

    goto/16 :goto_0

    :pswitch_7
    if-eqz v0, :cond_0

    const-string/jumbo p1, "list"

    .line 279
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 280
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->triggerCalmMode(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_8
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 273
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezeSpecialPackage(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 265
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 266
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->deleteRemovedPackage(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 260
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->postMonitoringFrozenProcs()V

    goto/16 :goto_0

    .line 246
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreezeStateChanged()V

    goto/16 :goto_0

    .line 228
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleUnfreezeActivePackages()V

    goto :goto_0

    .line 257
    :pswitch_d
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->readSysfs()V

    goto :goto_0

    :pswitch_e
    if-eqz v0, :cond_0

    const-string/jumbo p1, "type"

    .line 250
    invoke-virtual {v0, p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 251
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->setIsDumpstateWorking(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->setIsSmartSwitchWorking(Z)V

    .line 253
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(ZI)V

    goto :goto_0

    .line 243
    :pswitch_f
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    const-string/jumbo p1, "timeout"

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezeForOLAF(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleOlaf()V

    goto :goto_0

    :pswitch_11
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 236
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->checkFrozenBinder(I)V

    goto :goto_0

    .line 231
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreecessSettlementPackage()V

    goto :goto_0

    .line 225
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreecessResetAllState()V

    goto :goto_0

    .line 222
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreecessResetState()V

    goto :goto_0

    :pswitch_15
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 218
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->lcdOnFreezePackage(Ljava/lang/String;I)V

    goto :goto_0

    .line 212
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleChangeToFrozen()V

    goto :goto_0

    .line 209
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleChangeToFreezeable()V

    goto :goto_0

    .line 206
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleScreenOnQuickFreeze()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final handleOlaf()V
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "enterFlag"

    const/4 v2, 0x0

    .line 411
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 412
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "packageName"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "uid"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/am/FreecessController;->updateTargetPkgForOLAF(ZLjava/lang/String;I)V

    .line 421
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessController;->triggerOLAF(Ljava/lang/String;I)V

    .line 422
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->clearTargetPkgForOLAF()V

    goto :goto_0

    .line 424
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    const-string v0, "Force"

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->unFreezeForOLAF(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final handleRepeatCalmMode()V
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "packageName"

    const/4 v2, 0x0

    .line 439
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "userId"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 441
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "reason"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 442
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/FreecessController;->quickFreezeForCalmMode(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final handleReportBroadcastQueue()V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "pids"

    .line 472
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->reportProcessFreezableChangedLocked(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final handleReportStatus()V
    .locals 5

    .line 447
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "packageName"

    const/4 v2, 0x0

    .line 448
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "userId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 450
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "reason"

    const-string v4, ""

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eq v1, v3, :cond_0

    .line 452
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, p0, v3}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final handleScreenOnQuickFreeze()V
    .locals 4

    .line 307
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    const-string v1, "handle FREECESS_LCD_ON_QUICK_FREEZE_MSG...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    .line 313
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 315
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "packageName"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->triggerLcdOnFreeze(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final handleUnfreezeActivePackages()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "reason"

    const/4 v2, 0x0

    .line 363
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->handleUnfreezeActivePackages(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
