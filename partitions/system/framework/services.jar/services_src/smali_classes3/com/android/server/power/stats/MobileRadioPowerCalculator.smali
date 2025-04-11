.class public Lcom/android/server/power/stats/MobileRadioPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "MobileRadioPowerCalculator.java"


# static fields
.field public static final NUM_SIGNAL_STRENGTH_LEVELS:I

.field public static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    sput v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 13

    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    sget v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    new-array v0, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object p1, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-wide v0, 0x100000000L

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iput-object v5, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v4, v0, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v4, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    :goto_0
    const-wide v0, 0x110000000L

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v5, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v4, v0, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v4, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    :goto_1
    const-string/jumbo v0, "radio.active"

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    const-string/jumbo v0, "modem.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    add-double/2addr v0, v5

    move v4, v7

    :goto_2
    sget v9, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v4, v9, :cond_2

    const-string/jumbo v9, "modem.controller.tx"

    invoke-virtual {p1, v9, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v9

    add-double/2addr v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v9, v8

    int-to-double v9, v9

    div-double/2addr v0, v9

    :cond_3
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v4, v0, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v4, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v0, "radio.on"

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_3
    sget v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v7, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p1, v0, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "modem.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    mul-double/2addr v9, v0

    const-wide v11, 0x4066800000000000L    # 180.0

    div-double/2addr v9, v11

    invoke-direct {v3, v9, v10}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v7

    :goto_4
    sget v2, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v8, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-wide/high16 v9, 0x4070000000000000L    # 256.0

    div-double v9, v0, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "radio.scanning"

    invoke-virtual {p1, v1, v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method

.method public static buildModemPowerProfileKey(IIII)J
    .locals 10

    const-wide v0, 0x100000000L

    const/4 v2, -0x1

    if-eq p0, v2, :cond_0

    int-to-long v3, p0

    or-long/2addr v0, v3

    :cond_0
    const-string p0, "MobRadioPowerCalculator"

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq p1, v2, :cond_4

    if-eqz p1, :cond_3

    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected RadioAccessTechnology : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-wide/32 v7, 0x200000

    goto :goto_0

    :cond_2
    const-wide/32 v7, 0x100000

    :goto_0
    or-long/2addr v0, v7

    goto :goto_1

    :cond_3
    or-long/2addr v0, v3

    :cond_4
    :goto_1
    const/4 p1, 0x4

    const/4 v7, 0x3

    if-eq p2, v2, :cond_a

    if-eqz p2, :cond_9

    if-eq p2, v6, :cond_8

    if-eq p2, v5, :cond_7

    if-eq p2, v7, :cond_6

    if-eq p2, p1, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected NR frequency range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const-wide/32 v8, 0x40000

    goto :goto_2

    :cond_6
    const-wide/32 v8, 0x30000

    goto :goto_2

    :cond_7
    const-wide/32 v8, 0x20000

    goto :goto_2

    :cond_8
    const-wide/32 v8, 0x10000

    :goto_2
    or-long/2addr v0, v8

    goto :goto_3

    :cond_9
    or-long/2addr v0, v3

    :cond_a
    :goto_3
    if-eq p3, v2, :cond_10

    if-eqz p3, :cond_f

    if-eq p3, v6, :cond_e

    if-eq p3, v5, :cond_d

    if-eq p3, v7, :cond_c

    if-eq p3, p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected transmission level : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    const-wide/32 p0, 0x4000000

    goto :goto_4

    :cond_c
    const-wide/32 p0, 0x3000000

    goto :goto_4

    :cond_d
    const-wide/32 p0, 0x2000000

    goto :goto_4

    :cond_e
    const-wide/32 p0, 0x1000000

    :goto_4
    or-long/2addr v0, p0

    goto :goto_5

    :cond_f
    or-long/2addr v0, v3

    :cond_10
    :goto_5
    return-wide v0
.end method


# virtual methods
.method public calcIdlePowerAtSignalStrengthMah(JI)D
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object p0, p0, p3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcInactiveStatePowerMah(JJ)D
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p1

    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p3

    add-double/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public calcPowerFromRadioActiveDurationMah(J)D
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcRxStatePowerMah(IIJ)D
    .locals 4

    const/high16 v0, 0x20000000

    const/4 v1, -0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->buildModemPowerProfileKey(IIII)J

    move-result-wide p1

    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unavailable Power Profile constant for key 0x"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobRadioPowerCalculator"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_0
    long-to-double p0, p3

    mul-double/2addr v2, p0

    const-wide p0, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, p0

    return-wide v2
.end method

.method public calcScanTimePowerMah(J)D
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcTxStatePowerMah(IIIJ)D
    .locals 4

    const/high16 v0, 0x30000000

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->buildModemPowerProfileKey(IIII)J

    move-result-wide p1

    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unavailable Power Profile constant for key 0x"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobRadioPowerCalculator"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_0
    long-to-double p0, p4

    mul-double/2addr v2, p0

    const-wide p0, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, p0

    return-wide v2
.end method

.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    new-instance v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;-><init>(Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration-IA;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getMobileRadioEnergyConsumptionUC()J

    move-result-wide v7

    move-object/from16 v9, p7

    invoke-static {v7, v8, v9}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v10

    const/4 v13, 0x2

    if-ne v10, v13, :cond_0

    move-object v11, v6

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calculateActiveModemPowerMah(Landroid/os/BatteryStats;J)D

    move-result-wide v14

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Landroid/util/LongArrayQueue;

    invoke-direct/range {v17 .. v17}, Landroid/util/LongArrayQueue;-><init>()V

    move-object/from16 v6, v16

    move-object/from16 v11, v17

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v12

    sget-object v18, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v19

    const/4 v13, 0x1

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v13, v18

    move/from16 v9, v19

    :goto_1
    if-ltz v9, :cond_8

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v1, v19

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    move-object/from16 v19, v12

    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v12

    move-wide/from16 v21, v7

    sget-object v7, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v13, v7, :cond_2

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v8

    move-object v13, v8

    goto :goto_2

    :cond_1
    move-wide/from16 v23, v14

    const/4 v7, 0x0

    const/4 v13, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    move-wide/from16 v23, v14

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v0, v12, v7}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calculateDuration(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v14

    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v7

    if-nez v7, :cond_3

    iget-wide v7, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    add-long/2addr v7, v14

    iput-wide v7, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    :cond_3
    const/16 v7, 0x8

    invoke-virtual {v1, v7, v14, v15}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v7, 0x2

    if-ne v10, v7, :cond_7

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getMobileRadioEnergyConsumptionUC()J

    move-result-wide v7

    const-wide/16 v14, -0x1

    cmp-long v14, v7, v14

    if-eqz v14, :cond_6

    invoke-static {v7, v8}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v7

    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v14

    if-nez v14, :cond_4

    iget-wide v14, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    add-double/2addr v14, v7

    iput-wide v14, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    :cond_4
    const/16 v14, 0x8

    invoke-virtual {v1, v14, v7, v8, v10}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v13, :cond_6

    array-length v7, v13

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_6

    aget-object v14, v13, v8

    iget v15, v14, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v15, :cond_5

    move-object/from16 v18, v12

    move-object/from16 v20, v13

    goto :goto_5

    :cond_5
    invoke-virtual {v12, v15}, Landroid/os/BatteryStats$Uid;->getMobileRadioEnergyConsumptionUC(I)J

    move-result-wide v25

    move-object/from16 v18, v12

    move-object/from16 v20, v13

    invoke-static/range {v25 .. v26}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v12

    invoke-virtual {v1, v14, v12, v13, v10}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    goto :goto_4

    :cond_6
    move-object/from16 v20, v13

    goto :goto_6

    :cond_7
    move-object/from16 v20, v13

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v14, v15}, Landroid/util/LongArrayQueue;->addLast(J)V

    :goto_6
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    move-wide/from16 v7, v21

    move-wide/from16 v14, v23

    goto/16 :goto_1

    :cond_8
    move-wide/from16 v21, v7

    move-wide/from16 v23, v14

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v7

    const-wide/16 v14, 0x3e8

    div-long/2addr v7, v14

    iget-wide v14, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    cmp-long v1, v7, v14

    if-gez v1, :cond_9

    move-wide v7, v14

    :cond_9
    const-wide/16 v14, 0x0

    const/4 v1, 0x2

    if-eq v10, v1, :cond_10

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v1, :cond_10

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UidBatteryConsumer$Builder;

    move/from16 p5, v1

    invoke-virtual {v11, v9}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v1

    long-to-double v3, v7

    cmpl-double v19, v3, v14

    if-nez v19, :cond_a

    goto :goto_8

    :cond_a
    long-to-double v14, v1

    mul-double v14, v14, v23

    div-double v3, v14, v3

    move-wide v14, v3

    :goto_8
    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v3

    if-nez v3, :cond_b

    iget-wide v3, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    add-double/2addr v3, v14

    iput-wide v3, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    :cond_b
    const/16 v3, 0x8

    invoke-virtual {v12, v3, v14, v15, v10}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v13, :cond_e

    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v4

    array-length v3, v13

    move-object/from16 v19, v6

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v3, :cond_f

    move/from16 v29, v3

    aget-object v3, v13, v6

    move-object/from16 v30, v11

    iget v11, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v11, :cond_c

    move-object/from16 v31, v4

    move-object v11, v5

    move-wide/from16 v33, v7

    goto :goto_b

    :cond_c
    invoke-virtual {v4, v11}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTimeInProcessState(I)J

    move-result-wide v31

    move-wide/from16 v33, v7

    const-wide/16 v25, 0x3e8

    div-long v7, v31, v25

    move-object/from16 v31, v4

    move-object v11, v5

    long-to-double v4, v1

    const-wide/16 v27, 0x0

    cmpl-double v32, v4, v27

    if-nez v32, :cond_d

    const-wide/16 v4, 0x0

    goto :goto_a

    :cond_d
    long-to-double v7, v7

    mul-double/2addr v7, v14

    div-double v4, v7, v4

    :goto_a
    invoke-virtual {v12, v3, v4, v5, v10}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_b
    add-int/lit8 v6, v6, 0x1

    move-object v5, v11

    move/from16 v3, v29

    move-object/from16 v11, v30

    move-object/from16 v4, v31

    move-wide/from16 v7, v33

    goto :goto_9

    :cond_e
    move-object/from16 v19, v6

    :cond_f
    move-wide/from16 v33, v7

    move-object/from16 v30, v11

    move-object v11, v5

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v1, p5

    move-object v5, v11

    move-object/from16 v6, v19

    move-object/from16 v11, v30

    move-wide/from16 v7, v33

    const-wide/16 v14, 0x0

    goto/16 :goto_7

    :cond_10
    move-wide/from16 v33, v7

    move-object v1, v5

    iget-wide v2, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    sub-long v7, v33, v2

    iput-wide v7, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingDurationMs:J

    const/4 v2, 0x2

    if-ne v10, v2, :cond_11

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    sub-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_16

    iput-wide v4, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    goto :goto_e

    :cond_11
    const-wide/16 v2, 0x0

    cmp-long v2, v33, v2

    if-eqz v2, :cond_12

    iget-wide v2, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    long-to-double v4, v7

    mul-double v14, v23, v4

    move-wide/from16 v7, v33

    long-to-double v4, v7

    div-double/2addr v14, v4

    add-double/2addr v2, v14

    iput-wide v2, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    invoke-virtual {v0, v5, v6, v2, v3}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcInactiveStatePowerMah(JJ)D

    move-result-wide v11

    goto :goto_c

    :cond_13
    const/4 v4, 0x0

    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    :goto_c
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v2, p2

    move-wide/from16 v5, p3

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v7

    const-wide/16 v11, 0x3e8

    div-long/2addr v7, v11

    invoke-virtual {v0, v7, v8}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcScanTimePowerMah(J)D

    move-result-wide v7

    move-wide v8, v7

    move v7, v4

    :goto_d
    sget v3, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v7, v3, :cond_14

    invoke-virtual {v2, v7, v5, v6, v4}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v13

    div-long/2addr v13, v11

    invoke-virtual {v0, v13, v14, v7}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcIdlePowerAtSignalStrengthMah(JI)D

    move-result-wide v3

    add-double/2addr v8, v3

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_d

    :cond_14
    move-wide v11, v8

    :cond_15
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_16

    iget-wide v2, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    add-double/2addr v2, v11

    iput-wide v2, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    :cond_16
    :goto_e
    iget-wide v2, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_17

    iget-wide v2, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_18

    :cond_17
    move-object/from16 v0, p1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingDurationMs:J

    iget-wide v6, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    add-long/2addr v4, v6

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v4, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    iget-wide v6, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    add-double/2addr v4, v6

    invoke-virtual {v3, v2, v4, v5, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    iget-wide v3, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v3, v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    invoke-virtual {v0, v2, v3, v4, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_18
    return-void
.end method

.method public final calculateActiveModemPowerMah(Landroid/os/BatteryStats;J)D
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    const-wide/16 v10, 0x3e8

    div-long v12, v8, v10

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v14

    const/4 v4, 0x0

    move v0, v4

    move v5, v0

    const-wide/16 v1, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v5, v3, :cond_7

    const/4 v3, 0x2

    const/16 v17, 0x1

    if-ne v5, v3, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :cond_0
    move/from16 v3, v17

    :goto_1
    move v15, v4

    :goto_2
    if-ge v15, v3, :cond_6

    move/from16 v16, v0

    move-wide/from16 v18, v1

    move v2, v4

    :goto_3
    const-wide/16 v20, -0x1

    if-ge v2, v14, :cond_3

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v22, v2

    move v2, v15

    move/from16 v23, v3

    move/from16 v3, v22

    move v10, v4

    move/from16 v24, v5

    move-wide v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveTxRadioDurationMs(IIIJ)J

    move-result-wide v4

    cmp-long v0, v4, v20

    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v24

    move v2, v15

    move/from16 v3, v22

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcTxStatePowerMah(IIIJ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    add-double v18, v18, v0

    move/from16 v16, v17

    :goto_4
    add-int/lit8 v2, v22, 0x1

    move v4, v10

    move/from16 v3, v23

    move/from16 v5, v24

    const-wide/16 v10, 0x3e8

    goto :goto_3

    :cond_3
    move/from16 v23, v3

    move v10, v4

    move v4, v5

    invoke-virtual {v7, v4, v15, v12, v13}, Landroid/os/BatteryStats;->getActiveRxRadioDurationMs(IIJ)J

    move-result-wide v0

    cmp-long v2, v0, v20

    if-nez v2, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v6, v4, v15, v0, v1}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcRxStatePowerMah(IIJ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_5
    move/from16 v0, v16

    :goto_6
    move-wide/from16 v1, v18

    goto :goto_7

    :cond_5
    add-double v18, v18, v0

    move/from16 v0, v17

    goto :goto_6

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move v5, v4

    move v4, v10

    move/from16 v3, v23

    const-wide/16 v10, 0x3e8

    goto :goto_2

    :cond_6
    move v10, v4

    move v4, v5

    add-int/lit8 v5, v4, 0x1

    move v4, v10

    const-wide/16 v10, 0x3e8

    goto/16 :goto_0

    :cond_7
    move v10, v4

    if-nez v0, :cond_9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_8

    invoke-virtual {v6, v0, v1}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcPowerFromRadioActiveDurationMah(J)D

    move-result-wide v15

    goto :goto_8

    :cond_8
    const-wide/16 v15, 0x0

    goto :goto_8

    :cond_9
    move-wide v15, v1

    :goto_8
    return-wide v15
.end method

.method public final calculateDuration(Landroid/os/BatteryStats$Uid;I)J
    .locals 2

    invoke-virtual {p1, p2}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide p0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    const/16 p0, 0x8

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
