.class public Lcom/android/server/tare/Analyst;
.super Ljava/lang/Object;
.source "Analyst.java"


# static fields
.field public static final DEBUG:Z

.field static final MIN_REPORT_DURATION_FOR_RESET:J = 0x5265c00L

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mIBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mPeriodIndex:I

.field public final mReports:[Lcom/android/server/tare/Analyst$Report;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/Analyst;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/Analyst;->TAG:Ljava/lang/String;

    .line 46
    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/tare/Analyst;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/tare/Analyst;-><init>(Lcom/android/internal/app/IBatteryStats;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/IBatteryStats;)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/tare/Analyst$Report;

    .line 127
    iput-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    .line 134
    iput-object p1, p0, Lcom/android/server/tare/Analyst;->mIBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 13

    .line 321
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 322
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryFullCharge()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const-string v2, "Reports:"

    .line 323
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "      Total Discharge"

    .line 325
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Profit (avg/action : avg/discharge)"

    const/16 v3, 0x2f

    .line 327
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Loss (avg/action : avg/discharge)"

    .line 328
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Rewards (avg/reward : avg/discharge)"

    .line 329
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "+Regs (avg/reg : avg/discharge)"

    .line 330
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "-Regs (avg/reg : avg/discharge)"

    .line 331
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Bg drain estimate"

    .line 332
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_c

    .line 335
    iget v5, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    sub-int/2addr v5, v2

    add-int/2addr v5, v4

    rem-int/2addr v5, v4

    .line 336
    iget-object v4, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    aget-object v4, v4, v5

    if-nez v4, :cond_0

    goto/16 :goto_c

    :cond_0
    const-string/jumbo v5, "t-"

    .line 340
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v5, ":  "

    .line 342
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 343
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {p0, v5, v6}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 344
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    const-string v6, "%s (%s : %s)"

    const-string v7, "N/A"

    if-lez v5, :cond_2

    .line 345
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v5, :cond_1

    .line 346
    iget-wide v8, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    int-to-long v10, v5

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v7

    .line 348
    :goto_1
    iget-wide v8, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    .line 349
    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    iget v11, v4, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    int-to-long v11, v11

    div-long/2addr v9, v11

    .line 350
    invoke-static {v9, v10}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 348
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 354
    :cond_2
    invoke-virtual {p0, v7, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 356
    :goto_2
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    if-lez v5, :cond_4

    .line 357
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v5, :cond_3

    .line 358
    iget-wide v8, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    int-to-long v10, v5

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v7

    .line 360
    :goto_3
    iget-wide v8, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    .line 361
    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    iget v11, v4, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    int-to-long v11, v11

    div-long/2addr v9, v11

    .line 362
    invoke-static {v9, v10}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 360
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 366
    :cond_4
    invoke-virtual {p0, v7, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 368
    :goto_4
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    if-lez v5, :cond_6

    .line 369
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v5, :cond_5

    .line 370
    iget-wide v8, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    int-to-long v10, v5

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_5
    move-object v5, v7

    .line 372
    :goto_5
    iget-wide v8, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    .line 373
    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    iget v11, v4, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    int-to-long v11, v11

    div-long/2addr v9, v11

    .line 374
    invoke-static {v9, v10}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 372
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 378
    :cond_6
    invoke-virtual {p0, v7, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 380
    :goto_6
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    if-lez v5, :cond_8

    .line 381
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v5, :cond_7

    .line 382
    iget-wide v8, v4, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    int-to-long v10, v5

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_7
    move-object v5, v7

    .line 385
    :goto_7
    iget-wide v8, v4, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    .line 386
    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v4, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    iget v11, v4, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    int-to-long v11, v11

    div-long/2addr v9, v11

    .line 387
    invoke-static {v9, v10}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 385
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 392
    :cond_8
    invoke-virtual {p0, v7, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 394
    :goto_8
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    if-lez v5, :cond_a

    .line 395
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v5, :cond_9

    .line 396
    iget-wide v8, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    int-to-long v10, v5

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_9
    move-object v5, v7

    .line 399
    :goto_9
    iget-wide v8, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    .line 400
    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    iget v11, v4, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    int-to-long v11, v11

    div-long/2addr v9, v11

    .line 401
    invoke-static {v9, v10}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 399
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a

    .line 406
    :cond_a
    invoke-virtual {p0, v7, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 408
    :goto_a
    iget-wide v5, v4, Lcom/android/server/tare/Analyst$Report;->screenOffDurationMs:J

    const-wide/16 v8, 0x0

    cmp-long v5, v5, v8

    if-lez v5, :cond_b

    .line 409
    iget-wide v5, v4, Lcom/android/server/tare/Analyst$Report;->screenOffDischargeMah:J

    .line 410
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/server/tare/Analyst$Report;->screenOffDischargeMah:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    const-wide v8, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v6, v8

    iget-wide v8, v4, Lcom/android/server/tare/Analyst$Report;->screenOffDurationMs:J

    mul-long/2addr v8, v0

    long-to-double v8, v8

    div-double/2addr v6, v8

    .line 411
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%d mAh (%.2f%%/hr)"

    .line 409
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b

    .line 415
    :cond_b
    invoke-virtual {p0, v7, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 417
    :goto_b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 419
    :cond_c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getBatteryScreenOffDischargeMah()J
    .locals 6

    .line 153
    iget-object p0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p0, v3

    if-nez v4, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    iget-wide v4, v4, Lcom/android/server/tare/Analyst$Report;->screenOffDischargeMah:J

    add-long/2addr v1, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getBatteryScreenOffDurationMs()J
    .locals 6

    .line 164
    iget-object p0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p0, v3

    if-nez v4, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    iget-wide v4, v4, Lcom/android/server/tare/Analyst$Report;->screenOffDurationMs:J

    add-long/2addr v1, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public final getLatestBatteryScreenOffRealtimeMs()J
    .locals 2

    .line 289
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/Analyst;->mIBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->computeBatteryScreenOffRealtimeMs()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getLatestScreenOffDischargeMah()J
    .locals 2

    .line 298
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/Analyst;->mIBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->getScreenOffDischargeMah()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getReports()Ljava/util/List;
    .locals 5

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 142
    iget v3, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    add-int/2addr v3, v2

    rem-int/2addr v3, v1

    .line 143
    iget-object v4, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    aget-object v3, v4, v3

    if-eqz v3, :cond_0

    .line 145
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final initializeReport()Lcom/android/server/tare/Analyst$Report;
    .locals 3

    .line 307
    new-instance v0, Lcom/android/server/tare/Analyst$Report;

    invoke-direct {v0}, Lcom/android/server/tare/Analyst$Report;-><init>()V

    .line 308
    invoke-virtual {p0}, Lcom/android/server/tare/Analyst;->getLatestBatteryScreenOffRealtimeMs()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$fputbsScreenOffRealtimeBase(Lcom/android/server/tare/Analyst$Report;J)V

    .line 309
    invoke-virtual {p0}, Lcom/android/server/tare/Analyst;->getLatestScreenOffDischargeMah()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$fputbsScreenOffDischargeMahBase(Lcom/android/server/tare/Analyst$Report;J)V

    return-object v0
.end method

.method public loadReports(Ljava/util/List;)V
    .locals 5

    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    .line 179
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    :goto_0
    if-ge v3, v1, :cond_1

    if-ge v3, v0, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/Analyst$Report;

    aput-object v4, v2, v3

    goto :goto_1

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    const/4 v4, 0x0

    aput-object v4, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget v0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/android/server/tare/Analyst;->getLatestBatteryScreenOffRealtimeMs()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$fputbsScreenOffRealtimeBase(Lcom/android/server/tare/Analyst$Report;J)V

    .line 190
    invoke-virtual {p0}, Lcom/android/server/tare/Analyst;->getLatestScreenOffDischargeMah()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$fputbsScreenOffDischargeMahBase(Lcom/android/server/tare/Analyst$Report;J)V

    :cond_2
    return-void
.end method

.method public noteBatteryLevelChange(I)V
    .locals 10

    .line 195
    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/16 v5, 0x5a

    if-lt p1, v5, :cond_0

    iget v5, v2, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    if-ge v5, p1, :cond_0

    iget v5, v2, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    const/16 v6, 0x19

    if-lt v5, v6, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 200
    iget v6, v2, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    if-ge v6, p1, :cond_1

    iget-wide v6, v2, Lcom/android/server/tare/Analyst$Report;->screenOffDurationMs:J

    const-wide/32 v8, 0x5265c00

    cmp-long v2, v6, v8

    if-ltz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v5, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    add-int/2addr v1, v4

    .line 206
    rem-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    .line 207
    aget-object v1, v0, v1

    if-eqz v1, :cond_4

    .line 209
    invoke-static {v1}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$mclear(Lcom/android/server/tare/Analyst$Report;)V

    .line 210
    iput p1, v1, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    .line 211
    invoke-virtual {p0}, Lcom/android/server/tare/Analyst;->getLatestBatteryScreenOffRealtimeMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$fputbsScreenOffRealtimeBase(Lcom/android/server/tare/Analyst$Report;J)V

    .line 212
    invoke-virtual {p0}, Lcom/android/server/tare/Analyst;->getLatestScreenOffDischargeMah()J

    move-result-wide p0

    invoke-static {v1, p0, p1}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$fputbsScreenOffDischargeMahBase(Lcom/android/server/tare/Analyst$Report;J)V

    return-void

    .line 217
    :cond_4
    iget v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 218
    invoke-virtual {p0}, Lcom/android/server/tare/Analyst;->initializeReport()Lcom/android/server/tare/Analyst$Report;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget p0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aput-object v0, v1, p0

    .line 220
    iput p1, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    return-void

    .line 225
    :cond_5
    iget v1, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    if-ge p1, v1, :cond_7

    .line 226
    iget v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    sub-int/2addr v1, p1

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    .line 228
    invoke-virtual {p0}, Lcom/android/server/tare/Analyst;->getLatestBatteryScreenOffRealtimeMs()J

    move-result-wide v1

    .line 229
    invoke-virtual {p0}, Lcom/android/server/tare/Analyst;->getLatestScreenOffDischargeMah()J

    move-result-wide v3

    .line 230
    invoke-static {v0}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$fgetbsScreenOffRealtimeBase(Lcom/android/server/tare/Analyst$Report;)J

    move-result-wide v5

    cmp-long p0, v5, v1

    if-lez p0, :cond_6

    const-wide/16 v5, 0x0

    .line 232
    invoke-static {v0, v5, v6}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$fputbsScreenOffRealtimeBase(Lcom/android/server/tare/Analyst$Report;J)V

    .line 233
    invoke-static {v0, v5, v6}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$fputbsScreenOffDischargeMahBase(Lcom/android/server/tare/Analyst$Report;J)V

    .line 235
    :cond_6
    iget-wide v5, v0, Lcom/android/server/tare/Analyst$Report;->screenOffDurationMs:J

    invoke-static {v0}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$fgetbsScreenOffRealtimeBase(Lcom/android/server/tare/Analyst$Report;)J

    move-result-wide v7

    sub-long v7, v1, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/tare/Analyst$Report;->screenOffDurationMs:J

    .line 237
    iget-wide v5, v0, Lcom/android/server/tare/Analyst$Report;->screenOffDischargeMah:J

    invoke-static {v0}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$fgetbsScreenOffDischargeMahBase(Lcom/android/server/tare/Analyst$Report;)J

    move-result-wide v7

    sub-long v7, v3, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/tare/Analyst$Report;->screenOffDischargeMah:J

    .line 239
    invoke-static {v0, v1, v2}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$fputbsScreenOffRealtimeBase(Lcom/android/server/tare/Analyst$Report;J)V

    .line 240
    invoke-static {v0, v3, v4}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$fputbsScreenOffDischargeMahBase(Lcom/android/server/tare/Analyst$Report;J)V

    .line 242
    :cond_7
    iput p1, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    return-void
.end method

.method public noteTransaction(Lcom/android/server/tare/Ledger$Transaction;)V
    .locals 6

    .line 246
    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/server/tare/Analyst;->initializeReport()Lcom/android/server/tare/Analyst$Report;

    move-result-object v2

    aput-object v2, v0, v1

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget p0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object p0, v0, p0

    .line 250
    iget v0, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-static {v0}, Lcom/android/server/tare/EconomicPolicy;->getEventType(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_3

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 254
    :cond_1
    iget-wide v0, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    neg-long v2, v0

    iget-wide v4, p1, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    .line 255
    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    neg-long v0, v0

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    .line 256
    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    goto :goto_0

    :cond_2
    neg-long v2, v0

    cmp-long p1, v2, v4

    if-gez p1, :cond_6

    .line 258
    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    add-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    .line 259
    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    goto :goto_0

    .line 263
    :cond_3
    iget-wide v0, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    .line 264
    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    .line 265
    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    goto :goto_0

    :cond_4
    cmp-long p1, v0, v2

    if-gez p1, :cond_6

    .line 267
    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    .line 268
    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    goto :goto_0

    .line 272
    :cond_5
    iget-wide v0, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_6

    .line 273
    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    .line 274
    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    :cond_6
    :goto_0
    return-void
.end method

.method public final padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p2, p0

    const/4 p0, 0x2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x1

    .line 317
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {v0, p0}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tearDown()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 281
    :goto_0
    iget-object v2, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const/4 v3, 0x0

    .line 282
    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_0
    iput v0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    return-void
.end method
