.class public final Lcom/android/server/vibrator/SetAmplitudeVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "SetAmplitudeVibratorStep.java"


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-void
.end method


# virtual methods
.method public acceptVibratorCompleteCallback(I)Z
    .locals 5

    .line 55
    invoke-super {p0, p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->acceptVibratorCompleteCallback(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 64
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/vibrator/Step;->startTime:J

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J
    .locals 10

    .line 183
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 185
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const-wide/16 v3, 0x0

    move v5, p2

    :cond_0
    if-ge v5, v1, :cond_3

    .line 189
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    .line 190
    instance-of v7, v6, Landroid/os/vibrator/StepSegment;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Landroid/os/vibrator/StepSegment;

    .line 191
    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {v6}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v6

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v1, :cond_2

    if-ltz v2, :cond_2

    const/4 v5, -0x1

    move v9, v5

    move v5, v2

    move v2, v9

    :cond_2
    if-ne v5, p2, :cond_0

    const-wide/16 p0, 0x1388

    .line 202
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_3
    :goto_0
    if-ne v5, v1, :cond_4

    .line 205
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result p1

    if-gez p1, :cond_4

    .line 208
    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v3, p0

    :cond_4
    return-wide v3
.end method

.method public play()Ljava/util/List;
    .locals 13

    const-string v0, "SetAmplitudeVibratorStep"

    const-wide/32 v1, 0x800000

    .line 79
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 81
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 82
    iget-wide v5, p0, Lcom/android/server/vibrator/Step;->startTime:J

    sub-long v5, v3, v5

    .line 88
    iget-boolean v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    neg-long v3, v5

    .line 91
    invoke-virtual {p0, v3, v4}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->turnVibratorBackOn(J)V

    new-array v0, v9, [Lcom/android/server/vibrator/Step;

    .line 92
    new-instance v12, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;

    iget-object v4, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v5, p0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v7, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v8, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v9, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    iget-wide v10, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    const/4 p0, 0x0

    aput-object v12, v0, p0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 96
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    iget v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 97
    instance-of v5, v0, Landroid/os/vibrator/StepSegment;

    if-nez v5, :cond_1

    const-string v3, "VibrationThread"

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring wrong segment for a SetAmplitudeVibratorStep: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-wide v3, p0, Lcom/android/server/vibrator/Step;->startTime:J

    invoke-virtual {p0, v3, v4, v9}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(JI)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 104
    :cond_1
    :try_start_2
    move-object v5, v0

    check-cast v5, Landroid/os/vibrator/StepSegment;

    .line 105
    invoke-virtual {v5}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v10

    cmp-long v6, v10, v7

    if-nez v6, :cond_2

    .line 107
    iget-wide v3, p0, Lcom/android/server/vibrator/Step;->startTime:J

    invoke-virtual {p0, v3, v4, v9}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(JI)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 110
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v6

    const/4 v10, 0x0

    cmpl-float v6, v6, v10

    if-nez v6, :cond_3

    .line 112
    iget-wide v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_4

    .line 114
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    goto :goto_0

    .line 120
    :cond_3
    iget-object v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    move-result-wide v3

    cmp-long v6, v3, v7

    if-lez v6, :cond_4

    .line 123
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startVibrating(JLandroid/os/vibrator/StepSegment;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    .line 136
    :cond_4
    :goto_0
    iget-wide v3, p0, Lcom/android/server/vibrator/Step;->startTime:J

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 137
    invoke-virtual {p0, v3, v4, v9}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(JI)Ljava/util/List;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 140
    throw p0
.end method

.method public final startVibrating(J)J
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/vibrator/VibratorController;->on(JJ)J

    move-result-wide p1

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)J

    .line 173
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibrationStats;->reportVibratorOn(J)V

    return-wide p1
.end method

.method public final startVibrating(JLandroid/os/vibrator/StepSegment;)J
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->isSupportIntensityControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p3}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p3}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/server/vibrator/VibratorController;->setAmplitude(F)V

    .line 225
    :cond_0
    iget-object p3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/android/server/vibrator/VibratorController;->on(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final turnVibratorBackOn(J)V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    :cond_0
    add-long/2addr v0, p1

    .line 157
    iget-object p1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result p1

    .line 158
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startVibrating(J)J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->changeAmplitude(F)V

    :cond_1
    return-void
.end method
