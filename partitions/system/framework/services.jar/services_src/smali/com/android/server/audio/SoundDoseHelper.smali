.class public Lcom/android/server/audio/SoundDoseHelper;
.super Ljava/lang/Object;
.source "SoundDoseHelper.java"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mContext:Landroid/content/Context;

.field public final mCsdStateLock:Ljava/lang/Object;

.field public mCurrentCsd:F

.field public final mDoseRecords:Ljava/util/List;

.field public final mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mGlobalTimeOffsetInSecs:J

.field public mLastMomentaryExposureTimeMs:J

.field public mLastMusicActiveTimeMs:J

.field public final mLogger:Lcom/android/server/utils/EventLogger;

.field public mMcc:I

.field public mMusicActiveIntent:Landroid/app/PendingIntent;

.field public mMusicActiveMs:I

.field public mNextCsdWarning:F

.field public mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

.field public final mSafeMediaVolumeBTDevices:Landroid/util/SparseIntArray;

.field public mSafeMediaVolumeDbfs:F

.field public final mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

.field public mSafeMediaVolumeIndex:I

.field public mSafeMediaVolumeState:I

.field public mSafeMediaVolumeStateForBlueTooth:I

.field public final mSafeMediaVolumeStateLock:Ljava/lang/Object;

.field public final mSettings:Lcom/android/server/audio/SettingsAdapter;

.field public final mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mSoundDoseCallback:Landroid/media/ISoundDoseCallback$Stub;

.field public mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;


# direct methods
.method public static synthetic $r8$lambda$4jgUORQzaAoMqlTL2c6pYUNMdz4(Lcom/android/server/audio/SoundDoseHelper;Landroid/media/SoundDoseRecord;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->lambda$onPersistSoundDoseRecords$2(Landroid/media/SoundDoseRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5ujxYxAPwJ3IkNPsm7WMHgwHyGU(Lcom/android/server/audio/SoundDoseHelper;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fZrQvNDA7FAADuWESel6adEeyAE(Landroid/media/SoundDoseRecord;Landroid/media/SoundDoseRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->lambda$updateSoundDoseRecords_l$1(Landroid/media/SoundDoseRecord;Landroid/media/SoundDoseRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$g8pr3Q-o5gnF9fWmLQCxRdH9oOU(JLjava/lang/String;)Landroid/media/SoundDoseRecord;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/SoundDoseHelper;->lambda$persistedStringToRecordList$3(JLjava/lang/String;)Landroid/media/SoundDoseRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioService(Lcom/android/server/audio/SoundDoseHelper;)Lcom/android/server/audio/AudioService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCsdStateLock(Lcom/android/server/audio/SoundDoseHelper;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentCsd(Lcom/android/server/audio/SoundDoseHelper;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnableCsd(Lcom/android/server/audio/SoundDoseHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastMomentaryExposureTimeMs(Lcom/android/server/audio/SoundDoseHelper;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogger(Lcom/android/server/audio/SoundDoseHelper;)Lcom/android/server/utils/EventLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumeController(Lcom/android/server/audio/SoundDoseHelper;)Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentCsd(Lcom/android/server/audio/SoundDoseHelper;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastMomentaryExposureTimeMs(Lcom/android/server/audio/SoundDoseHelper;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetTimeoutMsForWarning(Lcom/android/server/audio/SoundDoseHelper;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->getTimeoutMsForWarning(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateSoundDoseRecords_l(Lcom/android/server/audio/SoundDoseHelper;[Landroid/media/SoundDoseRecord;F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/SoundDoseHelper;->updateSoundDoseRecords_l([Landroid/media/SoundDoseRecord;F)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;Lcom/android/server/audio/AudioService$AudioHandler;Lcom/android/server/audio/SettingsAdapter;Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;)V
    .locals 5

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x1e

    const-string v2, "CSD updates"

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    .line 153
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 179
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    .line 182
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeBTDevices:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    .line 184
    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateForBlueTooth:I

    const-wide/16 v1, 0x0

    .line 191
    iput-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    const/4 v1, 0x0

    .line 192
    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 200
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 202
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    .line 204
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    .line 206
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    const-wide/16 v2, -0x1

    .line 209
    iput-wide v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    const/high16 v4, 0x3f800000    # 1.0f

    .line 213
    iput v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 215
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 220
    iput-wide v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 225
    new-instance v2, Lcom/android/server/audio/SoundDoseHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/audio/SoundDoseHelper$1;-><init>(Lcom/android/server/audio/SoundDoseHelper;)V

    iput-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDoseCallback:Landroid/media/ISoundDoseCallback$Stub;

    .line 297
    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 298
    iput-object p3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 299
    iput-object p4, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 300
    iput-object p5, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    .line 302
    iput-object p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 304
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initSafeVolumes()V

    .line 306
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p5, "audio_safe_volume_state"

    invoke-virtual {p4, p1, p5, v0}, Lcom/android/server/audio/SettingsAdapter;->getGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 309
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 311
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateForBlueTooth:I

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->getSafeMediaVolumeIndex()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    .line 319
    invoke-static {v2}, Landroid/media/AudioSystem;->getSoundDoseInterface(Landroid/media/ISoundDoseCallback;)Landroid/media/ISoundDose;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initCsd()V

    const-string p1, "alarm"

    .line 323
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 326
    new-instance p1, Landroid/os/HandlerExecutor;

    invoke-direct {p1, p3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance p2, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/SoundDoseHelper;)V

    const-string/jumbo p0, "media"

    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static convertToBootTime(JJ)J
    .locals 0

    .line 0
    sub-long/2addr p0, p2

    return-wide p0
.end method

.method public static convertToGlobalTime(JJ)J
    .locals 0

    .line 0
    add-long/2addr p0, p2

    return-wide p0
.end method

.method private synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    const-string/jumbo p1, "onPropertiesChanged"

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdEnabled(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onPersistSoundDoseRecords$2(Landroid/media/SoundDoseRecord;)Ljava/lang/String;
    .locals 2

    .line 1167
    iget-wide v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    invoke-static {p1, v0, v1}, Lcom/android/server/audio/SoundDoseHelper;->recordToPersistedString(Landroid/media/SoundDoseRecord;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$persistedStringToRecordList$3(JLjava/lang/String;)Landroid/media/SoundDoseRecord;
    .locals 0

    .line 1195
    invoke-static {p2, p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->persistedStringToRecord(Ljava/lang/String;J)Landroid/media/SoundDoseRecord;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$updateSoundDoseRecords_l$1(Landroid/media/SoundDoseRecord;Landroid/media/SoundDoseRecord;)Z
    .locals 4

    .line 1135
    iget v0, p1, Landroid/media/SoundDoseRecord;->value:F

    iget v1, p0, Landroid/media/SoundDoseRecord;->value:F

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/media/SoundDoseRecord;->timestamp:J

    iget-wide v2, p0, Landroid/media/SoundDoseRecord;->timestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Landroid/media/SoundDoseRecord;->averageMel:F

    iget v1, p0, Landroid/media/SoundDoseRecord;->averageMel:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Landroid/media/SoundDoseRecord;->duration:I

    iget p0, p0, Landroid/media/SoundDoseRecord;->duration:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static persistedStringToRecord(Ljava/lang/String;J)Landroid/media/SoundDoseRecord;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1202
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ","

    .line 1205
    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1206
    array-length v2, v1

    const/4 v3, 0x4

    const-string v4, "AS.SoundDoseHelper"

    if-eq v2, v3, :cond_1

    .line 1207
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Expecting 4 fields for a SoundDoseRecord, parsed "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1211
    :cond_1
    new-instance v2, Landroid/media/SoundDoseRecord;

    invoke-direct {v2}, Landroid/media/SoundDoseRecord;-><init>()V

    const/4 v3, 0x0

    .line 1213
    :try_start_0
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6, p1, p2}, Lcom/android/server/audio/SoundDoseHelper;->convertToBootTime(JJ)J

    move-result-wide p1

    iput-wide p1, v2, Landroid/media/SoundDoseRecord;->timestamp:J

    const/4 p1, 0x1

    .line 1215
    aget-object p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Landroid/media/SoundDoseRecord;->duration:I

    const/4 p1, 0x2

    .line 1216
    aget-object p1, v1, p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, v2, Landroid/media/SoundDoseRecord;->value:F

    const/4 p1, 0x3

    .line 1217
    aget-object p1, v1, p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, v2, Landroid/media/SoundDoseRecord;->averageMel:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 1219
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse persisted SoundDoseRecord: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static persistedStringToRecordList(Ljava/lang/String;J)Ljava/util/List;
    .locals 1

    if-eqz p0, :cond_1

    .line 1191
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\\|"

    .line 1194
    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda4;-><init>()V

    .line 1196
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1197
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    .line 1196
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static recordToPersistedString(Landroid/media/SoundDoseRecord;J)Ljava/lang/String;
    .locals 3

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroid/media/SoundDoseRecord;->timestamp:J

    invoke-static {v1, v2, p1, p2}, Lcom/android/server/audio/SoundDoseHelper;->convertToGlobalTime(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/media/SoundDoseRecord;->duration:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/media/SoundDoseRecord;->value:F

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/SoundDoseRecord;->averageMel:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static safeMediaVolumeStateToString(I)Ljava/lang/String;
    .locals 1

    .line 0
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "SAFE_MEDIA_VOLUME_ACTIVE"

    return-object p0

    :cond_1
    const-string p0, "SAFE_MEDIA_VOLUME_INACTIVE"

    return-object p0

    :cond_2
    const-string p0, "SAFE_MEDIA_VOLUME_DISABLED"

    return-object p0

    :cond_3
    const-string p0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    return-object p0
.end method


# virtual methods
.method public final cancelMusicActiveCheck()V
    .locals 2

    .line 1054
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 1056
    iput-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method public checkSafeMediaVolume(III)Z
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/SoundDoseHelper;->checkSafeMediaVolume_l(III)Z

    move-result p0

    .line 566
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final checkSafeMediaVolume_l(III)Z
    .locals 3

    .line 572
    invoke-static {}, Lcom/samsung/android/server/audio/FactoryHelper;->isFactoryMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 575
    :cond_0
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isBikeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 579
    :cond_1
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p1, v0, p1

    if-ne p1, v2, :cond_2

    .line 581
    invoke-virtual {p0, p3}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 582
    invoke-virtual {p0, p3}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result p1

    if-le p2, p1, :cond_2

    .line 584
    invoke-virtual {p0, p3}, Lcom/android/server/audio/SoundDoseHelper;->isSafeBTDevice(I)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public configureSafeMedia(ZLjava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    const/16 v0, 0x3ea

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e9

    .line 686
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 690
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    xor-int/lit8 p1, p1, 0x1

    const-string v4, "audio.safemedia.bypass"

    invoke-static {v4, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    const/16 p1, 0x7530

    :goto_1
    int-to-long v4, p1

    add-long/2addr v2, v4

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    .line 695
    :goto_2
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 696
    invoke-virtual {p0, v0, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 695
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public customDump(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "  SEC_AUDIO_SAFE_MEDIA_VOLUME="

    .line 1331
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  SEC_AUDIO_SAFE_VOLUME_COUNTRY="

    .line 1332
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .locals 12

    .line 608
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 610
    invoke-virtual {p0, v3, p1}, Lcom/android/server/audio/SoundDoseHelper;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 611
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 613
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    if-eqz v1, :cond_2

    .line 615
    iget v2, v1, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mStreamType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    iget v1, v1, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mDevice:I

    .line 616
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    iget v2, v2, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->checkAndPostSetAvrcpAbsoluteVolumeIndex(I)V

    .line 620
    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    iget v5, v1, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mStreamType:I

    iget v6, v1, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mIndex:I

    iget v7, v1, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mFlags:I

    iget v8, v1, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mDevice:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v9, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;ZZ)V

    .line 627
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 628
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    iget v2, v2, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mStreamType:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 629
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    iget v2, v2, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mIndex:I

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_VOLUME_SHOW_UI"

    .line 630
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    iget v2, v2, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mFlags:I

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 632
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 633
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    iget v3, v1, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mStreamType:I

    iget v1, v1, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mFlags:I

    invoke-virtual {p1, v3, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 636
    iput-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    .line 638
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "  mEnableCsd="

    .line 771
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 772
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "  mCurrentCsd="

    .line 774
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 775
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    const-string v0, "  mSafeMediaVolumeState="

    .line 777
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    invoke-static {v0}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mSafeMediaVolumeStateForBlueTooth="

    .line 779
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 780
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateForBlueTooth:I

    invoke-static {v0}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mSafeMediaVolumeIndex="

    .line 781
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const/4 v0, 0x0

    .line 782
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string v1, "  mSafeMediaVolumeIndex["

    .line 783
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]="

    .line 784
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "  mSafeMediaVolumeDbfs="

    .line 786
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDbfs:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  mMusicActiveMs="

    .line 787
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mMcc="

    .line 788
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mPendingVolumeCommand="

    .line 789
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 790
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 791
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 793
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->customDump(Ljava/io/PrintWriter;)V

    .line 795
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public enforceSafeMediaVolume(Ljava/lang/String;)V
    .locals 7

    .line 541
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getVssVolumeForStream(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 544
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 545
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 546
    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    .line 547
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result v5

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    .line 549
    invoke-virtual {v0, v5, v3, p1, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 551
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 552
    invoke-virtual {v4, v1, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v5, 0x0

    .line 551
    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public enforceSafeMediaVolumeIfActive(Ljava/lang/String;)V
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 537
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public forceComputeCsdOnAllDevices(Z)V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 481
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1

    const-string p0, "Sound dose interface not initialized"

    .line 483
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 488
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/ISoundDose;->forceComputeCsdOnAllDevices(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Exception while forcing CSD computation on all devices"

    .line 490
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public forceUseFrameworkMel(Z)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1

    const-string p0, "Sound dose interface not initialized"

    .line 465
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 470
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/ISoundDose;->forceUseFrameworkMel(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Exception while forcing the internal MEL computation"

    .line 472
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getCsd()F
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_0

    return v1

    .line 400
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1

    const-string p0, "Sound dose interface not initialized"

    .line 402
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 407
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/media/ISoundDose;->getCsd()F

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v2, "Exception while getting the CSD value"

    .line 409
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public getOutputRs2UpperBound()F
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 363
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1

    const-string p0, "Sound dose interface not initialized"

    .line 365
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 370
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/media/ISoundDose;->getOutputRs2UpperBound()F

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v2, "Exception while getting the RS2 exposure value"

    .line 372
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public getSafeDeviceMediaVolumeIndex(I)I
    .locals 7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1069
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1070
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    return p0

    .line 1074
    :cond_1
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 1075
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v1

    .line 1077
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDbfs:F

    :goto_0
    sub-int v3, v2, v0

    .line 1080
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    add-int v3, v2, v0

    .line 1081
    div-int/lit8 v3, v3, 0x2

    .line 1082
    invoke-static {v1, v3, p1}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v4

    .line 1084
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1087
    :cond_2
    iget v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDbfs:F

    cmpl-float v6, v4, v5

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0

    .line 1096
    :cond_5
    :goto_1
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    if-eqz p1, :cond_6

    const/4 p0, 0x7

    goto :goto_2

    .line 1098
    :cond_6
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    if-eqz p1, :cond_7

    .line 1099
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e0102

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_2

    :cond_7
    const/16 p0, 0x9

    :goto_2
    mul-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public final getSafeMediaVolumeIndex()I
    .locals 1

    .line 1316
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x46

    return p0

    .line 1319
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0102

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public getSafeMediaVolumeIndex(I)I
    .locals 2

    .line 708
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 709
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSafeMediaVolumeState()I
    .locals 0

    .line 1283
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    return p0
.end method

.method public final getTimeoutMsForWarning(I)I
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    const/16 v0, 0x1388

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    const/4 v0, -0x1

    if-eq p1, p0, :cond_0

    .line 1025
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CSD warning "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v1, "AS.SoundDoseHelper"

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0x1b58

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 737
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 765
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected msg to handle: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.SoundDoseHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 757
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 758
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 761
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 762
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result p1

    .line 761
    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/android/server/audio/SoundDoseHelper;->updateDoseAttenuation(IIIZ)V

    goto :goto_0

    .line 753
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->onPersistSoundDoseRecords()V

    goto :goto_0

    .line 747
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 748
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "unsafe_volume_music_active_ms"

    const/4 v2, -0x2

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/android/server/audio/SettingsAdapter;->putSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 744
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->onPersistSafeVolumeState(I)V

    goto :goto_0

    :pswitch_4
    const/16 v3, 0x3ea

    if-ne v0, v3, :cond_1

    move v1, v2

    .line 740
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/SoundDoseHelper;->onConfigureSafeMedia(ZLjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final initCsd()V
    .locals 5

    .line 856
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ISoundDose;

    if-nez v0, :cond_0

    const-string p0, "AS.SoundDoseHelper"

    const-string v0, "ISoundDose instance is null."

    .line 858
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 863
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/ISoundDose;->setCsdEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AS.SoundDoseHelper"

    const-string v2, "Cannot disable CSD"

    .line 865
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "AS.SoundDoseHelper"

    const-string v1, "Initializing sound dose"

    .line 872
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_1
    iget-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 876
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 879
    :cond_2
    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    const-string v2, "audio_safe_csd_current_value"

    const/4 v3, 0x0

    .line 881
    invoke-virtual {p0, v2, v3}, Lcom/android/server/audio/SoundDoseHelper;->parseGlobalSettingFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_3

    const-string v1, "audio_safe_csd_next_warning"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 884
    invoke-virtual {p0, v1, v2}, Lcom/android/server/audio/SoundDoseHelper;->parseGlobalSettingFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 886
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 887
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "audio_safe_csd_dose_records"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/SettingsAdapter;->getGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 886
    invoke-static {v1, v2, v3}, Lcom/android/server/audio/SoundDoseHelper;->persistedStringToRecordList(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 891
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 894
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 896
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->reset()V

    return-void

    :catchall_0
    move-exception p0

    .line 894
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public initSafeMediaVolumeIndex()V
    .locals 4

    const/4 v0, 0x0

    .line 701
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 703
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->getSafeDeviceMediaVolumeIndex(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initSafeVolumes()V
    .locals 5

    .line 332
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 334
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 336
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 338
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 340
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const v3, 0x20000002

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 342
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/16 v3, 0x100

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 347
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    .line 348
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/16 v4, 0x80

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 352
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeBTDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 353
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeBTDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 354
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeBTDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public invalidatPendingVolumeCommand()V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 732
    :try_start_0
    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    .line 733
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCsdEnabled()Z
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 499
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1

    const-string p0, "Sound dose interface not initialized"

    .line 501
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 506
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/media/ISoundDose;->isSoundDoseHalSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v2, "Exception while forcing CSD computation on all devices"

    .line 508
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isSafeBTDevice(I)Z
    .locals 0

    .line 590
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeBTDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSafeMediaVolumeStateActive()Z
    .locals 1

    .line 1274
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    if-eqz v0, :cond_0

    .line 1275
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateForBlueTooth:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCheckMusicActive(Ljava/lang/String;Z)V
    .locals 8

    .line 655
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 657
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    .line 658
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 659
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->scheduleMusicActiveCheck()V

    .line 660
    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p2, v2, v1}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    move-result p2

    .line 662
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le p2, v1, :cond_3

    .line 664
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 665
    iget-wide v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    cmp-long p2, v6, v4

    if-eqz p2, :cond_0

    .line 666
    iget p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    sub-long v3, v1, v6

    long-to-int v3, v3

    add-int/2addr p2, v3

    iput p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 668
    :cond_0
    iput-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    const-string p2, "AS.SoundDoseHelper"

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckMusicActive() mMusicActiveMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    const v1, 0x44aa200

    if-le p2, v1, :cond_1

    const/4 p2, 0x1

    .line 671
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/SoundDoseHelper;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 672
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 674
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->saveMusicActiveMs()V

    goto :goto_0

    .line 677
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->cancelMusicActiveCheck()V

    .line 678
    iput-wide v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 681
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onConfigureSafeMedia(ZLjava/lang/String;)V
    .locals 3

    .line 900
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdEnabled(Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 903
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    .line 904
    iget v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    if-ne v2, v1, :cond_0

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    .line 905
    :cond_0
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    if-eqz p1, :cond_1

    .line 906
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->getSafeMediaVolumeIndex()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    goto :goto_0

    .line 909
    :cond_1
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x10e0102

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    .line 912
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initSafeMediaVolumeIndex()V

    .line 914
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SoundDoseHelper;->updateSafeMediaVolume_l(Ljava/lang/String;)V

    .line 916
    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    .line 918
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPersistSafeVolumeState(I)V
    .locals 2

    .line 1109
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "audio_safe_volume_state"

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/audio/SettingsAdapter;->putGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final onPersistSoundDoseRecords()V
    .locals 6

    .line 1153
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1154
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 1158
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "audio_safe_csd_current_value"

    iget v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 1160
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    .line 1158
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/SettingsAdapter;->putGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1161
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "audio_safe_csd_next_warning"

    iget v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 1163
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    .line 1161
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/SettingsAdapter;->putGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1164
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "audio_safe_csd_dose_records"

    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 1166
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/audio/SoundDoseHelper;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string/jumbo v4, "|"

    .line 1169
    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    .line 1168
    invoke-interface {p0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1164
    invoke-virtual {v1, v2, v3, p0}, Lcom/android/server/audio/SettingsAdapter;->putGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final parseGlobalSettingFloat(Ljava/lang/String;F)F
    .locals 3

    .line 1227
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/audio/SettingsAdapter;->getGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AS.SoundDoseHelper"

    if-eqz p0, :cond_1

    .line 1229
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1236
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing float from settings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return p2

    .line 1230
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No value stored in settings "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public raiseVolumeDisplaySafeMediaVolume(IIII)Z
    .locals 0

    .line 718
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/SoundDoseHelper;->checkSafeMediaVolume(III)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 722
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    invoke-interface {p0, p4}, Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;->postDisplaySafeVolumeWarning(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public reset()V
    .locals 5

    const-string v0, "AS.SoundDoseHelper"

    const-string v1, "Reset the sound dose helper"

    .line 799
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDoseCallback:Landroid/media/ISoundDoseCallback$Stub;

    .line 802
    invoke-static {v1}, Landroid/media/AudioSystem;->getSoundDoseInterface(Landroid/media/ISoundDoseCallback;)Landroid/media/ISoundDose;

    move-result-object v1

    const/4 v2, 0x0

    .line 801
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndExchange(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 806
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ISoundDose;

    if-eqz v1, :cond_0

    .line 807
    invoke-interface {v1}, Landroid/media/ISoundDose;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 808
    iget v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const-string v2, "AS.SoundDoseHelper"

    .line 809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting the saved sound dose value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/media/SoundDoseRecord;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/SoundDoseRecord;

    .line 813
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    invoke-interface {v1, p0, v2}, Landroid/media/ISoundDose;->resetCsd(F[Landroid/media/SoundDoseRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 819
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public resetCsdTimeouts()V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, -0x1

    .line 454
    :try_start_0
    iput-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    .line 455
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public restoreMusicActiveMs()V
    .locals 6

    .line 523
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 525
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "unsafe_volume_music_active_ms"

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/server/audio/SettingsAdapter;->getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const v2, 0x44aa200

    .line 524
    invoke-static {v1, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 529
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public safeDevicesContains(I)Z
    .locals 0

    .line 727
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public safeMediaVolumeIndex(I)I
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    .line 516
    sget-object p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 p1, 0x3

    aget p0, p0, p1

    :cond_0
    return p0
.end method

.method public final saveMusicActiveMs()V
    .locals 3

    .line 1062
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    const/4 v1, 0x0

    const/16 v2, 0x3ec

    invoke-virtual {v0, v2, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleMusicActiveCheck()V
    .locals 6

    .line 642
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->cancelMusicActiveCheck()V

    .line 644
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.audio.action.CHECK_MUSIC_ACTIVE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0xc000000

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 648
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 649
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x2

    .line 648
    invoke-virtual {v1, v4, v2, v3, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 651
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCsd(F)V
    .locals 6

    .line 415
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    float-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    .line 422
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 424
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 426
    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 427
    new-instance v1, Landroid/media/SoundDoseRecord;

    invoke-direct {v1}, Landroid/media/SoundDoseRecord;-><init>()V

    .line 428
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Landroid/media/SoundDoseRecord;->timestamp:J

    .line 429
    iput p1, v1, Landroid/media/SoundDoseRecord;->value:F

    .line 430
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/media/SoundDoseRecord;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/SoundDoseRecord;

    .line 433
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    if-nez p0, :cond_2

    const-string p0, "AS.SoundDoseHelper"

    const-string p1, "Sound dose interface not initialized"

    .line 437
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 442
    :cond_2
    :try_start_1
    invoke-interface {p0, p1, v1}, Landroid/media/ISoundDose;->resetCsd(F[Landroid/media/SoundDoseRecord;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AS.SoundDoseHelper"

    const-string v0, "Exception while setting the CSD value"

    .line 444
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 433
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setOutputRs2UpperBound(F)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1

    const-string p0, "Sound dose interface not initialized"

    .line 384
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 389
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/ISoundDose;->setOutputRs2UpperBound(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Exception while setting the RS2 exposure value"

    .line 391
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .locals 4

    .line 1031
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    if-ne v0, v3, :cond_0

    .line 1034
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 1035
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SoundDoseHelper;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    if-ne v0, v2, :cond_2

    .line 1037
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    if-eqz p1, :cond_1

    .line 1039
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->setSafeMediaVolumePersist(I)V

    return-void

    .line 1043
    :cond_1
    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 1044
    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    const-wide/16 p1, 0x0

    .line 1045
    iput-wide p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->saveMusicActiveMs()V

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->scheduleMusicActiveCheck()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSafeMediaVolumePersist(I)V
    .locals 5

    .line 1304
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1305
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 1306
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateForBlueTooth:I

    .line 1307
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x3eb

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1308
    invoke-virtual {v1, v2, p1, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0x0

    .line 1307
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1310
    iput v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 1311
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->saveMusicActiveMs()V

    .line 1312
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSafeMediaVolumeState(I)V
    .locals 2

    .line 1287
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1289
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 1291
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSafeMediaVolumeStateForBlueTooth(I)V
    .locals 2

    .line 1295
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1297
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateForBlueTooth:I

    .line 1299
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSafeVolumeController(Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;)V
    .locals 0

    .line 1326
    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    return-void
.end method

.method public final updateCsdEnabled(Ljava/lang/String;)V
    .locals 4

    const-string v0, "audio.safemedia.csd.force"

    const/4 v1, 0x0

    .line 990
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "media"

    const-string v1, "enable_csd"

    .line 993
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 997
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1004
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "AS.SoundDoseHelper"

    .line 1005
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": enable CSD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initCsd()V

    .line 1008
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1009
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->updateSafeMediaVolume_l(Ljava/lang/String;)V

    .line 1010
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateDoseAttenuation(IIIZ)V
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ISoundDose;

    const-string v1, "AS.SoundDoseHelper"

    if-nez v0, :cond_1

    const-string p0, "Can not apply attenuation. ISoundDose itf is null."

    .line 830
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p4, :cond_2

    const/4 p0, 0x0

    .line 837
    :try_start_0
    invoke-interface {v0, p0, p2}, Landroid/media/ISoundDose;->updateAttenuation(FI)V

    return-void

    .line 842
    :cond_2
    sget-object p4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p3, p4, p3

    const/4 p4, 0x3

    if-ne p3, p4, :cond_3

    .line 843
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 p0, p1, 0x5

    .line 844
    div-int/lit8 p0, p0, 0xa

    .line 845
    invoke-static {p4, p0, p2}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result p0

    .line 844
    invoke-interface {v0, p0, p2}, Landroid/media/ISoundDose;->updateAttenuation(FI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 850
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not apply the attenuation for MEL calculation with volume index "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public final updateSafeMediaVolume_l(Ljava/lang/String;)V
    .locals 8

    const-string v0, "audio.safemedia.force"

    const/4 v1, 0x0

    .line 924
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const-string v3, "audio.safemedia.bypass"

    .line 931
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 933
    sget-boolean v4, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    if-nez v4, :cond_2

    move v3, v2

    .line 937
    :cond_2
    sget-boolean v4, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    const/4 v5, 0x3

    if-eqz v4, :cond_4

    .line 938
    iget v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    if-ne v4, v2, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    if-ne v4, v5, :cond_4

    move v3, v1

    move v0, v2

    .line 948
    :cond_4
    :goto_2
    invoke-static {}, Lcom/samsung/android/server/audio/FactoryHelper;->isFactoryMode()Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v2

    .line 951
    :cond_5
    sget-boolean v4, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->isBikeMode()Z

    move-result v4

    if-eqz v4, :cond_6

    move v3, v2

    :cond_6
    const-wide/16 v6, 0x0

    if-eqz v0, :cond_9

    if-nez v3, :cond_9

    .line 963
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    .line 964
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    if-nez v0, :cond_7

    .line 965
    iput v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 966
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_3

    .line 969
    :cond_7
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 970
    iput-wide v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    :cond_8
    :goto_3
    move v2, v5

    goto :goto_4

    .line 975
    :cond_9
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 978
    :goto_4
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    if-eqz p1, :cond_a

    goto :goto_5

    .line 982
    :cond_a
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 p1, 0x3eb

    const/4 v0, 0x0

    .line 983
    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 982
    invoke-virtual {p0, p1, v6, v7}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :goto_5
    return-void
.end method

.method public final updateSoundDoseRecords_l([Landroid/media/SoundDoseRecord;F)V
    .locals 12

    .line 1127
    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v7, p1, v4

    .line 1128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  new record: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AS.SoundDoseHelper"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget v8, v7, Landroid/media/SoundDoseRecord;->duration:I

    int-to-long v10, v8

    add-long/2addr v5, v10

    .line 1131
    iget v8, v7, Landroid/media/SoundDoseRecord;->value:F

    const/4 v10, 0x0

    cmpg-float v8, v8, v10

    if-gez v8, :cond_0

    .line 1134
    iget-object v8, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    new-instance v10, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda1;

    invoke-direct {v10, v7}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda1;-><init>(Landroid/media/SoundDoseRecord;)V

    invoke-interface {v8, v10}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find cached record to remove: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1141
    :cond_0
    iget-object v8, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1145
    :cond_2
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v0, 0x3ed

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1148
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    invoke-static {p2, v5, v6}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->getDoseUpdateEvent(FJ)Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void
.end method

.method public willDisplayWarningAfterCheckVolume(IIII)Z
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 597
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/SoundDoseHelper;->checkSafeMediaVolume_l(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    invoke-interface {v1, p4}, Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 599
    new-instance v1, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    invoke-direct {v1, p1, p2, p4, p3}, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    .line 601
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 603
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
