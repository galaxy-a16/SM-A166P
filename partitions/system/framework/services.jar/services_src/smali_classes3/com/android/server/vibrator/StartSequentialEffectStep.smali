.class public final Lcom/android/server/vibrator/StartSequentialEffectStep;
.super Lcom/android/server/vibrator/Step;
.source "StartSequentialEffectStep.java"


# instance fields
.field public final currentIndex:I

.field public mVibratorsOnMaxDuration:J

.field public final sequentialEffect:Landroid/os/CombinedVibration$Sequential;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    .line 71
    iput-object p4, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    .line 72
    iput p5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;Landroid/os/CombinedVibration$Sequential;)V
    .locals 10

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long v6, v0, v2

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V

    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .locals 0

    .line 158
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    return-object p0
.end method

.method public cancelImmediately()V
    .locals 0

    .line 0
    return-void
.end method

.method public final createEffectToVibratorMapping(Landroid/os/CombinedVibration;)Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
    .locals 1

    .line 185
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    check-cast p1, Landroid/os/CombinedVibration$Mono;

    invoke-direct {v0, p0, p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Mono;)V

    return-object v0

    .line 188
    :cond_0
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_1

    .line 189
    new-instance v0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    invoke-direct {v0, p0, p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Stereo;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVibratorOnDuration()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    return-wide v0
.end method

.method public nextStep()Lcom/android/server/vibrator/Step;
    .locals 7

    .line 171
    iget v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    add-int/lit8 v6, v0, 0x1

    .line 172
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v3, v2, v0

    .line 177
    new-instance v0, Lcom/android/server/vibrator/StartSequentialEffectStep;

    iget-object v2, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V

    return-object v0
.end method

.method public play()Ljava/util/List;
    .locals 15

    const-string v0, "StartSequentialEffectStep"

    const-wide/32 v1, 0x800000

    .line 82
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, -0x1

    .line 84
    iput-wide v3, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    const-wide/16 v3, 0x0

    .line 90
    :try_start_0
    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v5}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/CombinedVibration;

    .line 91
    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/StartSequentialEffectStep;->createEffectToVibratorMapping(Landroid/os/CombinedVibration;)Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    .line 140
    iget-wide v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v7, v5, v3

    if-ltz v7, :cond_1

    cmp-long v3, v5, v3

    if-lez v3, :cond_0

    .line 145
    new-instance v3, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    .line 148
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 98
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eqz v6, :cond_c

    .line 99
    iget-object v6, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationStepConductor;->getComposed()Landroid/os/VibrationEffect$Composed;

    move-result-object v6

    .line 100
    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/vibrator/VibrationEffectSegment;

    .line 101
    iget-object v9, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v9}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/vibrator/VibratorController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_5

    .line 140
    iget-wide v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v7, v5, v3

    if-ltz v7, :cond_4

    cmp-long v3, v5, v3

    if-lez v3, :cond_3

    .line 145
    new-instance v3, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_4

    .line 148
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 106
    :cond_5
    :try_start_2
    instance-of v9, v7, Landroid/os/vibrator/StepSegment;

    const/4 v10, -0x1

    if-eqz v9, :cond_9

    .line 107
    check-cast v7, Landroid/os/vibrator/StepSegment;

    .line 108
    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v9

    if-le v9, v10, :cond_6

    .line 109
    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v6

    goto :goto_2

    .line 110
    :cond_6
    iget-object v6, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/vibrator/HalVibration;->getMagnitude()I

    move-result v6

    .line 112
    :goto_2
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    move-result v9

    if-eqz v9, :cond_7

    const-wide/16 v10, 0x0

    int-to-long v12, v6

    const/4 v14, 0x0

    move-object v9, v8

    .line 113
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/vibrator/VibratorController;->performPrebakedHapticPattern(JJZ)V

    goto :goto_3

    .line 116
    :cond_7
    invoke-virtual {v8}, Lcom/android/server/vibrator/VibratorController;->isSupportIntensityControl()Z

    move-result v9

    if-eqz v9, :cond_8

    int-to-long v9, v6

    .line 117
    invoke-virtual {v8, v9, v10}, Lcom/android/server/vibrator/VibratorController;->setIntensity(J)V

    .line 121
    :cond_8
    :goto_3
    invoke-virtual {v8}, Lcom/android/server/vibrator/VibratorController;->isSupportFrequencyControl()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 122
    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v6

    float-to-long v6, v6

    invoke-virtual {v8, v6, v7}, Lcom/android/server/vibrator/VibratorController;->setFrequencyType(J)V

    goto :goto_6

    .line 124
    :cond_9
    instance-of v7, v7, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v7, :cond_c

    .line 125
    invoke-virtual {v8}, Lcom/android/server/vibrator/VibratorController;->isSupportIntensityControl()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 126
    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v7

    if-le v7, v10, :cond_a

    .line 127
    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v6

    :goto_4
    int-to-long v6, v6

    goto :goto_5

    .line 128
    :cond_a
    iget-object v6, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/vibrator/HalVibration;->getMagnitude()I

    move-result v6

    goto :goto_4

    .line 126
    :goto_5
    invoke-virtual {v8, v6, v7}, Lcom/android/server/vibrator/VibratorController;->setIntensity(J)V

    goto :goto_6

    :cond_b
    const/high16 v6, 0x3f800000    # 1.0f

    .line 130
    invoke-virtual {v8, v6}, Lcom/android/server/vibrator/VibratorController;->setAmplitude(F)V

    .line 136
    :cond_c
    :goto_6
    invoke-virtual {p0, v5, v0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;Ljava/util/List;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 137
    iget-object v5, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v6, v5, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 138
    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    iget v5, v5, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    iget-wide v7, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 137
    invoke-interface {v6, v5, v7, v8}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->noteVibratorOn(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    iget-wide v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v7, v5, v3

    if-ltz v7, :cond_e

    cmp-long v3, v5, v3

    if-lez v3, :cond_d

    .line 145
    new-instance v3, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_7

    .line 146
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v3

    :goto_7
    if-eqz v3, :cond_e

    .line 148
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_e
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_0
    move-exception v5

    .line 140
    iget-wide v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v8, v6, v3

    if-ltz v8, :cond_10

    cmp-long v3, v6, v3

    if-lez v3, :cond_f

    .line 145
    new-instance v3, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_8

    .line 146
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v3

    :goto_8
    if-eqz v3, :cond_10

    .line 148
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_10
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 152
    throw v5
.end method

.method public final startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Ljava/util/List;)J
    .locals 4

    .line 278
    invoke-virtual {p1}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    invoke-virtual {p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorOnDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    return-wide v0

    .line 285
    :cond_0
    iget-object p0, p1, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getDuration()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final startVibrating(Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;Ljava/util/List;)J
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    return-wide v4

    .line 214
    :cond_0
    new-array v6, v3, [Lcom/android/server/vibrator/AbstractVibratorStep;

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const/16 v17, 0x0

    move/from16 v13, v17

    :goto_0
    if-ge v13, v3, :cond_1

    .line 217
    iget-object v7, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 218
    invoke-virtual {v7}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v1, v13}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->vibratorIdAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/android/server/vibrator/VibratorController;

    .line 219
    invoke-virtual {v1, v13}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->effectAt(I)Landroid/os/VibrationEffect$Composed;

    move-result-object v11

    const/4 v12, 0x0

    const-wide/16 v18, 0x0

    move-wide v8, v15

    move/from16 v20, v13

    move-wide/from16 v13, v18

    .line 217
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object v7

    aput-object v7, v6, v20

    add-int/lit8 v13, v20, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    .line 225
    aget-object v1, v6, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0

    .line 238
    :cond_2
    iget-object v8, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v8, v8, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->getRequiredSyncCapabilities()J

    move-result-wide v9

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->getVibratorIds()[I

    move-result-object v1

    .line 238
    invoke-interface {v8, v9, v10, v1}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->prepareSyncedVibration(J[I)Z

    move-result v1

    move-wide v9, v4

    move/from16 v8, v17

    :goto_1
    if-ge v8, v3, :cond_4

    .line 242
    aget-object v11, v6, v8

    .line 243
    invoke-virtual {v0, v11, v2}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Ljava/util/List;)J

    move-result-wide v11

    cmp-long v13, v11, v4

    if-gez v13, :cond_3

    move v3, v7

    goto :goto_2

    .line 249
    :cond_3
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    move/from16 v3, v17

    :goto_2
    if-eqz v1, :cond_5

    if-nez v3, :cond_5

    cmp-long v4, v9, v4

    if-lez v4, :cond_5

    .line 255
    iget-object v4, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/server/vibrator/Vibration;->id:J

    .line 255
    invoke-interface {v4, v5, v6}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->triggerSyncedVibration(J)Z

    move-result v17

    and-int v3, v3, v17

    :cond_5
    if-eqz v3, :cond_6

    .line 263
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    :goto_3
    if-ltz v4, :cond_6

    .line 264
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/Step;

    invoke-virtual {v5}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    if-nez v17, :cond_7

    .line 271
    iget-object v0, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->cancelSyncedVibration()V

    :cond_7
    if-eqz v3, :cond_8

    const-wide/16 v9, -0x1

    :cond_8
    return-wide v9
.end method
