.class public Lcom/android/server/vibrator/VibrationCustomSettings;
.super Ljava/lang/Object;
.source "VibrationCustomSettings.java"


# instance fields
.field public LEVEL_TO_FORCE_MAGNITUDE:[I

.field public LEVEL_TO_MAGNITUDE:[I

.field public LEVEL_TO_TOUCH_MAGNITUDE:[I

.field public mAudioManager:Landroid/media/AudioManager;

.field public mCallMagnitude:I

.field public final mContext:Landroid/content/Context;

.field public mForceMagnitude:I

.field public mIsEnableIntensity:Z

.field public mIsHapticEngineSupported:Z

.field public mIsHapticSupported:Z

.field public final mLock:Ljava/lang/Object;

.field public mMaxMagnitude:I

.field public mMediaMagnitude:I

.field public mMinMagnitude:I

.field public mMotorType:I

.field public mNotiMagnitude:I

.field public mOnlyWatchConnected:Z

.field public final mService:Lcom/android/server/vibrator/VibratorManagerService;

.field public final mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

.field public mTouchMagnitude:I

.field public final mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;


# direct methods
.method public static bridge synthetic -$$Nest$mgetDefaultVibratorController(Lcom/android/server/vibrator/VibrationCustomSettings;)Lcom/android/server/vibrator/VibratorController;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticEngineSupported:Z

    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 76
    iput-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    new-array v2, v1, [I

    .line 77
    iput-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    new-array v1, v1, [I

    .line 78
    iput-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    const/16 v1, 0x270f

    .line 80
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    .line 81
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    .line 82
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    .line 83
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mForceMagnitude:I

    .line 84
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMaxMagnitude:I

    .line 85
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMinMagnitude:I

    .line 86
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    .line 88
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    .line 89
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mOnlyWatchConnected:Z

    .line 116
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    .line 118
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    .line 120
    invoke-static {}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getInstance()Lcom/samsung/android/server/vibrator/VibratorHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    return-void
.end method

.method public static loadMagnitudeList(Z[I[I)[I
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public static loadTouchMagnitudeList(Z[I[I)[I
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method


# virtual methods
.method public addCustomDump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "  VibrationSettings information"

    .line 521
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsHapticSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsEnableIntensity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mTouchMagnitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCallMagnitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mNotiMagnitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mForceMagnitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mForceMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mMediaMagnitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    LEVEL_TO_MAGNITUDE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    LEVEL_TO_TOUCH_MAGNITUDE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public bootCompleteReady()V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->registerFoldStateListener()V

    return-void
.end method

.method public getCurrentMagnitude(I)I
    .locals 1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_3

    const/16 v0, 0x12

    if-eq p1, v0, :cond_2

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_2

    const/16 v0, 0x31

    if-eq p1, v0, :cond_0

    const/16 v0, 0x32

    if-eq p1, v0, :cond_2

    .line 426
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    return p0

    .line 422
    :cond_0
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    return p0

    .line 414
    :cond_1
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    return p0

    .line 418
    :cond_2
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    return p0

    .line 420
    :cond_3
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMaxMagnitude:I

    return p0
.end method

.method public final getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object p0

    return-object p0
.end method

.method public getMaxMagnitude()I
    .locals 0

    .line 503
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMaxMagnitude:I

    return p0
.end method

.method public getMinMagnitude()I
    .locals 0

    .line 507
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMinMagnitude:I

    return p0
.end method

.method public initializeVibrationState()V
    .locals 13

    .line 200
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107015e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 204
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107015f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 206
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070160

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 208
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070162

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 210
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107015c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 216
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/server/vibrator/VibratorController;->getAmplitudeList(I)[I

    move-result-object v6

    .line 219
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/server/vibrator/VibratorController;->getAmplitudeList(I)[I

    move-result-object v9

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v9, v6

    .line 223
    :goto_0
    sget-boolean v10, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    const-string v11, "VibratorManagerService"

    if-eqz v10, :cond_1

    iget v10, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    if-ne v10, v7, :cond_1

    if-eqz v9, :cond_2

    if-eqz v5, :cond_2

    .line 224
    array-length v10, v9

    array-length v12, v5

    if-ne v10, v12, :cond_2

    const-string v10, "HAL DC touch amplitude list is used!!"

    .line 227
    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    if-eqz v9, :cond_2

    const-string v10, "HAL amplitude list is used!!"

    .line 232
    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v10, v7

    goto :goto_2

    :cond_2
    move v10, v8

    .line 236
    :goto_2
    iget v11, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    if-ne v11, v7, :cond_3

    .line 237
    sget-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v1, :cond_a

    .line 239
    invoke-static {v10, v6, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 241
    invoke-static {v10, v9, v5}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadTouchMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    goto/16 :goto_4

    :cond_3
    const/4 v5, 0x2

    if-ne v11, v5, :cond_4

    .line 245
    iput-boolean v7, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    .line 246
    iput-boolean v7, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    .line 247
    invoke-static {v10, v6, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 249
    invoke-static {v10, v9, v9}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadTouchMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    goto :goto_4

    :cond_4
    const/4 v5, 0x3

    if-ne v11, v5, :cond_5

    .line 252
    invoke-static {v10, v6, v4}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 254
    invoke-static {v10, v9, v4}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadTouchMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 256
    iput-boolean v7, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    .line 257
    iput-boolean v8, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    goto :goto_4

    :cond_5
    const/4 v4, 0x5

    if-ne v11, v4, :cond_6

    .line 259
    invoke-static {v10, v6, v1}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 261
    invoke-static {v10, v9, v3}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadTouchMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 263
    invoke-static {v7}, Lcom/samsung/android/vibrator/VibRune;->SET_CIRRUS_HAPTIC(Z)V

    .line 264
    iput-boolean v7, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    .line 265
    iput-boolean v7, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    goto :goto_4

    :cond_6
    const/4 v3, 0x6

    if-eq v11, v3, :cond_9

    const/4 v3, 0x7

    if-ne v11, v3, :cond_7

    goto :goto_3

    :cond_7
    const/16 v1, 0x8

    if-eq v11, v1, :cond_8

    const/16 v1, 0x9

    if-ne v11, v1, :cond_a

    .line 274
    :cond_8
    invoke-static {v10, v6, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 276
    invoke-static {v10, v9, v2}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadTouchMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 278
    invoke-static {v7}, Lcom/samsung/android/vibrator/VibRune;->SET_CIRRUS_HAPTIC(Z)V

    .line 279
    iput-boolean v7, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    .line 280
    iput-boolean v7, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    goto :goto_4

    .line 267
    :cond_9
    :goto_3
    invoke-static {v10, v6, v1}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 269
    invoke-static {v10, v9, v9}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadTouchMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 271
    iput-boolean v7, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    .line 272
    iput-boolean v7, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    :cond_a
    :goto_4
    return-void
.end method

.method public final loadSystemSetting(Ljava/lang/String;I)I
    .locals 1

    .line 102
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public onSystemReady()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 125
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 127
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerCustomSettingsObserver()V
    .locals 1

    const-string v0, "VIB_FEEDBACK_MAGNITUDE"

    .line 169
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "hardware_haptic_feedback_intensity"

    .line 171
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    .line 173
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "VIB_RECVCALL_MAGNITUDE"

    .line 175
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    return-void
.end method

.method public registerFoldStateListener()V
    .locals 2

    .line 380
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->supportsFoldState()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "VibratorManagerService"

    const-string v0, "Fold mode is not supported"

    .line 384
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 387
    :cond_1
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/vibrator/VibrationCustomSettings$1;

    invoke-direct {v1, p0}, Lcom/android/server/vibrator/VibrationCustomSettings$1;-><init>(Lcom/android/server/vibrator/VibrationCustomSettings;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final registerSettingsObserver(Landroid/net/Uri;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public setDefaultRingtoneVibrationSepIndex()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "ringtone_vibration_sep_index_2"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 193
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public updateAmplitudeLevel()V
    .locals 7

    .line 285
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 286
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    array-length v2, v0

    sub-int/2addr v2, v1

    .line 287
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v4, v3

    sub-int/2addr v4, v1

    const-string v5, "VibratorManagerService"

    const/4 v6, 0x2

    if-lt v2, v6, :cond_7

    if-ge v4, v6, :cond_0

    goto/16 :goto_5

    .line 293
    :cond_0
    aget v3, v3, v4

    iput v3, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    .line 294
    aget v3, v0, v2

    iput v3, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    .line 295
    iput v3, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    .line 296
    iput v3, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMaxMagnitude:I

    .line 297
    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMinMagnitude:I

    .line 298
    iput v3, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    const-string v0, "VIB_FEEDBACK_MAGNITUDE"

    .line 300
    invoke-virtual {p0, v0, v4}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v4, :cond_1

    goto :goto_0

    .line 303
    :cond_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v0, v3, v0

    :goto_0
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    const-string v0, "VIB_RECVCALL_MAGNITUDE"

    .line 305
    invoke-virtual {p0, v0, v2}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v2, :cond_2

    goto :goto_1

    .line 308
    :cond_2
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v3, v0

    :goto_1
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    const-string v0, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    .line 310
    invoke-virtual {p0, v0, v2}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v2, :cond_3

    goto :goto_2

    .line 313
    :cond_3
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v3, v0

    :goto_2
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    const-string/jumbo v0, "media_vibration_intensity"

    .line 315
    invoke-virtual {p0, v0, v2}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v2, :cond_4

    goto :goto_3

    .line 317
    :cond_4
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v2, v0

    :goto_3
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    .line 319
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticEngineSupported:Z

    if-eqz v0, :cond_9

    .line 320
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1070161

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    .line 322
    array-length v2, v0

    sub-int/2addr v2, v1

    .line 323
    aget v0, v0, v2

    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mForceMagnitude:I

    if-ge v2, v6, :cond_5

    .line 326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "touchForceMagnitudeMaxLevel : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string v0, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    .line 329
    invoke-virtual {p0, v0, v2}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v2, :cond_6

    goto :goto_4

    .line 333
    :cond_6
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v0, v1, v0

    :goto_4
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mForceMagnitude:I

    goto :goto_6

    .line 289
    :cond_7
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "magnitudeMaxLevel : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", touchMagnitudeMaxLevel : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 336
    :cond_8
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    if-ne v0, v1, :cond_9

    .line 337
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->updateDcHapticFeedbackMagnitude()V

    :cond_9
    :goto_6
    return-void
.end method

.method public updateCustomSettings()V
    .locals 6

    .line 137
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 138
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 139
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, "VibratorManagerService"

    const/4 v4, 0x2

    if-lt v0, v4, :cond_7

    if-ge v1, v4, :cond_0

    goto :goto_5

    :cond_0
    const-string v5, "VIB_FEEDBACK_MAGNITUDE"

    .line 147
    invoke-virtual {p0, v5, v1}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v5

    if-le v5, v1, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v5, v1, v5

    :goto_0
    iput v5, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    .line 150
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v0, :cond_2

    goto :goto_1

    .line 151
    :cond_2
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v5, v1

    :goto_1
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    const-string v1, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    .line 153
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v0, :cond_3

    goto :goto_2

    .line 154
    :cond_3
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v5, v1

    :goto_2
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    if-ge v2, v4, :cond_4

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forceTouchMagnitudeMaxLevel : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string v1, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    .line 160
    invoke-virtual {p0, v1, v2}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v2, :cond_5

    goto :goto_3

    .line 161
    :cond_5
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v1, v2, v1

    :goto_3
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mForceMagnitude:I

    const-string/jumbo v1, "media_vibration_intensity"

    .line 163
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v0, :cond_6

    goto :goto_4

    .line 164
    :cond_6
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v0, v1

    :goto_4
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    return-void

    .line 142
    :cond_7
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "magnitudeMaxLevel : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", touchMagnitudeMaxLevel : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateDcHapticFeedbackMagnitude()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-string v2, "VIB_FEEDBACK_MAGNITUDE"

    .line 344
    invoke-virtual {p0, v2, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    .line 346
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v0, v2, v0

    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "VibratorManagerService"

    const-string v2, "failed to set DcHapticFeedbackMagnitude"

    .line 348
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    :goto_0
    return-void
.end method

.method public updateSupportedHalFeature()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->getSupportedMotorType()I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    .line 181
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->initializeVibrationState()V

    .line 183
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->supportsHapticEngine()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticEngineSupported:Z

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsHapticEngineSupported : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticEngineSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VibratorManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
