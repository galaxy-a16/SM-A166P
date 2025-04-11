.class public final Lcom/android/server/vibrator/ComposePwleVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "ComposePwleVibratorStep.java"


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 9

    move-wide v0, p2

    move-wide/from16 v7, p7

    .line 47
    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-void
.end method


# virtual methods
.method public final isBetterBreakPosition(Ljava/util/List;FI)Z
    .locals 3

    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/RampSegment;

    .line 148
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result p0

    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    if-le p1, p3, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-nez v2, :cond_1

    return v0

    .line 159
    :cond_1
    div-int/lit8 p3, p3, 0x2

    if-ge p1, p3, :cond_2

    return v1

    :cond_2
    cmpg-float p0, p0, p2

    if-gtz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public play()Ljava/util/List;
    .locals 7

    const-string v0, "ComposePwleStep"

    const-wide/32 v1, 0x800000

    .line 53
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getPwleSizeMax()I

    move-result v0

    .line 58
    iget-object v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/vibrator/ComposePwleVibratorStep;->unrollRampSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "VibrationThread"

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring wrong segment for a ComposePwleStep: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 63
    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 72
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/vibrator/RampSegment;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/vibrator/RampSegment;

    .line 73
    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/vibrator/VibratorController;->on([Landroid/os/vibrator/RampSegment;J)J

    move-result-wide v4

    .line 74
    invoke-virtual {p0, v4, v5}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)J

    .line 75
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v6, v4, v5, v3}, Lcom/android/server/vibrator/VibrationStats;->reportComposePwle(J[Landroid/os/vibrator/RampSegment;)V

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 81
    throw p0
.end method

.method public final unrollRampSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;
    .locals 7

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 105
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    move v4, p3

    .line 109
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, p3, :cond_2

    if-ne p2, v1, :cond_0

    if-ltz v2, :cond_2

    move p2, v2

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    .line 119
    instance-of v6, v5, Landroid/os/vibrator/RampSegment;

    if-eqz v6, :cond_2

    .line 120
    check-cast v5, Landroid/os/vibrator/RampSegment;

    .line 121
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0, v0, v3, p3}, Lcom/android/server/vibrator/ComposePwleVibratorStep;->isBetterBreakPosition(Ljava/util/List;FI)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v3

    .line 126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 134
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p3, :cond_3

    const/4 p0, 0x0

    .line 136
    invoke-interface {v0, p0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_3
    return-object v0
.end method
