.class public final Lcom/android/server/vibrator/CompleteEffectVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "CompleteEffectVibratorStep.java"


# instance fields
.field public final mCancelled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/VibratorController;J)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p5

    move-wide v7, p6

    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    move v1, p4

    .line 40
    iput-boolean v1, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .locals 4

    .line 52
    iget-boolean v0, p0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;)V

    filled-new-array {v0}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    .line 54
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 57
    :cond_0
    invoke-super {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->cancel()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isCleanUp()Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    return p0
.end method

.method public play()Ljava/util/List;
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "CompleteEffectVibratorStep"

    const-wide/32 v2, 0x800000

    .line 62
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 69
    :try_start_0
    iget-boolean v1, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 73
    sget-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 76
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 77
    iget-object v1, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result v1

    .line 78
    iget-wide v6, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x3e8

    sub-long/2addr v6, v8

    .line 81
    iget-object v8, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v8, v8, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 83
    invoke-virtual {v8}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result v8

    int-to-long v8, v8

    .line 82
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 84
    iget-object v8, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v8, v8, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v8}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v8

    int-to-long v8, v8

    const v10, 0x3a83126f    # 0.001f

    cmpg-float v10, v1, v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ltz v10, :cond_3

    cmp-long v10, v6, v8

    if-gtz v10, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    iget-boolean v10, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v10, :cond_2

    add-long/2addr v4, v6

    goto :goto_0

    :cond_2
    iget-wide v4, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    :goto_0
    move-wide/from16 v20, v4

    .line 113
    div-long/2addr v6, v8

    long-to-float v4, v6

    div-float v18, v1, v4

    sub-float v17, v1, v18

    new-array v1, v12, [Lcom/android/server/vibrator/Step;

    .line 115
    new-instance v4, Lcom/android/server/vibrator/RampOffVibratorStep;

    iget-object v14, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v5, v0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v0, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    move-object v13, v4

    move-wide v15, v5

    move-object/from16 v19, v0

    invoke-direct/range {v13 .. v21}, Lcom/android/server/vibrator/RampOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/VibratorController;J)V

    aput-object v4, v1, v11

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 88
    :cond_3
    :goto_1
    :try_start_2
    iget-boolean v1, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v1, :cond_4

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 91
    sget-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_4
    :try_start_3
    new-array v1, v12, [Lcom/android/server/vibrator/Step;

    .line 95
    new-instance v4, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v5, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v6, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    iget-object v0, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;)V

    aput-object v4, v1, v11

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 120
    throw v0
.end method
