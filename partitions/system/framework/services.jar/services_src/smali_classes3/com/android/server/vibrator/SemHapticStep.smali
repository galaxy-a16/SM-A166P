.class public final Lcom/android/server/vibrator/SemHapticStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "SemHapticStep.java"


# instance fields
.field public mNextOffTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    iput-wide p7, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    return-void
.end method


# virtual methods
.method public acceptVibratorCompleteCallback(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    :cond_0
    iget-wide v2, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    iget-wide v4, p0, Lcom/android/server/vibrator/Step;->startTime:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public play()Ljava/util/List;
    .locals 15

    const-wide/32 v0, 0x800000

    const-string v2, "SemHapticStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v4, v3, Landroid/os/vibrator/SemHapticSegment;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring wrong segment for a SemHapticSegment: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_0
    :try_start_1
    check-cast v3, Landroid/os/vibrator/SemHapticSegment;

    iget-object v4, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/vibrator/HalVibration;->getMagnitude()I

    move-result v8

    invoke-virtual {v3}, Landroid/os/vibrator/SemHapticSegment;->getSepIndex()I

    move-result v7

    invoke-virtual {v4}, Lcom/android/server/vibrator/HalVibration;->getTimeOut()J

    move-result-wide v12

    iget-object v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v3

    const/4 v14, -0x1

    if-le v3, v14, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sepIndex="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", intensity="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", repeat="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", duration="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, p0

    move v9, v3

    move-wide v10, v12

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/vibrator/SemHapticStep;->startVibrating(IIZJ)V

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Lcom/android/server/vibrator/HalVibration;->getEngineData()[I

    move-result-object v2

    if-nez v2, :cond_2

    const-wide v2, 0x7fffffffffffec77L

    iput-wide v2, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    move v5, v14

    goto :goto_1

    :cond_2
    iget-wide v2, p0, Lcom/android/server/vibrator/Step;->startTime:J

    add-long/2addr v2, v12

    iput-wide v2, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    :goto_1
    iget-wide v2, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(JI)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final startVibrating(IIZJ)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Turning on vibrator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p4, "ms"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "SemHapticStep"

    invoke-static {p5, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p4

    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HYBRID_HAPTIC()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-virtual {p4}, Lcom/android/server/vibrator/HalVibration;->getCommonData()[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object p5

    if-eqz p5, :cond_1

    invoke-virtual {p4}, Lcom/android/server/vibrator/HalVibration;->getCommonData()[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object p1

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x5

    const/4 p5, 0x1

    add-int/2addr p1, p5

    new-array p1, p1, [I

    invoke-virtual {p4}, Lcom/android/server/vibrator/HalVibration;->getCommonData()[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    :goto_0
    invoke-virtual {p4}, Lcom/android/server/vibrator/HalVibration;->getCommonData()[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_0

    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p4}, Lcom/android/server/vibrator/HalVibration;->getCommonData()[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object v2

    aget-object v2, v2, v1

    iget v2, v2, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->type:I

    aput v2, p1, p5

    add-int/lit8 p5, v0, 0x1

    invoke-virtual {p4}, Lcom/android/server/vibrator/HalVibration;->getCommonData()[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object v2

    aget-object v2, v2, v1

    iget v2, v2, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->index:I

    aput v2, p1, v0

    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p4}, Lcom/android/server/vibrator/HalVibration;->getCommonData()[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object v2

    aget-object v2, v2, v1

    iget v2, v2, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->scale:I

    aput v2, p1, p5

    add-int/lit8 p5, v0, 0x1

    invoke-virtual {p4}, Lcom/android/server/vibrator/HalVibration;->getCommonData()[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object v2

    aget-object v2, v2, v1

    iget v2, v2, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->duration:I

    aput v2, p1, v0

    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p4}, Lcom/android/server/vibrator/HalVibration;->getCommonData()[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object v2

    aget-object v2, v2, v1

    iget v2, v2, Lcom/samsung/android/server/vibrator/CommonPatternInfo;->frequency:I

    aput v2, p1, p5

    add-int/lit8 v1, v1, 0x1

    move p5, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/vibrator/VibratorController;->performCommonInputff([IZI)V

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Lcom/android/server/vibrator/HalVibration;->getEngineData()[I

    move-result-object p5

    if-nez p5, :cond_2

    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    int-to-long v1, p1

    int-to-long v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorController;->performPrebakedHapticPattern(JJZ)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p4}, Lcom/android/server/vibrator/HalVibration;->getEngineData()[I

    move-result-object p1

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController;->performHapticEngine([II)V

    :goto_1
    return-void
.end method
