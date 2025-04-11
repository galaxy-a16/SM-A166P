.class public Lcom/android/server/vibrator/SemPatternVibration;
.super Lcom/android/server/vibrator/SemVibration;
.source "SemPatternVibration.java"


# instance fields
.field public mHasEngineData:Z

.field public mIsExecutablePkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/SemVibrationBundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/SemVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mHasEngineData:Z

    return-void
.end method


# virtual methods
.method public final getColorfulPattern([J)[J
    .locals 10

    array-length p0, p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_0

    aget-wide v4, p1, v2

    cmp-long p0, v4, v0

    if-gez p0, :cond_0

    return-object p1

    :cond_0
    new-array p0, v3, [J

    array-length v3, p1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v6, p1, v4

    int-to-long v8, v5

    add-long/2addr v8, v6

    long-to-int v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    aput-wide v0, p0, v2

    int-to-long v0, v5

    const/4 p1, 0x1

    aput-wide v0, p0, p1

    return-object p0
.end method

.method public final getHapticEngineVibration([I)Lcom/android/server/vibrator/HalVibration;
    .locals 14

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/SemPatternVibration;->hapticEngineValidation([I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getCustomPattern([I)[J

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {v3, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternByIndex(I)[J

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/SemPatternVibration;->getColorfulPattern([J)[J

    move-result-object v8

    array-length v0, v8

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    aget-wide v3, v8, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not supported.(colorful)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibratorManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    if-le v0, v2, :cond_3

    invoke-virtual {p0, v8}, Lcom/android/server/vibrator/SemPatternVibration;->isExecutablePattern([J)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    new-instance v0, Lcom/android/server/vibrator/HalVibration;

    iget-object v4, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/vibrator/SemVibration;->mEffect:Landroid/os/CombinedVibration;

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget v2, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getIndexDuration(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    int-to-long v6, v1

    iget v9, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    const/4 v10, -0x1

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCallerInfo()Lcom/android/server/vibrator/Vibration$CallerInfo;

    move-result-object v13

    move-object v3, v0

    move-object v11, p1

    invoke-direct/range {v3 .. v13}, Lcom/android/server/vibrator/HalVibration;-><init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;J[JII[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    return-object v0
.end method

.method public final getPatternVibration()Lcom/android/server/vibrator/HalVibration;
    .locals 13

    iget-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternByIndex(I)[J

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/vibrator/SemPatternVibration;->patternValidation([J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    invoke-static {v7, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect;->semSetMagnitude(I)V

    invoke-static {v0}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v4

    new-instance v0, Lcom/android/server/vibrator/HalVibration;

    iget-object v3, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget v2, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getIndexDuration(I)I

    move-result v1

    int-to-long v5, v1

    iget v8, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget v2, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternFrequencyByIndex(I)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCallerInfo()Lcom/android/server/vibrator/Vibration$CallerInfo;

    move-result-object v12

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/android/server/vibrator/HalVibration;-><init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;J[JII[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    return-object v0
.end method

.method public getVibration()Lcom/android/server/vibrator/HalVibration;
    .locals 3

    invoke-static {}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getIsHapticEngineSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getEngineData(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget v2, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->hasEngineData(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mHasEngineData:Z

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/SemPatternVibration;->getHapticEngineVibration([I)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemPatternVibration;->getPatternVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0
.end method

.method public final hapticEngineValidation([I)Z
    .locals 4

    const-string p0, "VibratorManagerService"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "engine data is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    aget v1, p1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    aget v1, p1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aget v1, p1, v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    aget v1, p1, v1

    if-nez v1, :cond_1

    aget v1, p1, v2

    if-nez v1, :cond_1

    const-string p1, "Empty pattern for haptic engine."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->isColorfulDataFormat([I)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "data is not haptic engine data"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    return v3
.end method

.method public final isAll0([J)Z
    .locals 6

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "VibratorManagerService"

    const-string p1, "isAll0() is true"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final isExecutablePattern([J)Z
    .locals 13

    const-string v0, "VibratorManagerService"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "isExecutablePattern() - pattern is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    array-length v2, p1

    iget v3, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    if-lt v3, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExecutablePattern() - length = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", repeat = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    aget-wide v4, p1, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-lez v4, :cond_2

    return v5

    :cond_2
    div-int/lit8 v4, v3, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-ne v4, v3, :cond_3

    div-int/lit8 v4, v2, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-eq v4, v2, :cond_4

    :cond_3
    div-int/lit8 v4, v3, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-eq v4, v3, :cond_5

    div-int/lit8 v3, v2, 0x2

    mul-int/lit8 v3, v3, 0x2

    if-eq v3, v2, :cond_5

    :cond_4
    add-int/lit8 v3, v2, -0x1

    aget-wide v3, p1, v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_5

    return v5

    :cond_5
    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_7

    iget v4, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    add-int/2addr v4, v3

    add-int/2addr v4, v5

    add-int/lit8 v8, v4, 0x1

    if-ge v8, v2, :cond_6

    aget-wide v9, p1, v4

    aget-wide v11, p1, v8

    add-long/2addr v9, v11

    cmp-long v4, v9, v6

    if-lez v4, :cond_6

    return v5

    :cond_6
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This pattern is not executable. repeat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pattern["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, p1, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x3e8

    if-ge v0, v3, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, p1, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return v1
.end method

.method public final patternValidation([J)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "VibratorManagerService"

    if-ne v1, v2, :cond_2

    aget-wide v1, p1, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    const-string v8, "This "

    if-nez v7, :cond_1

    aget-wide v9, p1, v3

    cmp-long v7, v9, v5

    if-nez v7, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is blank pattern.(common)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    cmp-long v1, v1, v5

    if-gez v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not supported.(common)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    array-length v1, p1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/SemPatternVibration;->isAll0([J)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    array-length v2, p1

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    if-le v1, v2, :cond_4

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/SemPatternVibration;->isExecutablePattern([J)Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    return v3

    :cond_5
    :goto_0
    const-string/jumbo v1, "semPatternVibrate() is failed by illegal argument."

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semPatternVibrate() - pattern.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", repeat = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semPatternVibrate() - token = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mHasEngineData:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "semColorfulVibrate : "

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "semPatternVibrate : "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCommonLog()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
