.class public Lcom/android/server/tare/AlarmManagerEconomicPolicy;
.super Lcom/android/server/tare/EconomicPolicy;
.source "AlarmManagerEconomicPolicy.java"


# static fields
.field public static final COST_MODIFIERS:[I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActions:Landroid/util/SparseArray;

.field public mInitialSatiatedConsumptionLimit:J

.field public final mInjector:Lcom/android/server/tare/EconomicPolicy$Injector;

.field public mMaxSatiatedBalance:J

.field public mMaxSatiatedConsumptionLimit:J

.field public mMinSatiatedBalanceExempted:J

.field public mMinSatiatedBalanceHeadlessSystemApp:J

.field public mMinSatiatedBalanceOther:J

.field public mMinSatiatedConsumptionLimit:J

.field public final mParser:Landroid/util/KeyValueListParser;

.field public final mRewards:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/AlarmManagerEconomicPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 142
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->COST_MODIFIERS:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/EconomicPolicy$Injector;)V
    .locals 1

    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/tare/EconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 157
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {p1, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 160
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    .line 161
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    .line 165
    iput-object p2, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInjector:Lcom/android/server/tare/EconomicPolicy$Injector;

    const-string p1, ""

    const/4 p2, 0x0

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    const-string v0, "Min satiated balances:"

    .line 425
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 427
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exempted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 428
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceOther:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Other"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 429
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 430
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedBalance:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Max satiated balance"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Consumption limits: ["

    .line 431
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 432
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedConsumptionLimit:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", "

    .line 433
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 434
    iget-wide v1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    invoke-static {v1, v2}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 436
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedConsumptionLimit:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "]"

    .line 437
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Actions:"

    .line 440
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 442
    :goto_0
    iget-object v2, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy$Action;

    invoke-static {p1, v2}, Lcom/android/server/tare/EconomicPolicy;->dumpAction(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Action;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 447
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Rewards:"

    .line 448
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 450
    :goto_1
    iget-object v1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomicPolicy$Reward;

    invoke-static {p1, v1}, Lcom/android/server/tare/EconomicPolicy;->dumpReward(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Reward;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 453
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/EconomicPolicy$Action;

    return-object p0
.end method

.method public getCostModifiers()[I
    .locals 0

    .line 223
    sget-object p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->COST_MODIFIERS:[I

    return-object p0
.end method

.method public getInitialSatiatedConsumptionLimit()J
    .locals 2

    .line 207
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method public getMaxSatiatedBalance(ILjava/lang/String;)J
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isPackageRestricted(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 202
    :cond_0
    iget-wide p0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedBalance:J

    return-wide p0
.end method

.method public getMaxSatiatedConsumptionLimit()J
    .locals 2

    .line 217
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method public getMinSatiatedBalance(ILjava/lang/String;)J
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isPackageRestricted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isPackageExempted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-wide p0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    return-wide p0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isHeadlessSystemApp(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 186
    iget-wide p0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceHeadlessSystemApp:J

    return-wide p0

    .line 189
    :cond_2
    iget-wide p0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceOther:J

    return-wide p0
.end method

.method public getMinSatiatedConsumptionLimit()J
    .locals 2

    .line 212
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method public getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/EconomicPolicy$Reward;

    return-object p0
.end method

.method public final loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V
    .locals 17

    move-object/from16 v9, p0

    .line 240
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 241
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 244
    :try_start_0
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 246
    sget-object v1, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Global setting key incorrect: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    :goto_0
    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_min_satiated_balance_other_app"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MIN_SATIATED_BALANCE_OTHER_APP_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceOther:J

    .line 251
    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_min_satiated_balance_headless_system_app"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MIN_SATIATED_BALANCE_HEADLESS_SYSTEM_APP_CAKES:J

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;JJ)J

    move-result-wide v7

    iput-wide v7, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceHeadlessSystemApp:J

    .line 255
    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_min_satiated_balance_exempted"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MIN_SATIATED_BALANCE_EXEMPTED_CAKES:J

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    .line 259
    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_max_satiated_balance"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MAX_SATIATED_BALANCE_CAKES:J

    const/4 v0, 0x1

    .line 261
    invoke-static {v0}, Landroid/app/tare/EconomyManager;->arcToCake(I)J

    move-result-wide v7

    iget-wide v10, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object/from16 v1, p0

    .line 259
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;JJ)J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedBalance:J

    .line 262
    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_minimum_consumption_limit"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MIN_CONSUMPTION_LIMIT_CAKES:J

    .line 264
    invoke-static {v0}, Landroid/app/tare/EconomyManager;->arcToCake(I)J

    move-result-wide v7

    move-object/from16 v1, p0

    .line 262
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;JJ)J

    move-result-wide v7

    iput-wide v7, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedConsumptionLimit:J

    .line 265
    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_initial_consumption_limit"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_INITIAL_CONSUMPTION_LIMIT_CAKES:J

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;JJ)J

    move-result-wide v7

    iput-wide v7, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    .line 268
    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_maximum_consumption_limit"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MAX_CONSUMPTION_LIMIT_CAKES:J

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedConsumptionLimit:J

    .line 272
    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_allow_while_idle_exact_wakeup_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_WAKEUP_BASE_PRICE_CAKES:J

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v14

    .line 280
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const/high16 v11, 0x50000000

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_allow_while_idle_exact_wakeup_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_WAKEUP_CTP_CAKES:J

    .line 282
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    const/16 v16, 0x0

    move-object v10, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJZ)V

    const/high16 v1, 0x50000000

    .line 280
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/tare/EconomicPolicy$Action;

    const v7, 0x50000001

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_exact_wakeup_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_WAKEUP_CTP_CAKES:J

    move-object/from16 v1, p0

    .line 289
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_exact_wakeup_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_WAKEUP_BASE_PRICE_CAKES:J

    .line 292
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v12, 0x0

    move-object v1, v8

    move v2, v7

    move-wide v3, v10

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJZ)V

    const v1, 0x50000001

    .line 287
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_allow_while_idle_inexact_wakeup_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_WAKEUP_BASE_PRICE_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 298
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v14

    .line 302
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x50000002    # 8.5899366E9f

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_allow_while_idle_inexact_wakeup_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_WAKEUP_CTP_CAKES:J

    .line 304
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    move-object v10, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJZ)V

    const v1, 0x50000002    # 8.5899366E9f

    .line 302
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/tare/EconomicPolicy$Action;

    const v7, 0x50000003

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_inexact_wakeup_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_WAKEUP_CTP_CAKES:J

    move-object/from16 v1, p0

    .line 311
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_inexact_wakeup_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_WAKEUP_BASE_PRICE_CAKES:J

    .line 314
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v12, 0x0

    move-object v1, v8

    move v2, v7

    move-wide v3, v10

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJZ)V

    const v1, 0x50000003

    .line 309
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_allow_while_idle_exact_nonwakeup_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v14

    .line 322
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x50000004

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_allow_while_idle_exact_nonwakeup_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_NONWAKEUP_CTP_CAKES:J

    .line 324
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    move-object v10, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJZ)V

    const v1, 0x50000004

    .line 322
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/tare/EconomicPolicy$Action;

    const v7, 0x50000005

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_exact_nonwakeup_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_NONWAKEUP_CTP_CAKES:J

    move-object/from16 v1, p0

    .line 332
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_exact_nonwakeup_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    .line 335
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v12, 0x0

    move-object v1, v8

    move v2, v7

    move-wide v3, v10

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJZ)V

    const v1, 0x50000005

    .line 330
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_allow_while_idle_inexact_nonwakeup_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v14

    .line 343
    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_allow_while_idle_inexact_nonwakeup_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_NONWAKEUP_CTP_CAKES:J

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    .line 346
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/tare/EconomicPolicy$Action;

    const v11, 0x50000006

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    const v2, 0x50000006

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const v8, 0x50000007    # 8.5899418E9f

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_inexact_nonwakeup_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_NONWAKEUP_CTP_CAKES:J

    move-object/from16 v1, p0

    .line 353
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_inexact_nonwakeup_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    .line 356
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v7

    move v2, v8

    move-wide v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    const v1, 0x50000007    # 8.5899418E9f

    .line 351
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/tare/EconomicPolicy$Action;

    const v7, 0x50000008

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_alarmclock_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALARMCLOCK_CTP_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 361
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_action_alarm_alarmclock_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALARMCLOCK_BASE_PRICE_CAKES:J

    .line 364
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v12, 0x0

    move-object v1, v8

    move v2, v7

    move-wide v3, v10

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJZ)V

    const v1, 0x50000008

    .line 359
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v7, -0x7ffffffe

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_top_activity_instant"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_TOP_ACTIVITY_INSTANT_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 370
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_top_activity_ongoing"

    const-wide/32 v5, 0x989680

    .line 373
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_top_activity_max"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_TOP_ACTIVITY_MAX_CAKES:J

    .line 376
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    move-object v1, v10

    move v2, v7

    move-wide v3, v11

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    const v1, -0x7ffffffe

    .line 369
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const/high16 v7, -0x80000000

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_notification_seen_instant"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_INSTANT_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 380
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_notification_seen_ongoing"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_ONGOING_CAKES:J

    .line 383
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_notification_seen_max"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_MAX_CAKES:J

    .line 386
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    move-object v1, v10

    move v2, v7

    move-wide v3, v11

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    const/high16 v1, -0x80000000

    .line 379
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 389
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v7, -0x7fffffff

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_notification_interaction_instant"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_INSTANT_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 391
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_notification_interaction_ongoing"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_ONGOING_CAKES:J

    .line 394
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_notification_interaction_max"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_MAX_CAKES:J

    .line 397
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    move-object v1, v10

    move v2, v7

    move-wide v3, v11

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    const v1, -0x7fffffff

    .line 389
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v7, -0x7ffffffd

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_widget_interaction_instant"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_INSTANT_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 401
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_widget_interaction_ongoing"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_ONGOING_CAKES:J

    .line 404
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_widget_interaction_max"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_MAX_CAKES:J

    .line 407
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    move-object v1, v10

    move v2, v7

    move-wide v3, v11

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    const v1, -0x7ffffffd

    .line 400
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    iget-object v0, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v7, -0x7ffffffc

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_other_user_interaction_instant"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_INSTANT_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 412
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_other_user_interaction_ongoing"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_ONGOING_CAKES:J

    .line 415
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v9, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "am_reward_other_user_interaction_max"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_MAX_CAKES:J

    .line 418
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v8

    move-object v1, v10

    move v2, v7

    move-wide v3, v11

    move-wide v5, v13

    move-wide v7, v8

    invoke-direct/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    const v1, -0x7ffffffc

    .line 410
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setup(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    .line 171
    invoke-super {p0, p1}, Lcom/android/server/tare/EconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInjector:Lcom/android/server/tare/EconomicPolicy$Injector;

    const-string/jumbo v2, "tare_alarm_manager_constants"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/tare/EconomicPolicy$Injector;->getSettingsGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
