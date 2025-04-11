.class public Lcom/android/server/chimera/ChimeraStrategy;
.super Ljava/lang/Object;
.source "ChimeraStrategy.java"


# instance fields
.field public final PROPERTY_NAME_PROTECTED_COUNT_HOME:Ljava/lang/String;

.field public final PROPERTY_NAME_PROTECTED_COUNT_LMKD:Ljava/lang/String;

.field public final PROPERTY_NAME_STRATEGY:Ljava/lang/String;

.field public mAlwaysRunningProcessQuota:I

.field public mDeviceIdleAppThreshold:I

.field public mDeviceIdleNativeThreshold:I

.field public mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

.field public mFixedMemFreeTarget:J

.field public mMemFreeTarget:J

.field public mProtectedCountOnDynamic:I

.field public mProtectedCountOnHomeTrigger:I

.field public mProtectedCountOnLmkdTrigger:I

.field public mQuickReclaimDefaultThreshold:I

.field public mRecentAppManager:Lcom/android/server/chimera/ChimeraRecentAppManager;

.field public final mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmRecentAppManager(Lcom/android/server/chimera/ChimeraStrategy;)Lcom/android/server/chimera/ChimeraRecentAppManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mRecentAppManager:Lcom/android/server/chimera/ChimeraRecentAppManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraStrategy;)Lcom/android/server/chimera/SystemRepository;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/ChimeraRecentAppManager;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V
    .locals 1

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "persist.config.chimera.protected_count_on_lmkd"

    .line 29
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->PROPERTY_NAME_PROTECTED_COUNT_LMKD:Ljava/lang/String;

    const-string/jumbo v0, "persist.config.chimera.protected_count_on_home"

    .line 30
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->PROPERTY_NAME_PROTECTED_COUNT_HOME:Ljava/lang/String;

    const-string/jumbo v0, "ro.slmk.chimera_strategy_%dgb"

    .line 31
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->PROPERTY_NAME_STRATEGY:Ljava/lang/String;

    .line 277
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mRecentAppManager:Lcom/android/server/chimera/ChimeraRecentAppManager;

    .line 278
    iput-object p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 279
    iput-object p3, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 280
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->initializeDefaultParameters()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_a

    .line 410
    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "-a"

    const/4 v1, 0x0

    .line 414
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraStrategy;->dumpInfo(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 416
    :cond_1
    array-length v0, p2

    if-lez v0, :cond_a

    .line 417
    aget-object v0, p2, v1

    const-string v1, "info"

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraStrategy;->dumpInfo(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    :cond_2
    const-string/jumbo v1, "mem"

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    array-length v1, p2

    if-le v1, v2, :cond_3

    .line 422
    :try_start_0
    aget-object p2, p2, v2

    .line 423
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 424
    invoke-virtual {p0, v0, v1}, Lcom/android/server/chimera/ChimeraStrategy;->setTargetMem(J)V

    .line 425
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Target mem : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    .line 427
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v1, "set_protected_count_on_lmkd"

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, p2

    if-le v1, v2, :cond_4

    .line 431
    :try_start_1
    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 433
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ProtectedCount On Lmkd : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v1, "set_protected_count_on_home"

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    array-length v1, p2

    if-le v1, v2, :cond_5

    .line 438
    :try_start_2
    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p2

    .line 440
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ProtectedCount On Home : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v1, "enable_dynamic"

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 444
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->enableDynamicTargetFree()V

    const-string p0, "enable dynamic memfreetarget"

    .line 446
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string v1, "dynamic_min"

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    array-length v1, p2

    if-le v1, v2, :cond_7

    .line 448
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    if-eqz v0, :cond_a

    .line 449
    aget-object p2, p2, v2

    .line 450
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 451
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    invoke-static {p0, v0, v1}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->-$$Nest$msetThresholdMin(Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;J)V

    .line 452
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "set dynamic threshold min: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string v1, "dynamic_max"

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    array-length v1, p2

    if-le v1, v2, :cond_8

    .line 455
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    if-eqz v0, :cond_a

    .line 456
    aget-object p2, p2, v2

    .line 457
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 458
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    invoke-static {p0, v0, v1}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->-$$Nest$msetThresholdMax(Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;J)V

    .line 459
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "set dynamic threshold max: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v1, "get_reentry"

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 462
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/chimera/ReentryCounter;

    if-eqz p0, :cond_a

    .line 463
    invoke-virtual {p0}, Lcom/android/server/chimera/ReentryCounter;->getReentry()F

    move-result p0

    .line 464
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get reentry: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string/jumbo v1, "set_reentry"

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 467
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    if-eqz v0, :cond_a

    .line 468
    aget-object p2, p2, v2

    .line 469
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set reentry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    invoke-static {p0, p2}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->-$$Nest$msetReentry(Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;F)V

    :cond_a
    :goto_2
    return-void
.end method

.method public dumpInfo(Ljava/io/PrintWriter;)V
    .locals 3

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UseDynamicFreeMem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MemFreeTarget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtectedCountOnLmkdTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtectedCountOnHomeTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enableDynamicTargetFree()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/chimera/SettingRepository;->enableDynamicTargetFree(Z)V

    .line 479
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;-><init>(Lcom/android/server/chimera/ChimeraStrategy;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    :cond_0
    return-void
.end method

.method public getAlwaysRunningProcQuota()I
    .locals 0

    .line 406
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mAlwaysRunningProcessQuota:I

    return p0
.end method

.method public getDeviceIdleAppThreshold()I
    .locals 0

    .line 398
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDeviceIdleAppThreshold:I

    return p0
.end method

.method public getDeviceIdleNativeThreshold()I
    .locals 0

    .line 402
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDeviceIdleNativeThreshold:I

    return p0
.end method

.method public getFreeMemTarget(J)J
    .locals 1

    .line 373
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    if-nez v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->updateFreeMem(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    return-wide p1

    .line 374
    :cond_1
    :goto_0
    iget-wide p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    return-wide p0
.end method

.method public getProtectedCountOnHomeTrigger()I
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    return p0

    .line 365
    :cond_0
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    return p0
.end method

.method public getProtectedCountOnLmkdTrigger()I
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    return p0

    .line 358
    :cond_0
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    return p0
.end method

.method public getQuickReclaimDefaultThreshold()I
    .locals 0

    .line 394
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mQuickReclaimDefaultThreshold:I

    return p0
.end method

.method public final initializeDefaultParameters()V
    .locals 6

    .line 284
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v0

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ChimeraStrategy;->updateDefaultParametersIfExist(I)V

    .line 286
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->getTargetFree(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 287
    iput-wide v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mFixedMemFreeTarget:J

    const-string/jumbo v1, "persist.config.chimera.protected_count_on_lmkd"

    .line 289
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->getProtectedCountOnLmkdTrigger(I)I

    move-result v2

    .line 288
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    const-string/jumbo v1, "persist.config.chimera.protected_count_on_home"

    .line 291
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->getProtectedCountOnHomeTrigger(I)I

    move-result v2

    .line 290
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 293
    iget-wide v2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    if-gez v1, :cond_1

    .line 294
    :cond_0
    sget v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->UNKNOWN_GB_TARGET_FREE:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 295
    sget v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->UNKNOWN_GB_PROTECTED_COUNT_ON_HOME:I

    iput v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 296
    sget v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->UNKNOWN_GB_PROTECTED_COUNT_ON_LMKD:I

    iput v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    .line 299
    :cond_1
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->getDynamicProtectedCount(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    .line 300
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->getQuickReclaimDefaultThreshold(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mQuickReclaimDefaultThreshold:I

    .line 301
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->getDeviceIdleAppThreshold(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDeviceIdleAppThreshold:I

    .line 302
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->getDeviceIdleNativeThreshold(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDeviceIdleNativeThreshold:I

    .line 303
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->getAlwaysRunningProcQuota(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mAlwaysRunningProcessQuota:I

    .line 305
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChimeraStrategy() - ramSizeGb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mMemFreeTarget: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mProtectedCountOnLmkdTrigger: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mProtectedCountOnHomeTrigger: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mEnableDynamicFreeMem: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mProtectedCountOnDynamic: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mQuickReclaimDefaultThreshold: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mQuickReclaimDefaultThreshold:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mDeviceIdleAppThreshold: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDeviceIdleAppThreshold:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mDeviceIdleNativeThreshold: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDeviceIdleNativeThreshold:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mAlwaysRunningProcessQuota: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mAlwaysRunningProcessQuota:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ChimeraStrategy"

    .line 305
    invoke-interface {v1, v0, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isEnableDynamicFreeMem()Z
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {p0}, Lcom/android/server/chimera/SettingRepository;->isDynamicTargetFreeEnabled()Z

    move-result p0

    return p0
.end method

.method public setTargetMem(J)V
    .locals 0

    .line 385
    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 386
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/server/chimera/SettingRepository;->enableDynamicTargetFree(Z)V

    return-void
.end method

.method public final updateDefaultParametersIfExist(I)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 321
    :goto_0
    invoke-static {}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->-$$Nest$sfgetsParameters()[[I

    move-result-object v2

    aget-object v2, v2, v1

    aget v2, v2, v0

    const/4 v3, -0x1

    if-lez v2, :cond_1

    .line 322
    invoke-static {}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->-$$Nest$sfgetsParameters()[[I

    move-result-object v2

    aget-object v2, v2, v1

    aget v2, v2, v0

    if-lt v2, p1, :cond_0

    .line 323
    invoke-static {}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->-$$Nest$sfgetsParameters()[[I

    move-result-object p1

    aget-object p1, p1, v1

    aget p1, p1, v0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_1
    if-eq p1, v3, :cond_3

    .line 330
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "ro.slmk.chimera_strategy_%dgb"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 331
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDefaultParameters > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ChimeraStrategy"

    invoke-interface {p0, v2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, ","

    .line 335
    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 337
    array-length p1, p0

    const/4 v1, 0x3

    if-le p1, v1, :cond_2

    const/4 p1, 0x1

    :goto_2
    if-gt p1, v1, :cond_3

    .line 340
    :try_start_0
    invoke-static {}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->-$$Nest$sfgetsParameters()[[I

    move-result-object v3

    aget-object v3, v3, v0

    add-int/lit8 v4, p1, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while updating default : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    const-string p0, "Chimera parameter mismatched"

    .line 348
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
