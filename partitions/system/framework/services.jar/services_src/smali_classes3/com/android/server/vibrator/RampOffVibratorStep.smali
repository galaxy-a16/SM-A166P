.class public final Lcom/android/server/vibrator/RampOffVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "RampOffVibratorStep.java"


# instance fields
.field public final mAmplitudeDelta:F

.field public final mAmplitudeTarget:F


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/VibratorController;J)V
    .locals 10

    move-object v9, p0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p6

    move-wide/from16 v7, p7

    .line 34
    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    move v0, p4

    .line 36
    iput v0, v9, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    move v0, p5

    .line 37
    iput v0, v9, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .locals 4

    .line 47
    new-instance v0, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;)V

    filled-new-array {v0}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    .line 47
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isCleanUp()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public play()Ljava/util/List;
    .locals 14

    const-string v0, "RampOffVibratorStep"

    const-wide/32 v1, 0x800000

    .line 53
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 60
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 64
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 67
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractVibratorStep;->changeAmplitude(F)V

    .line 69
    iget v0, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeTarget:F

    iget v3, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

    sub-float v8, v0, v3

    const v0, 0x3a83126f    # 0.001f

    cmpg-float v0, v8, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v0, :cond_1

    new-array v0, v4, [Lcom/android/server/vibrator/Step;

    .line 74
    new-instance v4, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v5, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v4, v5, v6, v7, p0}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;)V

    aput-object v4, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_1
    :try_start_2
    new-array v0, v4, [Lcom/android/server/vibrator/Step;

    .line 77
    new-instance v13, Lcom/android/server/vibrator/RampOffVibratorStep;

    iget-object v5, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v6, p0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v4, v5, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 79
    invoke-virtual {v4}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v4

    int-to-long v9, v4

    add-long/2addr v6, v9

    iget v9, p0, Lcom/android/server/vibrator/RampOffVibratorStep;->mAmplitudeDelta:F

    iget-object v10, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-wide v11, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lcom/android/server/vibrator/RampOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/VibratorController;J)V

    aput-object v13, v0, v3

    .line 77
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 84
    throw p0
.end method
