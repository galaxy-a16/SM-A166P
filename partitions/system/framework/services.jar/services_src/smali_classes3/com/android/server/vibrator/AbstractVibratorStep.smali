.class public abstract Lcom/android/server/vibrator/AbstractVibratorStep;
.super Lcom/android/server/vibrator/Step;
.source "AbstractVibratorStep.java"


# instance fields
.field public final controller:Lcom/android/server/vibrator/VibratorController;

.field public final effect:Landroid/os/VibrationEffect$Composed;

.field public mPendingVibratorOffDeadline:J

.field public mVibratorCompleteCallbackReceived:Z

.field public mVibratorOnResult:J

.field public final segmentIndex:I


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    .line 55
    iput-object p4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 56
    iput-object p5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 57
    iput p6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    .line 58
    iput-wide p7, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    return-void
.end method


# virtual methods
.method public acceptVibratorCompleteCallback(I)Z
    .locals 6

    .line 72
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 78
    :cond_0
    iget-wide v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long p1, v2, v4

    const/4 v0, 0x1

    if-lez p1, :cond_1

    move v1, v0

    :cond_1
    const-wide/16 v2, 0x0

    .line 86
    iput-wide v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 87
    iput-boolean v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    return v1
.end method

.method public cancel()Ljava/util/List;
    .locals 9

    .line 93
    new-instance v8, Lcom/android/server/vibrator/CompleteEffectVibratorStep;

    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-wide v6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/vibrator/CompleteEffectVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/VibratorController;J)V

    filled-new-array {v8}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public cancelImmediately()V
    .locals 4

    .line 99
    iget-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    :cond_0
    return-void
.end method

.method public changeAmplitude(F)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorController;->setAmplitude(F)V

    .line 139
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStats;->reportSetAmplitude()V

    return-void
.end method

.method public getVibratorId()I
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getId()I

    move-result p0

    return p0
.end method

.method public getVibratorOnDuration()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    return-wide v0
.end method

.method public handleVibratorOnResult(J)J
    .locals 2

    .line 106
    iput-wide p1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    add-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    goto :goto_0

    .line 118
    :cond_0
    iput-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 120
    :goto_0
    iget-wide p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    return-wide p0
.end method

.method public nextSteps(I)Ljava/util/List;
    .locals 6

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 150
    iget-wide v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    add-long/2addr v0, v2

    .line 155
    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public nextSteps(JI)Ljava/util/List;
    .locals 9

    .line 166
    iget v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    add-int/2addr v0, p3

    .line 167
    iget-object p3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {p3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 168
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    if-lt v0, p3, :cond_0

    if-ltz v1, :cond_0

    sub-int v2, p3, v1

    sub-int v3, v0, v1

    .line 173
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    div-int/2addr v3, v2

    invoke-virtual {v4, v3}, Lcom/android/server/vibrator/VibrationStats;->reportRepetition(I)V

    sub-int/2addr v0, p3

    .line 174
    rem-int/2addr v0, v2

    add-int/2addr v0, v1

    :cond_0
    move v6, v0

    .line 176
    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget-wide v7, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    move-wide v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object p0

    if-nez p0, :cond_1

    .line 178
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    goto :goto_0

    :cond_1
    filled-new-array {p0}, [Lcom/android/server/vibrator/Step;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public stopVibrating()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->off()V

    .line 129
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStats;->reportVibratorOff()V

    const-wide/16 v0, 0x0

    .line 130
    iput-wide v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    return-void
.end method
