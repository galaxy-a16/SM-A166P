.class public Lcom/android/server/tare/JobSchedulerEconomicPolicy;
.super Lcom/android/server/tare/EconomicPolicy;
.source "JobSchedulerEconomicPolicy.java"


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

.field public mMinSatiatedBalanceIncrementalAppUpdater:J

.field public mMinSatiatedBalanceOther:J

.field public mMinSatiatedConsumptionLimit:J

.field public final mParser:Landroid/util/KeyValueListParser;

.field public final mRewards:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/JobSchedulerEconomicPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 155
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->COST_MODIFIERS:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/EconomicPolicy$Injector;)V
    .locals 1

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/tare/EconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 171
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {p1, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 174
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    .line 175
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    .line 179
    iput-object p2, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInjector:Lcom/android/server/tare/EconomicPolicy$Injector;

    const-string p1, ""

    const/4 p2, 0x0

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    const-string v0, "Min satiated balance:"

    .line 453
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 455
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exempted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 456
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceOther:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Other"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 457
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceIncrementalAppUpdater:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+App Updater"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 458
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 459
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMaxSatiatedBalance:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Max satiated balance"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Consumption limits: ["

    .line 460
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 461
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedConsumptionLimit:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", "

    .line 462
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 463
    iget-wide v1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    invoke-static {v1, v2}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMaxSatiatedConsumptionLimit:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "]"

    .line 466
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Actions:"

    .line 469
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 471
    :goto_0
    iget-object v2, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy$Action;

    invoke-static {p1, v2}, Lcom/android/server/tare/EconomicPolicy;->dumpAction(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Action;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 476
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Rewards:"

    .line 477
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 479
    :goto_1
    iget-object v1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomicPolicy$Reward;

    invoke-static {p1, v1}, Lcom/android/server/tare/EconomicPolicy;->dumpReward(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Reward;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 482
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/EconomicPolicy$Action;

    return-object p0
.end method

.method public getCostModifiers()[I
    .locals 0

    .line 256
    sget-object p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->COST_MODIFIERS:[I

    return-object p0
.end method

.method public getInitialSatiatedConsumptionLimit()J
    .locals 2

    .line 240
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method public getMaxSatiatedBalance(ILjava/lang/String;)J
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isPackageRestricted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->getInstalledPackageInfo(ILjava/lang/String;)Lcom/android/server/tare/InstalledPackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 221
    sget-object v0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to get max balance of invalid app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {p1, p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-static {v0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 226
    :cond_1
    iget-boolean p1, v0, Lcom/android/server/tare/InstalledPackageInfo;->isSystemInstaller:Z

    if-eqz p1, :cond_3

    .line 227
    iget-object p1, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p1}, Lcom/android/server/tare/InternalResourceService;->getRealtimeSinceFirstSetupMs()J

    move-result-wide p1

    const-wide/32 v0, 0x240c8400

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 231
    iget-wide p0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMaxSatiatedConsumptionLimit:J

    return-wide p0

    .line 235
    :cond_3
    :goto_1
    iget-wide p0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMaxSatiatedBalance:J

    return-wide p0
.end method

.method public getMaxSatiatedConsumptionLimit()J
    .locals 2

    .line 250
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMaxSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method public getMinSatiatedBalance(ILjava/lang/String;)J
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isPackageRestricted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isPackageExempted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isHeadlessSystemApp(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceHeadlessSystemApp:J

    goto :goto_0

    .line 203
    :cond_2
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceOther:J

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/tare/InternalResourceService;->getAppUpdateResponsibilityCount(ILjava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    .line 209
    iget-wide v2, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceIncrementalAppUpdater:J

    mul-long/2addr p1, v2

    add-long/2addr v0, p1

    .line 211
    iget-wide p0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMaxSatiatedBalance:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMinSatiatedConsumptionLimit()J
    .locals 2

    .line 245
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method public getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/EconomicPolicy$Reward;

    return-object p0
.end method

.method public final loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V
    .locals 17

    move-object/from16 v9, p0

    .line 273
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 274
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 277
    :try_start_0
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 279
    sget-object v1, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Global setting key incorrect: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    :goto_0
    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_min_satiated_balance_other_app"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MIN_SATIATED_BALANCE_OTHER_APP_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceOther:J

    .line 284
    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_min_satiated_balance_headless_system_app"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MIN_SATIATED_BALANCE_HEADLESS_SYSTEM_APP_CAKES:J

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;JJ)J

    move-result-wide v7

    iput-wide v7, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceHeadlessSystemApp:J

    .line 288
    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_min_satiated_balance_exempted"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MIN_SATIATED_BALANCE_EXEMPTED_CAKES:J

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    .line 292
    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_min_satiated_balance_increment_updater"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MIN_SATIATED_BALANCE_INCREMENT_APP_UPDATER_CAKES:J

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceIncrementalAppUpdater:J

    .line 295
    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_max_satiated_balance"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MAX_SATIATED_BALANCE_CAKES:J

    const/4 v0, 0x1

    .line 297
    invoke-static {v0}, Landroid/app/tare/EconomyManager;->arcToCake(I)J

    move-result-wide v7

    iget-wide v10, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object/from16 v1, p0

    .line 295
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;JJ)J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMaxSatiatedBalance:J

    .line 298
    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_minimum_consumption_limit"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MIN_CONSUMPTION_LIMIT_CAKES:J

    .line 300
    invoke-static {v0}, Landroid/app/tare/EconomyManager;->arcToCake(I)J

    move-result-wide v7

    move-object/from16 v1, p0

    .line 298
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;JJ)J

    move-result-wide v7

    iput-wide v7, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedConsumptionLimit:J

    .line 301
    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_initial_consumption_limit"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_INITIAL_CONSUMPTION_LIMIT_CAKES:J

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;JJ)J

    move-result-wide v7

    iput-wide v7, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    .line 304
    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_maximum_consumption_limit"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MAX_CONSUMPTION_LIMIT_CAKES:J

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMaxSatiatedConsumptionLimit:J

    .line 308
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const/high16 v8, 0x60000000

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_max_start_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_START_CTP_CAKES:J

    move-object/from16 v1, p0

    .line 309
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_max_start_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_START_BASE_PRICE_CAKES:J

    .line 312
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v7

    move v2, v8

    move-wide v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    const/high16 v1, 0x60000000

    .line 308
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const v8, 0x60000001

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_max_running_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_RUNNING_CTP_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 316
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_max_running_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_RUNNING_BASE_PRICE_CAKES:J

    .line 319
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v7

    move v2, v8

    move-wide v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    const v1, 0x60000001

    .line 315
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const v8, 0x60000002

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_high_start_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_START_CTP_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 323
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_high_start_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_START_BASE_PRICE_CAKES:J

    .line 326
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v7

    move v2, v8

    move-wide v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    const v1, 0x60000002

    .line 322
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const v8, 0x60000003

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_high_running_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_RUNNING_CTP_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 330
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_high_running_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_RUNNING_BASE_PRICE_CAKES:J

    .line 333
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v7

    move v2, v8

    move-wide v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    const v1, 0x60000003

    .line 329
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const v8, 0x60000004

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_default_start_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_START_CTP_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 337
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_default_start_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_START_BASE_PRICE_CAKES:J

    .line 340
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v7

    move v2, v8

    move-wide v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    const v1, 0x60000004

    .line 336
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const v8, 0x60000005

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_default_running_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_RUNNING_CTP_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 344
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_default_running_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_RUNNING_BASE_PRICE_CAKES:J

    .line 347
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v7

    move v2, v8

    move-wide v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    const v1, 0x60000005

    .line 343
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const v8, 0x60000006

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_low_start_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_START_CTP_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 351
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_low_start_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_START_BASE_PRICE_CAKES:J

    .line 354
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v7

    move v2, v8

    move-wide v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    const v1, 0x60000006

    .line 350
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const v8, 0x60000007

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_low_running_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_RUNNING_CTP_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 358
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_low_running_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_RUNNING_BASE_PRICE_CAKES:J

    .line 361
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v7

    move v2, v8

    move-wide v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    const v1, 0x60000007

    .line 357
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const v8, 0x60000008

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_min_start_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_START_CTP_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 365
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_min_start_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_START_BASE_PRICE_CAKES:J

    .line 368
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v7

    move v2, v8

    move-wide v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    const v1, 0x60000008

    .line 364
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const v8, 0x60000009

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_min_running_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_RUNNING_CTP_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 372
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_min_running_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_RUNNING_BASE_PRICE_CAKES:J

    .line 375
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v7

    move v2, v8

    move-wide v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    const v1, 0x60000009

    .line 371
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Action;

    const v8, 0x6000000a

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_timeout_penalty_ctp"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_TIMEOUT_PENALTY_CTP_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 379
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_action_job_timeout_penalty_base_price"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_TIMEOUT_PENALTY_BASE_PRICE_CAKES:J

    .line 382
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v7

    move v2, v8

    move-wide v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    const v1, 0x6000000a

    .line 378
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 386
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v7, -0x7ffffffe

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_top_activity_instant"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_TOP_ACTIVITY_INSTANT_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 387
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_top_activity_ongoing"

    const-wide/32 v5, 0x1dcd6500

    .line 390
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_top_activity_max"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_TOP_ACTIVITY_MAX_CAKES:J

    .line 393
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    move-object v1, v10

    move v2, v7

    move-wide v3, v11

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    const v1, -0x7ffffffe

    .line 386
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const/high16 v7, -0x80000000

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_notification_seen_instant"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_SEEN_INSTANT_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 397
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_notification_seen_ongoing"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_SEEN_ONGOING_CAKES:J

    .line 400
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_notification_seen_max"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_SEEN_MAX_CAKES:J

    .line 403
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    move-object v1, v10

    move v2, v7

    move-wide v3, v11

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    const/high16 v1, -0x80000000

    .line 396
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v7, -0x7fffffff

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_notification_interaction_instant"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_INTERACTION_INSTANT_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 408
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_notification_interaction_ongoing"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_INTERACTION_ONGOING_CAKES:J

    .line 411
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_notification_interaction_max"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_INTERACTION_MAX_CAKES:J

    .line 414
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    move-object v1, v10

    move v2, v7

    move-wide v3, v11

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    const v1, -0x7fffffff

    .line 406
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 417
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v7, -0x7ffffffd

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_widget_interaction_instant"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_WIDGET_INTERACTION_INSTANT_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 418
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_widget_interaction_ongoing"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_WIDGET_INTERACTION_ONGOING_CAKES:J

    .line 421
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_widget_interaction_max"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_WIDGET_INTERACTION_MAX_CAKES:J

    .line 424
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    move-object v1, v10

    move v2, v7

    move-wide v3, v11

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    const v1, -0x7ffffffd

    .line 417
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v7, -0x7ffffffc

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_other_user_interaction_instant"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_OTHER_USER_INTERACTION_INSTANT_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 429
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_other_user_interaction_ongoing"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_OTHER_USER_INTERACTION_ONGOING_CAKES:J

    .line 432
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_other_user_interaction_max"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_OTHER_USER_INTERACTION_MAX_CAKES:J

    .line 435
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v15

    move-object v1, v10

    move v2, v7

    move-wide v3, v11

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    const v1, -0x7ffffffc

    .line 427
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    iget-object v0, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/tare/EconomicPolicy$Reward;

    const/high16 v7, -0x60000000

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_app_install_instant"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_APP_INSTALL_INSTANT_CAKES:J

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 440
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_app_install_ongoing"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_APP_INSTALL_ONGOING_CAKES:J

    .line 443
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v9, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "js_reward_app_install_max"

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_APP_INSTALL_MAX_CAKES:J

    .line 446
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v8

    move-object v1, v10

    move v2, v7

    move-wide v3, v11

    move-wide v5, v13

    move-wide v7, v8

    invoke-direct/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    const/high16 v1, -0x60000000

    .line 438
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setup(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    .line 185
    invoke-super {p0, p1}, Lcom/android/server/tare/EconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/tare/EconomicPolicy;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInjector:Lcom/android/server/tare/EconomicPolicy$Injector;

    const-string/jumbo v2, "tare_job_scheduler_constants"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/tare/EconomicPolicy$Injector;->getSettingsGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
