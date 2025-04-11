.class public abstract Lcom/android/server/tare/EconomicPolicy;
.super Ljava/lang/Object;
.source "EconomicPolicy.java"


# static fields
.field public static final COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mIrs:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/EconomicPolicy;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/tare/Modifier;

    .line 200
    sput-object v0, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .locals 3

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 204
    invoke-virtual {p0}, Lcom/android/server/tare/EconomicPolicy;->getCostModifiers()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 205
    invoke-static {v2, p1}, Lcom/android/server/tare/EconomicPolicy;->initModifier(ILcom/android/server/tare/InternalResourceService;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x30000000

    and-int/2addr v0, p0

    const/high16 v1, 0x10000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x20000000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "JOB_TIMEOUT"

    return-object p0

    :pswitch_1
    const-string p0, "JOB_MIN_RUNNING"

    return-object p0

    :pswitch_2
    const-string p0, "JOB_MIN_START"

    return-object p0

    :pswitch_3
    const-string p0, "JOB_LOW_RUNNING"

    return-object p0

    :pswitch_4
    const-string p0, "JOB_LOW_START"

    return-object p0

    :pswitch_5
    const-string p0, "JOB_DEFAULT_RUNNING"

    return-object p0

    :pswitch_6
    const-string p0, "JOB_DEFAULT_START"

    return-object p0

    :pswitch_7
    const-string p0, "JOB_HIGH_RUNNING"

    return-object p0

    :pswitch_8
    const-string p0, "JOB_HIGH_START"

    return-object p0

    :pswitch_9
    const-string p0, "JOB_MAX_RUNNING"

    return-object p0

    :pswitch_a
    const-string p0, "JOB_MAX_START"

    return-object p0

    :cond_1
    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const-string p0, "ALARM_CLOCK"

    return-object p0

    :pswitch_c
    const-string p0, "ALARM_NONWAKEUP_INEXACT"

    return-object p0

    :pswitch_d
    const-string p0, "ALARM_NONWAKEUP_INEXACT_ALLOW_WHILE_IDLE"

    return-object p0

    :pswitch_e
    const-string p0, "ALARM_NONWAKEUP_EXACT"

    return-object p0

    :pswitch_f
    const-string p0, "ALARM_NONWAKEUP_EXACT_ALLOW_WHILE_IDLE"

    return-object p0

    :pswitch_10
    const-string p0, "ALARM_WAKEUP_INEXACT"

    return-object p0

    :pswitch_11
    const-string p0, "ALARM_WAKEUP_INEXACT_ALLOW_WHILE_IDLE"

    return-object p0

    :pswitch_12
    const-string p0, "ALARM_WAKEUP_EXACT"

    return-object p0

    :pswitch_13
    const-string p0, "ALARM_WAKEUP_EXACT_ALLOW_WHILE_IDLE"

    return-object p0

    .line 422
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_ACTION:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x60000000
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50000000
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static dumpAction(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Action;)V
    .locals 2

    .line 517
    iget v0, p1, Lcom/android/server/tare/EconomicPolicy$Action;->id:I

    invoke-static {v0}, Lcom/android/server/tare/EconomicPolicy;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": "

    .line 518
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ctp="

    .line 519
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 520
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Action;->costToProduce:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", basePrice="

    .line 521
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 522
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Action;->basePrice:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public static dumpActiveModifiers(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    const-string v1, "Modifier "

    .line 501
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 503
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 505
    sget-object v1, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v1, p0}, Lcom/android/server/tare/Modifier;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_1

    :cond_0
    const-string v1, "NOT ACTIVE"

    .line 509
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 512
    :goto_1
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static dumpReward(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Reward;)V
    .locals 2

    .line 527
    iget v0, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->id:I

    invoke-static {v0}, Lcom/android/server/tare/EconomicPolicy;->rewardToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": "

    .line 528
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "instant="

    .line 529
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 530
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->instantReward:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", ongoing/sec="

    .line 531
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 532
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->ongoingRewardPerSecond:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", maxDaily="

    .line 533
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 534
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public static eventToString(I)Ljava/lang/String;
    .locals 2

    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr v0, p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_EVENT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 356
    :cond_0
    invoke-static {p0}, Lcom/android/server/tare/EconomicPolicy;->actionToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 359
    :cond_1
    invoke-static {p0}, Lcom/android/server/tare/EconomicPolicy;->regulationToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 362
    :cond_2
    invoke-static {p0}, Lcom/android/server/tare/EconomicPolicy;->rewardToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEventType(I)I
    .locals 1

    .line 0
    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr p0, v0

    return p0
.end method

.method public static getModifier(I)Lcom/android/server/tare/Modifier;
    .locals 3

    if-ltz p0, :cond_1

    .line 332
    sget-object v0, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    .line 335
    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    return-object v0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modifier #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " was never initialized"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid modifier id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initModifier(ILcom/android/server/tare/InternalResourceService;)V
    .locals 3

    const-string v0, "Invalid modifier id "

    if-ltz p0, :cond_5

    .line 305
    sget-object v1, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    array-length v2, v1

    if-ge p0, v2, :cond_5

    .line 308
    aget-object v2, v1, p0

    if-nez v2, :cond_4

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    .line 321
    new-instance v0, Lcom/android/server/tare/ProcessStateModifier;

    invoke-direct {v0, p1}, Lcom/android/server/tare/ProcessStateModifier;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    goto :goto_0

    .line 324
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_1
    new-instance v0, Lcom/android/server/tare/PowerSaveModeModifier;

    invoke-direct {v0, p1}, Lcom/android/server/tare/PowerSaveModeModifier;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    goto :goto_0

    .line 315
    :cond_2
    new-instance v0, Lcom/android/server/tare/DeviceIdleModifier;

    invoke-direct {v0, p1}, Lcom/android/server/tare/DeviceIdleModifier;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    goto :goto_0

    .line 312
    :cond_3
    new-instance v0, Lcom/android/server/tare/ChargingModifier;

    invoke-direct {v0, p1}, Lcom/android/server/tare/ChargingModifier;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 326
    :goto_0
    aput-object v0, v1, p0

    :cond_4
    return-void

    .line 306
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isReward(I)Z
    .locals 1

    .line 349
    invoke-static {p0}, Lcom/android/server/tare/EconomicPolicy;->getEventType(I)I

    move-result p0

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static regulationToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 445
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_REGULATION:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "FORCE_STOP"

    return-object p0

    :pswitch_2
    const-string p0, "BG_UNRESTRICTED"

    return-object p0

    :pswitch_3
    const-string p0, "BG_RESTRICTED"

    return-object p0

    :pswitch_4
    const-string p0, "DEMOTION"

    return-object p0

    :pswitch_5
    const-string p0, "PROMOTION"

    return-object p0

    :pswitch_6
    const-string p0, "WEALTH_RECLAMATION"

    return-object p0

    :pswitch_7
    const-string p0, "BIRTHRIGHT"

    return-object p0

    :pswitch_8
    const-string p0, "BASIC_INCOME"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static rewardToString(I)Ljava/lang/String;
    .locals 2

    const/high16 v0, -0x60000000

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_REWARD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "REWARD_OTHER_USER_INTERACTION"

    return-object p0

    :pswitch_1
    const-string p0, "REWARD_WIDGET_INTERACTION"

    return-object p0

    :pswitch_2
    const-string p0, "REWARD_TOP_ACTIVITY"

    return-object p0

    :pswitch_3
    const-string p0, "REWARD_NOTIFICATION_INTERACTION"

    return-object p0

    :pswitch_4
    const-string p0, "REWARD_NOTIFICATION_SEEN"

    return-object p0

    :cond_0
    const-string p0, "REWARD_JOB_APP_INSTALL"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x80000000
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract dump(Landroid/util/IndentingPrintWriter;)V
.end method

.method public abstract getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;
.end method

.method public getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J
    .locals 8

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 469
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;JJ)J
    .locals 1

    .line 477
    invoke-virtual {p1}, Landroid/util/KeyValueListParser;->size()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_0

    .line 482
    invoke-virtual {p1, p3, v0}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4, p5}, Landroid/app/tare/EconomyManager;->parseCreditValue(Ljava/lang/String;J)J

    move-result-wide p0

    .line 481
    invoke-static {p6, p7, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    if-eqz p2, :cond_1

    .line 486
    invoke-virtual {p2, p3, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4, p5}, Landroid/app/tare/EconomyManager;->parseCreditValue(Ljava/lang/String;J)J

    move-result-wide p0

    .line 485
    invoke-static {p6, p7, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    .line 488
    :cond_1
    invoke-static {p6, p7, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public abstract getCostModifiers()[I
.end method

.method public final getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;
    .locals 12

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/tare/EconomicPolicy;->getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 278
    iget-object v0, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/tare/InternalResourceService;->isVip(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 281
    :cond_0
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Action;->costToProduce:J

    .line 282
    iget-wide v2, p1, Lcom/android/server/tare/EconomicPolicy$Action;->basePrice:J

    .line 283
    invoke-virtual {p0}, Lcom/android/server/tare/EconomicPolicy;->getCostModifiers()[I

    move-result-object p0

    .line 285
    array-length p1, p0

    const/4 v4, 0x0

    move-wide v10, v2

    move v2, v4

    :goto_0
    const/4 v3, 0x3

    if-ge v4, p1, :cond_2

    aget v5, p0, v4

    if-ne v5, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 289
    :cond_1
    invoke-static {v5}, Lcom/android/server/tare/EconomicPolicy;->getModifier(I)Lcom/android/server/tare/Modifier;

    move-result-object v3

    .line 290
    invoke-virtual {v3, v0, v1}, Lcom/android/server/tare/Modifier;->getModifiedCostToProduce(J)J

    move-result-wide v0

    .line 291
    invoke-virtual {v3, v10, v11}, Lcom/android/server/tare/Modifier;->getModifiedPrice(J)J

    move-result-wide v5

    move-wide v10, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 297
    invoke-static {v3}, Lcom/android/server/tare/EconomicPolicy;->getModifier(I)Lcom/android/server/tare/Modifier;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/server/tare/ProcessStateModifier;

    move v6, p2

    move-object v7, p3

    move-wide v8, v0

    .line 298
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/tare/ProcessStateModifier;->getModifiedPrice(ILjava/lang/String;JJ)J

    move-result-wide v10

    .line 300
    :cond_3
    new-instance p0, Lcom/android/server/tare/EconomicPolicy$Cost;

    invoke-direct {p0, v0, v1, v10, v11}, Lcom/android/server/tare/EconomicPolicy$Cost;-><init>(JJ)V

    return-object p0

    .line 279
    :cond_4
    :goto_2
    new-instance p0, Lcom/android/server/tare/EconomicPolicy$Cost;

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2, p1, p2}, Lcom/android/server/tare/EconomicPolicy$Cost;-><init>(JJ)V

    return-object p0
.end method

.method public abstract getInitialSatiatedConsumptionLimit()J
.end method

.method public abstract getMaxSatiatedBalance(ILjava/lang/String;)J
.end method

.method public abstract getMaxSatiatedConsumptionLimit()J
.end method

.method public abstract getMinSatiatedBalance(ILjava/lang/String;)J
.end method

.method public abstract getMinSatiatedConsumptionLimit()J
.end method

.method public abstract getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;
.end method

.method public setup(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x4

    if-ge p0, p1, :cond_1

    .line 212
    sget-object p1, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    aget-object p1, p1, p0

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Lcom/android/server/tare/Modifier;->setup()V

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public tearDown()V
    .locals 1

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge p0, v0, :cond_1

    .line 222
    sget-object v0, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/android/server/tare/Modifier;->tearDown()V

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
