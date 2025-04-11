.class public Lcom/samsung/android/server/audio/MicModeManager;
.super Ljava/lang/Object;
.source "MicModeManager.java"


# static fields
.field public static final AVAILABLE_DEVICE_TYPES:Ljava/util/List;

.field public static final AVAILABLE_STREAM_TYPES:Ljava/util/List;

.field public static mAudioManager:Landroid/media/AudioManager;

.field public static mContext:Landroid/content/Context;

.field public static mCr:Landroid/content/ContentResolver;

.field public static mDesktopModeHelper:Lcom/samsung/android/server/audio/DesktopModeHelper;

.field public static sInstance:Lcom/samsung/android/server/audio/MicModeManager;

.field public static final sMicModeParamTable:Landroid/util/ArrayMap;


# instance fields
.field public mCallMicMode:I

.field public mCallTranslationState:Z

.field public mCurAudioMode:I

.field public mCurCallDevice:I

.field public mDexState:Z

.field public mGameChatState:Z

.field public mMicModeType:I

.field public mPackageName:Ljava/lang/String;

.field public mSmartViewState:Z

.field public mVideoCallState:Z

.field public mVoipCallMicMode:I

.field public mWifiCallState:Z


# direct methods
.method public static synthetic $r8$lambda$M27UbNGpU5VHIgdR6AvnBAIG3E8(Lcom/samsung/android/server/audio/MicModeManager;Ljava/lang/Integer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->lambda$isMicModeSupported$2(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$frhefA2rZZ3hnOUhOUxo5Lfq3v8(Landroid/content/Intent;Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->lambda$streamDevicesChanged$0(Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uP0IOZdCsgyRs-B5H0P5dOv9TKg(Lcom/samsung/android/server/audio/MicModeManager;Ljava/lang/Integer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->lambda$isMicModeSupported$3(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yE2bh1OZ1frNNqnP-ZR7XmF_Tbs(Lcom/samsung/android/server/audio/MicModeManager;Ljava/lang/Integer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->lambda$isMicModeSupported$1(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/server/audio/MicModeManager;->AVAILABLE_STREAM_TYPES:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v1}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/server/audio/MicModeManager;->AVAILABLE_DEVICE_TYPES:Ljava/util/List;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Lcom/samsung/android/server/audio/MicModeManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    const-string v4, "l_mic_input_control_mode=0"

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "l_mic_input_control_mode=1"

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "l_mic_input_control_mode=2"

    invoke-virtual {v3, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "l_mic_input_control_mode_call=0"

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "l_mic_input_control_mode_call=1"

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:I

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    iput v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mWifiCallState:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mVideoCallState:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mDexState:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mSmartViewState:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCallTranslationState:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mGameChatState:Z

    iput v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCallMicMode:I

    iput v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mVoipCallMicMode:I

    sput-object p1, Lcom/samsung/android/server/audio/MicModeManager;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/samsung/android/server/audio/MicModeManager;->mAudioManager:Landroid/media/AudioManager;

    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/audio/DesktopModeHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/DesktopModeHelper;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/MicModeManager;->mDesktopModeHelper:Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->initMicModeType()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/MicModeManager;
    .locals 2

    const-class v0, Lcom/samsung/android/server/audio/MicModeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/server/audio/MicModeManager;->sInstance:Lcom/samsung/android/server/audio/MicModeManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/server/audio/MicModeManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/MicModeManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/audio/MicModeManager;->sInstance:Lcom/samsung/android/server/audio/MicModeManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/server/audio/MicModeManager;->sInstance:Lcom/samsung/android/server/audio/MicModeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private synthetic lambda$isMicModeSupported$1(Ljava/lang/Integer;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$isMicModeSupported$2(Ljava/lang/Integer;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$isMicModeSupported$3(Ljava/lang/Integer;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$streamDevicesChanged$0(Landroid/content/Intent;Ljava/lang/Integer;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final disableMicMode()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v0, v0, v1}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeSettings(ZILjava/lang/String;)V

    return-void
.end method

.method public final enableMicMode()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/server/audio/MicModeManager;->mWifiCallState:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->getVoipCallMicMode()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeSettings(ZILjava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->getCallMicMode()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeSettings(ZILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final getCallMicMode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallMicMode callMicMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCallMicMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCallMicMode:I

    return p0
.end method

.method public final getMicModeFeature()I
    .locals 10

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_MICMODE_QUICK_PANEL"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_AUDIO_CONFIG_EFFECTS_VIDEOCALL"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMicModeFeature() floatingVideoCallFeature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MicModeManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DEFAULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const-string v1, "3MIC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string v1, "2MIC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->updateParamTableFor2Mic()V

    return v4

    :cond_3
    const-string v3, "2MIC;VOICE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->updateParamTableFor2Mic()V

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->updateParamTableForVoice()V

    return v6

    :cond_4
    const-string v5, "VOICE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x5

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->updateParamTableForVoice()V

    return v7

    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v8, "CscFeature_Audio_ConfigEffectsVideoCall"

    invoke-virtual {v0, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMicModeFeature() cscVideoCallFeature : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->updateParamTableFor2Mic()V

    return v4

    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->updateParamTableFor2Mic()V

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->updateParamTableForVoice()V

    return v6

    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->updateParamTableForVoice()V

    return v7

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public getMicModeType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:I

    return p0
.end method

.method public final getVoipCallMicMode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVoipCallMicMode voipCallMicMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mVoipCallMicMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mVoipCallMicMode:I

    return p0
.end method

.method public final initMicModeType()V
    .locals 3

    const-string v0, "MicModeManager"

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->getMicModeFeature()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMicModeType() mMicModeType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "initMicModeType: RuntimeException"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "initMicModeType: NullPointerException"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final isMicModeSupported()Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMicModeSupported() MicModeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", curDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", translationState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCallTranslationState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dexState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mDexState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", smartViewState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mSmartViewState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gameChatState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mGameChatState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wifiCallState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mWifiCallState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoCallState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mVideoCallState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    return v4

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mWifiCallState:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->AVAILABLE_DEVICE_TYPES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/audio/MicModeManager;)V

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mVideoCallState:Z

    if-eqz v0, :cond_a

    :cond_2
    return v4

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    if-lt v0, v3, :cond_6

    if-le v0, v2, :cond_3

    goto :goto_2

    :cond_3
    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_4

    iget-boolean v5, p0, Lcom/samsung/android/server/audio/MicModeManager;->mWifiCallState:Z

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, v2, :cond_a

    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    if-eq v0, v3, :cond_a

    return v4

    :cond_5
    :goto_1
    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->AVAILABLE_DEVICE_TYPES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/audio/MicModeManager;)V

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mVideoCallState:Z

    if-eqz v0, :cond_a

    :cond_6
    :goto_2
    return v4

    :pswitch_2
    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    if-ne v0, v3, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mWifiCallState:Z

    if-eqz v0, :cond_a

    :cond_7
    return v4

    :pswitch_3
    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    if-eq v0, v3, :cond_9

    if-ne v0, v2, :cond_8

    goto :goto_3

    :cond_8
    return v4

    :cond_9
    :goto_3
    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->AVAILABLE_DEVICE_TYPES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/MicModeManager;)V

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_a

    return v4

    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCallTranslationState:Z

    if-eqz v0, :cond_b

    return v4

    :cond_b
    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    if-ne v0, v3, :cond_e

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mDexState:Z

    if-eqz v0, :cond_c

    return v4

    :cond_c
    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    if-ne v0, v2, :cond_e

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mWifiCallState:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mSmartViewState:Z

    if-nez v0, :cond_d

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mGameChatState:Z

    if-eqz p0, :cond_e

    :cond_d
    return v4

    :cond_e
    const-string p0, "isMicModeSupported() MicMode ON"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public restoreMicMode()V
    .locals 3

    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    const-string v1, "call_mic_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCallMicMode:I

    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "voip_call_mic_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mVoipCallMicMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreMicMode callMicMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCallMicMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voipCallMicMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mVoipCallMicMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCallMicMode:I

    add-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCallMicMode:I

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mVoipCallMicMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mVoipCallMicMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final setCallMicMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCallMicMode callMicMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCallMicMode:I

    const-string/jumbo v0, "mic_mode_effect"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setSettingsInt(Ljava/lang/String;I)V

    const-string v0, "call_mic_mode"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setSettingsInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setCommunicationDevice(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCommunicationDevice() deviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MicModeManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->updateAudioDevice()V

    return-void
.end method

.method public setMicInputControlMode(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMicInputControlMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "attempt to call setMicInputControlMode() invalid mode."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMicInputControlMode setparam : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/media/AudioParameter;

    invoke-direct {v0, p1}, Lcom/samsung/android/media/AudioParameter;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x6

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    const-string v2, "l_mic_input_control_mode_2mic"

    if-ne p1, v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setVoipCallMicMode(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    const-string v3, "l_call_nc_booster_enable"

    if-ne p1, v1, :cond_4

    invoke-virtual {v0, v3}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setCallMicMode(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setVoipCallMicMode(I)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_7

    invoke-virtual {v0, v3}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setCallMicMode(I)V

    goto :goto_1

    :cond_5
    :goto_0
    const-string p1, "l_mic_input_control_mode_call"

    invoke-virtual {v0, p1}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setCallMicMode(I)V

    goto :goto_1

    :cond_6
    const-string p1, "l_mic_input_control_mode"

    invoke-virtual {v0, p1}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setVoipCallMicMode(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final setSettingsInt(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    sget-object p0, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setSettingsStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    sget-object p0, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setVoipCallMicMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVoipCallMicMode voipCallMicMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mVoipCallMicMode:I

    const-string/jumbo v0, "mic_mode_effect"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setSettingsInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "voip_call_mic_mode"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setSettingsInt(Ljava/lang/String;I)V

    return-void
.end method

.method public streamDevicesChanged(Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->AVAILABLE_STREAM_TYPES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda3;-><init>(Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "streamDevicesChanged() prevDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", curDevice="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MicModeManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->updateAudioDevice()V

    return-void
.end method

.method public final updateAudioDevice()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAudioDevice() audioMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", curDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->isMicModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->enableMicMode()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->disableMicMode()V

    :goto_0
    return-void
.end method

.method public updateAudioMode(Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateAudioMode() audioMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", caller="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", curCallDevice="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MicModeManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->disableMicMode()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->isMicModeSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->enableMicMode()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->disableMicMode()V

    :goto_0
    return-void
.end method

.method public updateCallTranslationState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCallTranslationState() state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCallTranslationState:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeState(Z)V

    return-void
.end method

.method public updateDexState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDexState() state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mDexState:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeState(Z)V

    return-void
.end method

.method public updateGameChatState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateGameChatState() state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mGameChatState:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeState(Z)V

    return-void
.end method

.method public final updateMicModeSettings(ZILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "mic_mode_enable"

    const-string v1, "MicModeManager"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMicModeSettings() enable, effect:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", caller:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setSettingsInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "mic_mode_effect"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/MicModeManager;->setSettingsInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "mic_mode_package"

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/server/audio/MicModeManager;->setSettingsStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "updateMicModeSettings() disable"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setSettingsInt(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public final updateMicModeState(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->isMicModeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->disableMicMode()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->enableMicMode()V

    :cond_1
    return-void
.end method

.method public final updateParamTableFor2Mic()V
    .locals 2

    sget-object p0, Lcom/samsung/android/server/audio/MicModeManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "l_mic_input_control_mode_2mic=0"

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "l_mic_input_control_mode_2mic=1"

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "l_mic_input_control_mode_2mic=2"

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateParamTableForVoice()V
    .locals 2

    sget-object p0, Lcom/samsung/android/server/audio/MicModeManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "l_call_nc_booster_enable=0"

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "l_call_nc_booster_enable=1"

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateSmartViewState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSmartViewState() state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mSmartViewState:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeState(Z)V

    return-void
.end method

.method public updateVideoCallState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVideoCallState() state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mVideoCallState:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeState(Z)V

    return-void
.end method

.method public updateWifiCallState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWifiCallState() state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mWifiCallState:Z

    const-string/jumbo v0, "mic_mode_wificall"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setSettingsInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setSettingsInt(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->isMicModeSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->enableMicMode()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->disableMicMode()V

    :goto_1
    return-void
.end method
