.class public Lcom/android/server/vibrator/SemIndexVibration;
.super Lcom/android/server/vibrator/SemVibration;
.source "SemIndexVibration.java"


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/SemVibrationBundle;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/SemVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    return-void
.end method


# virtual methods
.method public getCommonData()[Lcom/samsung/android/server/vibrator/CommonPatternInfo;
    .locals 2

    .line 29
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HYBRID_HAPTIC()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-static {v0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isRamIndexValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-static {v0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isResourceIndexValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget p0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getResourceIndexData(I)[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object p0

    return-object p0

    .line 34
    :cond_1
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-static {v0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isHybridIndexValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget p0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getHybridIndexData(I)[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getVibration()Lcom/android/server/vibrator/HalVibration;
    .locals 13

    .line 16
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->commonValidation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemIndexVibration;->isSilentPatternIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "VibratorManagerService"

    const-string v0, "Silent vibration is ignored."

    .line 20
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 24
    :cond_1
    new-instance v0, Lcom/android/server/vibrator/HalVibration;

    iget-object v3, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/vibrator/SemVibration;->mEffect:Landroid/os/CombinedVibration;

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget v2, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getIndexDuration(I)I

    move-result v1

    int-to-long v5, v1

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemIndexVibration;->getCommonData()[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCallerInfo()Lcom/android/server/vibrator/Vibration$CallerInfo;

    move-result-object v12

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/android/server/vibrator/HalVibration;-><init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;J[JII[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    return-object v0
.end method

.method public final isSilentPatternIndex()Z
    .locals 1

    .line 41
    iget p0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    const v0, 0xc3a4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semIndexVibrate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCommonLog()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
