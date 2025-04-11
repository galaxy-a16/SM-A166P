.class public Lcom/android/server/audio/AudioServiceExt;
.super Ljava/lang/Object;
.source "AudioServiceExt.java"


# static fields
.field public static mKaraokeListenbackEnabled:I


# instance fields
.field public mAdaptSoundEnabled:I

.field public mAllSoundMute:I

.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public final mContext:Landroid/content/Context;

.field public final mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

.field public final mCr:Landroid/content/ContentResolver;

.field public mDvfsHelper:Lcom/samsung/android/server/audio/DvfsHelper;

.field public mExtraVolume:Z

.field public mIsBikeMode:Z

.field public mIsPttCallVolumeEnabled:Z

.field public mMainBalance:F

.field public mMainMono:I

.field public final mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

.field public mNbQualityMode:I

.field public mOmcRingtoneManager:Lcom/samsung/android/server/audio/OmcRingtoneManager;

.field public mPhoneStateHelper:Lcom/samsung/android/server/audio/PhoneStateHelper;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mResetSettingsReceiver:Landroid/content/BroadcastReceiver;

.field public mScreenCall:Z

.field public final mService:Lcom/android/server/audio/AudioService;

.field public final mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public mSettingsObserver:Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;

.field public final mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

.field public mUpscalerEnabled:I

.field public mVideoCallMonsterSoundMode:I

.field public mVideoCallVoiceEffectMode:I

.field public mVoiceCallMonsterSoundMode:I

.field public mVoipAntiHowling:Z

.field public mVoipExtraVolume:Z

.field public mVolumeMonitorValue:I


# direct methods
.method public static synthetic $r8$lambda$7ZcNO5wQGYTb-m8-GkndLX_GVHI(Lcom/android/server/audio/AudioServiceExt;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioServiceExt;->lambda$notifyDVFSToSoundAlive$0(Landroid/content/Context;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAdaptSoundEnabled(Lcom/android/server/audio/AudioServiceExt;)I
    .locals 0

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioServiceExt;)Lcom/android/server/audio/AudioSystemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCr(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDvfsHelper(Lcom/android/server/audio/AudioServiceExt;)Lcom/samsung/android/server/audio/DvfsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mDvfsHelper:Lcom/samsung/android/server/audio/DvfsHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPhoneStateHelper(Lcom/android/server/audio/AudioServiceExt;)Lcom/samsung/android/server/audio/PhoneStateHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mPhoneStateHelper:Lcom/samsung/android/server/audio/PhoneStateHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/audio/AudioServiceExt;)Lcom/android/server/audio/AudioService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mService:Lcom/android/server/audio/AudioService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpscalerEnabled(Lcom/android/server/audio/AudioServiceExt;)I
    .locals 0

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumeMonitorValue(Lcom/android/server/audio/AudioServiceExt;)I
    .locals 0

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAdaptSoundEnabled(Lcom/android/server/audio/AudioServiceExt;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAllSoundMute(Lcom/android/server/audio/AudioServiceExt;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsBikeMode(Lcom/android/server/audio/AudioServiceExt;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioServiceExt;->mIsBikeMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUpscalerEnabled(Lcom/android/server/audio/AudioServiceExt;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVolumeMonitorValue(Lcom/android/server/audio/AudioServiceExt;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mperformSoftReset(Lcom/android/server/audio/AudioServiceExt;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->performSoftReset()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAllSoundMute(Lcom/android/server/audio/AudioServiceExt;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->setAllSoundMute()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCallBandInfo(Lcom/android/server/audio/AudioServiceExt;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioServiceExt;->updateCallBandInfo(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;Lcom/samsung/android/server/audio/AudioSettingsHelper;Lcom/android/server/audio/SoundEffectsHelper;Lcom/samsung/android/server/audio/MicModeManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioServiceExt;Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver;-><init>(Lcom/android/server/audio/AudioServiceExt;Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mResetSettingsReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mScreenCall:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVoiceCallMonsterSoundMode:I

    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVideoCallMonsterSoundMode:I

    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VIDEO_CALL_VOICE_DEFAULT_EFFECT:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x64

    :cond_0
    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVideoCallVoiceEffectMode:I

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mExtraVolume:Z

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mIsPttCallVolumeEnabled:Z

    iput v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/audio/AudioServiceExt;->mService:Lcom/android/server/audio/AudioService;

    iput-object p3, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    iput-object p4, p0, Lcom/android/server/audio/AudioServiceExt;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    iput-object p5, p0, Lcom/android/server/audio/AudioServiceExt;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    iput-object p6, p0, Lcom/android/server/audio/AudioServiceExt;->mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->getInstance()Lcom/samsung/android/server/audio/OmcRingtoneManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mOmcRingtoneManager:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    invoke-static {}, Lcom/samsung/android/server/audio/CoverHelper;->getInstance()Lcom/samsung/android/server/audio/CoverHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->readPersistedCustomSettings()V

    return-void
.end method

.method public static getDefaultVolumeOption()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/server/audio/FactoryHelper;->isFactoryMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$notifyDVFSToSoundAlive$0(Landroid/content/Context;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mDvfsHelper:Lcom/samsung/android/server/audio/DvfsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DvfsHelper;->getIsScreenOn()Z

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/samsung/android/server/audio/utils/SoundAliveUtils;->notifyDVFSToSoundAlive(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public addAudioServiceExtDump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "  mNbQualityMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mNbQualityMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SCREEN_CALL:Z

    if-eqz v0, :cond_0

    const-string v0, "  mScreenCall="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mScreenCall:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_0
    const-string v0, "  mMasterMono="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mMainMono:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mMainBalance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mMainBalance:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  mAdaptSoundEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mUpscalerEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mIsPttCallVolumeEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mIsPttCallVolumeEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  CPUBoostValueForVoIP="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mDvfsHelper:Lcom/samsung/android/server/audio/DvfsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DvfsHelper;->getCPUBoostValueForVoIP()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mAllSoundMute="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v0, :cond_1

    const-string v0, "  mKaraokeListenbackEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz v0, :cond_2

    const-string v0, "  mVolumeMonitorValue="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    :cond_2
    const-string p0, "  AudioHqmHelper.ResetCount="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/server/audio/AudioHqmHelper;->getAudioServerResetCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public final addExtIntentFilter(Landroid/content/IntentFilter;)V
    .locals 0

    const-string p0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "com.samsung.intent.action.WB_AMR"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "com.sec.media.action.AUDIOCORE_LOGGING"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "com.sec.android.intent.action.DHR_HQM_REFRESH_REQ"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "com.android.launcher3.quickstep.closeall"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public final addResetSettingsIntentFilter(Landroid/content/IntentFilter;)V
    .locals 0

    const-string p0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public bootCompleted()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

    const-string/jumbo v1, "l_call_voip_extra_volume_enable="

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_ANTI_HOWLING:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/audio/CoverHelper;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioHqmHelper;->startLogging(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setAdaptSound(Landroid/content/Context;I)V

    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    invoke-static {v0}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setUpScalerMode(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioServiceExt;->setNbQualityMode(I)V

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->restoreMicMode()V

    :cond_2
    return-void
.end method

.method public getAllSoundMute()I
    .locals 0

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    return p0
.end method

.method public getExcludedRingtoneTitles(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mOmcRingtoneManager:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->getExcludedNotifications()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mOmcRingtoneManager:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->getExcludedRingtones()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIntValueFromString(Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AS.AudioServiceExt"

    const-string v0, "NumberFormatException"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return p2
.end method

.method public getMainBalance()F
    .locals 0

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mMainBalance:F

    return p0
.end method

.method public getNbQualityMode()I
    .locals 0

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mNbQualityMode:I

    return p0
.end method

.method public getVolumeMonitorService()Lcom/samsung/android/server/audio/VolumeMonitorService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object p0

    return-object p0
.end method

.method public isBikeMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/audio/AudioServiceExt;->mIsBikeMode:Z

    return p0
.end method

.method public isCoverOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/CoverHelper;->isCoverOpen()Z

    move-result p0

    return p0
.end method

.method public isCoverSafetyVolume()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/CoverHelper;->isCoverSafetyVolume()Z

    move-result p0

    return p0
.end method

.method public isExtraVolume()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/audio/AudioServiceExt;->mExtraVolume:Z

    return p0
.end method

.method public isPttCallVolumeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/audio/AudioServiceExt;->mIsPttCallVolumeEnabled:Z

    return p0
.end method

.method public isScreenCall()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/audio/AudioServiceExt;->mScreenCall:Z

    return p0
.end method

.method public notifyDVFSToSoundAlive(Landroid/content/Context;I)V
    .locals 1

    new-instance v0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioServiceExt;Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAudioServerDied()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->setAllSoundMute()V

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->restoreVoipExtraVolume()V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_ANTI_HOWLING:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->restoreVoipAntiHowling()V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VIDEO_CALL_VOICE_EFFECT:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->restoreVideoCallVoiceEffect()V

    :cond_2
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->restoreMicMode()V

    :cond_3
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CALL_MONSTER_SOUND:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->restoreCallMonsterSoundMode()V

    :cond_4
    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    invoke-static {v0}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setUpScalerMode(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.MEDIA_SERVER_REBOOTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/server/audio/utils/AudioUtils;->sendBroadcastToUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->getNbQualityMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioServiceExt;->setNbQualityMode(I)V

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->getVolumeMonitorService()Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->audioServerDied()V

    :cond_5
    invoke-static {}, Lcom/samsung/android/server/audio/AudioHqmHelper;->increaseAudioServerResetCount()V

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/audio/utils/AudioUtils;->sendIssueTrackerIntent(Landroid/content/Context;)V

    return-void
.end method

.method public final performSoftReset()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "performSoftReset start"

    const-string v2, "AS.AudioServiceExt"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->resetTable()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    const-string v3, "all_sound_off"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->setAllSoundMute()V

    const-string/jumbo v3, "master_mono"

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "volume_monitor"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->getVolumeMonitorService()Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/audio/VolumeMonitorService;->resetByDataClear()V

    :cond_0
    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    const-string v3, "hearing_musiccheck"

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v3, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    invoke-static {v3, v5}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setAdaptSound(Landroid/content/Context;I)V

    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    const-string/jumbo v3, "k2hd_effect"

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v3, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    invoke-static {v3}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setUpScalerMode(I)V

    const-string/jumbo v3, "sound_alive_effect"

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v3, "tube_amp_effect"

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v3, "adjust_media_volume_only"

    invoke-static {}, Lcom/android/server/audio/AudioServiceExt;->getDefaultVolumeOption()I

    move-result v5

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v3, p0, Lcom/android/server/audio/AudioServiceExt;->mService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getMediaVolumeSteps()[I

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v4, "sec_volume_steps"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v3, :cond_2

    sput v1, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    const-string v3, "headphone_monitoring"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioServiceExt;->setNbQualityMode(I)V

    const-string/jumbo v3, "personalise_call_sound_soft"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->setDefaultMainBalance()V

    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->setDefaultModeVoipExtraVolume()V

    :cond_3
    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_ANTI_HOWLING:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->setDefaultModeVoipAntiHowling()V

    :cond_4
    const-string/jumbo v3, "multisound_state"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "multisound_app"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v3, "multisound_devicetype"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    if-eqz v3, :cond_5

    const-string v3, "call_mic_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "voip_call_mic_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->resetRingerMode()V

    const-string/jumbo p0, "performSoftReset end"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public readAllSoundMuteUserRestriction(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string v1, "all_sound_off"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "readUserRestrictions mAllSoundMute = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.AudioServiceExt"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final readPersistedCustomSettings()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "personalise_call_sound_soft"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mNbQualityMode:I

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/server/audio/FactoryHelper;->setFactoryMode(Landroid/content/Context;)V

    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "voip_extra_volume"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    :cond_1
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_ANTI_HOWLING:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "voip_anti_howling"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    :cond_3
    const-string v1, "hearing_musiccheck"

    const/4 v4, -0x2

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    const-string/jumbo v1, "k2hd_effect"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz v1, :cond_5

    const-string v1, "isBikeMode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/audio/AudioServiceExt;->mIsBikeMode:Z

    :cond_5
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v1, :cond_6

    const-string v1, "headphone_monitoring"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    :cond_6
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "volume_monitor"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->getVolumeMonitorService()Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object v0

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    if-ne p0, v3, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/audio/VolumeMonitorService;->setVolumeMonitorOnOff(Z)V

    :cond_8
    return-void
.end method

.method public final registerReceivers()V
    .locals 14

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioServiceExt;->addExtIntentFilter(Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0, v10}, Lcom/android/server/audio/AudioServiceExt;->addResetSettingsIntentFilter(Landroid/content/IntentFilter;)V

    iget-object v7, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/audio/AudioServiceExt;->mResetSettingsReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v11, "com.sec.android.settings.permission.SOFT_RESET"

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual/range {v7 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public final restoreCallMonsterSoundMode()V
    .locals 3

    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoiceCallMonsterSoundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "l_call_nc_booster_enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioServiceExt;->mVoiceCallMonsterSoundMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVideoCallMonsterSoundMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "l_mic_input_control_mode_2mic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mVideoCallMonsterSoundMode:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final restoreMicMode()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->restoreMicMode()V

    :cond_0
    return-void
.end method

.method public final restoreVideoCallVoiceEffect()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VIDEO_CALL_VOICE_EFFECT:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVideoCallVoiceEffectMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VIDEO_CALL_VOICE_DEFAULT_EFFECT:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVideoCallVoiceEffectMode:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "l_mic_input_control_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mVideoCallVoiceEffectMode:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final restoreVoipAntiHowling()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "l_call_voip_extra_volume_enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public final restoreVoipExtraVolume()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "l_call_voip_extra_volume_enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public final setAllSoundMute()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->setAllSoundMuteToNative()V

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.audio.allsoundmute"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setAllSoundMuteToNative()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "l_all_sound_mute_enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public setCoverSafetyVolume(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/CoverHelper;->setCoverSafetyVolume(Z)V

    return-void
.end method

.method public setDefaultMainBalance()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioServiceExt;->mMainBalance:F

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "master_balance"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "speaker_balance"

    invoke-static {p0, v1, v0, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method

.method public setDefaultModeVoipAntiHowling()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "voip_anti_howling"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setDefaultModeVoipExtraVolume()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "voip_extra_volume"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setExtraVolume(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioServiceExt;->mExtraVolume:Z

    return-void
.end method

.method public setNbQualityMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioServiceExt;->mNbQualityMode:I

    if-lez p1, :cond_0

    const-string/jumbo p0, "l_call_nb_quality_enable=true"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "l_call_nb_quality_enable=false"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPttCallVolumeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioServiceExt;->mIsPttCallVolumeEnabled:Z

    return-void
.end method

.method public setScreenCall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioServiceExt;->mScreenCall:Z

    return-void
.end method

.method public setSystemSettingForSoundAssistant(Ljava/lang/String;I)V
    .locals 6

    const-string/jumbo v0, "sound_balance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "mono_audio_db"

    if-nez v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "adjust_media_volume_only"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, -0x32

    int-to-float v0, v0

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "master_balance"

    invoke-static {v2, v5, v0, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "master_mono"

    invoke-static {v0, v2, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public setVideoCallMonsterSoundMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioServiceExt;->mVideoCallMonsterSoundMode:I

    return-void
.end method

.method public setVideoCallVoiceEffectMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioServiceExt;->mVideoCallVoiceEffectMode:I

    return-void
.end method

.method public setVoiceCallMonsterSoundMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioServiceExt;->mVoiceCallMonsterSoundMode:I

    return-void
.end method

.method public setVoipAntiHowling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    return-void
.end method

.method public setVoipExtraVolume(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    return-void
.end method

.method public startCPUBoostForVoIP(Landroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mDvfsHelper:Lcom/samsung/android/server/audio/DvfsHelper;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/audio/DvfsHelper;->startCPUBoostForVoIP(Landroid/content/Context;)V

    return-void
.end method

.method public stopCPUBoostForVoIP()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mDvfsHelper:Lcom/samsung/android/server/audio/DvfsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DvfsHelper;->stopCPUBoostForVoIP()V

    return-void
.end method

.method public systemReady()V
    .locals 2

    new-instance v0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;-><init>(Lcom/android/server/audio/AudioServiceExt;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mSettingsObserver:Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->registerReceivers()V

    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->setAllSoundMute()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/audio/DvfsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/DvfsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mDvfsHelper:Lcom/samsung/android/server/audio/DvfsHelper;

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/audio/PhoneStateHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/PhoneStateHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mPhoneStateHelper:Lcom/samsung/android/server/audio/PhoneStateHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/PhoneStateHelper;->registerPhoneStateListener()V

    return-void
.end method

.method public updateBalance(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "speaker_balance"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "l_speaker_balance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/audio/AudioServiceExt;->mMainBalance:F

    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string/jumbo v0, "sound_balance"

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getIntValue(Ljava/lang/String;I)I

    move-result p1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr p1, v1

    iget v1, p0, Lcom/android/server/audio/AudioServiceExt;->mMainBalance:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->removeValue(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final updateCallBandInfo(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "EXTRA_RAT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "EXTRA_STATE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x9

    const-string v2, "AS.AudioServiceExt"

    if-ne p1, v1, :cond_0

    const-string/jumbo p1, "wb_amr fb"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string v1, "g_call_band=fb"

    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    const-string/jumbo p1, "wb_amr swb"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string v1, "g_call_band=swb"

    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const-string/jumbo p1, "wb_amr wb"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string v1, "g_call_band=wb"

    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "wb_amr nb"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string v1, "g_call_band=nb"

    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "l_call_rat_type="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public updateCallGuardInfo(IIZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callguard: mode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), pid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), skipSet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioServiceExt"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string/jumbo v1, "l_guard_call_mode"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    const-string/jumbo v0, "l_guard_call_mode_calling_pid"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    const-string/jumbo p2, "l_guard_call_mode_skip"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public updateMonoSetting(Z)V
    .locals 3

    iput p1, p0, Lcom/android/server/audio/AudioServiceExt;->mMainMono:I

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const/4 v1, 0x0

    const-string/jumbo v2, "mono_audio_db"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->removeValue(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateThemeSound(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "system_sound"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/audio/SoundEffectsHelper;->updateThemeSound(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
