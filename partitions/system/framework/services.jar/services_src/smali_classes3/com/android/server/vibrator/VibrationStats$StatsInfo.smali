.class public final Lcom/android/server/vibrator/VibrationStats$StatsInfo;
.super Ljava/lang/Object;
.source "VibrationStats.java"


# instance fields
.field public final endLatencyMillis:I

.field public final endedBySameUid:Z

.field public final endedByUsage:I

.field public final halComposeCount:I

.field public final halComposePwleCount:I

.field public final halCompositionSize:I

.field public final halOffCount:I

.field public final halOnCount:I

.field public final halPerformCount:I

.field public final halPwleSize:I

.field public final halSetAmplitudeCount:I

.field public final halSetExternalControlCount:I

.field public final halSupportedCompositionPrimitivesUsed:[I

.field public final halSupportedEffectsUsed:[I

.field public final halUnsupportedCompositionPrimitivesUsed:[I

.field public final halUnsupportedEffectsUsed:[I

.field public final interruptedUsage:I

.field public mIsWritten:Z

.field public final repeatCount:I

.field public final startLatencyMillis:I

.field public final status:I

.field public final totalDurationMillis:I

.field public final uid:I

.field public final usage:I

.field public final vibrationType:I

.field public final vibratorOnMillis:I


# direct methods
.method public constructor <init>(IIILcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/VibrationStats;J)V
    .locals 4

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    .line 316
    iput p2, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibrationType:I

    .line 317
    iput p3, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->usage:I

    .line 318
    invoke-virtual {p4}, Lcom/android/server/vibrator/Vibration$Status;->getProtoEnumValue()I

    move-result p2

    iput p2, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->status:I

    .line 319
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmEndedByUid(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ne p1, p2, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedBySameUid:Z

    .line 320
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmEndedByUsage(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedByUsage:I

    .line 321
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmInterruptedUsage(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->interruptedUsage:I

    .line 322
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmRepeatCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->repeatCount:I

    .line 327
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmCreateUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J

    move-result-wide p1

    sub-long p1, p6, p1

    const-wide/16 v0, 0x0

    .line 328
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->totalDurationMillis:I

    .line 329
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorOnTotalDurationMillis(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibratorOnMillis:I

    .line 331
    invoke-virtual {p5}, Lcom/android/server/vibrator/VibrationStats;->hasStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 333
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmStartUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J

    move-result-wide p1

    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmCreateUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J

    move-result-wide v2

    sub-long/2addr p1, v2

    .line 334
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    .line 335
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmEndUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J

    move-result-wide p1

    sub-long/2addr p6, p1

    .line 336
    invoke-static {v0, v1, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    goto :goto_1

    .line 338
    :cond_1
    iput p4, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    iput p4, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    .line 341
    :goto_1
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorComposeCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposeCount:I

    .line 342
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorComposePwleCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposePwleCount:I

    .line 343
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorOnCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOnCount:I

    .line 344
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorOffCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOffCount:I

    .line 345
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorPerformCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformCount:I

    .line 346
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorSetAmplitudeCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetAmplitudeCount:I

    .line 347
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorSetExternalControlCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetExternalControlCount:I

    .line 348
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibrationCompositionTotalSize(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halCompositionSize:I

    .line 349
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibrationPwleTotalSize(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPwleSize:I

    .line 350
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorPrimitivesUsed(Lcom/android/server/vibrator/VibrationStats;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 351
    invoke-static {p1, p3}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedCompositionPrimitivesUsed:[I

    .line 352
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorEffectsUsed(Lcom/android/server/vibrator/VibrationStats;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 353
    invoke-static {p1, p3}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedEffectsUsed:[I

    .line 354
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorPrimitivesUsed(Lcom/android/server/vibrator/VibrationStats;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 355
    invoke-static {p1, p4}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedCompositionPrimitivesUsed:[I

    .line 356
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorEffectsUsed(Lcom/android/server/vibrator/VibrationStats;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 357
    invoke-static {p1, p4}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedEffectsUsed:[I

    return-void
.end method

.method public static filteredKeys(Landroid/util/SparseBooleanArray;Z)[I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 384
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 385
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 391
    :cond_2
    new-array v1, v2, [I

    move v2, v0

    .line 392
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 393
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-ne v3, p1, :cond_3

    add-int/lit8 v3, v2, 0x1

    .line 394
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v2

    move v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method


# virtual methods
.method public isWritten()Z
    .locals 0

    .line 362
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    return p0
.end method

.method public writeVibrationReported()V
    .locals 34

    move-object/from16 v0, p0

    .line 366
    iget-boolean v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    if-eqz v1, :cond_0

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing same vibration stats multiple times for uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibrationStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    .line 369
    iput-boolean v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    const/16 v2, 0x1e7

    .line 371
    iget v3, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibrationType:I

    iget v6, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->usage:I

    iget v7, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->status:I

    iget-boolean v8, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedBySameUid:Z

    iget v9, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedByUsage:I

    iget v10, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->interruptedUsage:I

    iget v11, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->repeatCount:I

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->totalDurationMillis:I

    int-to-long v12, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibratorOnMillis:I

    int-to-long v14, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    move/from16 v33, v3

    int-to-long v2, v1

    move-wide/from16 v16, v2

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    int-to-long v1, v1

    move-wide/from16 v18, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposeCount:I

    move/from16 v20, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposePwleCount:I

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOnCount:I

    move/from16 v22, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOffCount:I

    move/from16 v23, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformCount:I

    move/from16 v24, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetAmplitudeCount:I

    move/from16 v25, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetExternalControlCount:I

    move/from16 v26, v1

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedCompositionPrimitivesUsed:[I

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedEffectsUsed:[I

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedCompositionPrimitivesUsed:[I

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedEffectsUsed:[I

    move-object/from16 v30, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halCompositionSize:I

    move/from16 v31, v1

    iget v0, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPwleSize:I

    move/from16 v32, v0

    move/from16 v3, v33

    const/16 v2, 0x1e7

    invoke-static/range {v2 .. v32}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IIIZIIIJJJJIIIIIII[I[I[I[III)V

    return-void
.end method
