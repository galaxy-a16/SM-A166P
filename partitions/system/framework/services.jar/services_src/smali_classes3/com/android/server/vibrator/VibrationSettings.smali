.class public final Lcom/android/server/vibrator/VibrationSettings;
.super Ljava/lang/Object;
.source "VibrationSettings.java"


# static fields
.field public static final BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

.field public static final BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

.field public static final INTERNAL_RINGER_MODE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

.field public static final POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

.field public static final SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

.field public static final USER_SWITCHED_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public mBatterySaverMode:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

.field public final mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

.field public final mFallbackEffects:Landroid/util/SparseArray;

.field public final mListeners:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mRingerMode:I

.field final mSettingChangeReceiver:Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

.field final mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

.field public final mSystemUiPackage:Ljava/lang/String;

.field final mUidObserver:Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;

.field public mVibrateInputDevices:Z

.field public mVibrateOn:Z

.field public final mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field public final mVirtualDeviceListener:Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyListeners(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRingerMode(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateRingerMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 12

    .line 90
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x21

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v2, 0x31

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v2, 0x41

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v2, 0x32

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v2, 0x22

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v2, v1

    move-object v3, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Integer;

    move-result-object v2

    .line 91
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    .line 111
    filled-new-array {v1, v8, v9, v11, v10}, [Ljava/lang/Integer;

    move-result-object v1

    .line 106
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 129
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x12

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x42

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 134
    filled-new-array {v1, v2, v11, v10}, [Ljava/lang/Integer;

    move-result-object v1

    .line 130
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    .line 145
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->USER_SWITCHED_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->INTERNAL_RINGER_MODE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 5

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    .line 186
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 201
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    .line 202
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 203
    new-instance p3, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    invoke-direct {p3, p0, p2}, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    .line 204
    new-instance p2, Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;

    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;

    .line 205
    new-instance p2, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingChangeReceiver:Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

    .line 206
    new-instance p2, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;

    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceListener:Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;

    .line 208
    const-class p2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManagerInternal;

    .line 209
    invoke-virtual {p2}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    const p2, 0x10701b0

    .line 211
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object p2

    const v0, 0x10700dc

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v0

    const v1, 0x1070105

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v1

    const v2, 0x10700ac

    .line 217
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v2

    .line 220
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v4, 0x0

    .line 221
    invoke-virtual {v3, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x1

    .line 222
    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x2

    .line 223
    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x5

    .line 224
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x15

    .line 226
    invoke-static {p2, v4}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p2

    .line 225
    invoke-virtual {v3, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    new-instance p2, Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-direct {p2, p1, p3, p4}, Lcom/android/server/vibrator/VibrationCustomSettings;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 233
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 2

    .line 196
    new-instance v0, Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;Lcom/android/server/vibrator/VibratorManagerService;)V

    return-void
.end method

.method public static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .locals 3

    if-eqz p0, :cond_2

    .line 720
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 723
    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 725
    :cond_1
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 3

    .line 730
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 734
    :cond_0
    array-length p1, p0

    new-array p1, p1, [J

    const/4 v0, 0x0

    .line 735
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 736
    aget v1, p0, v0

    int-to-long v1, v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static intensityToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN INTENSITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "HIGH"

    return-object p0

    :cond_1
    const-string p0, "MEDIUM_HIGH"

    return-object p0

    :cond_2
    const-string p0, "MEDIUM"

    return-object p0

    :cond_3
    const-string p0, "MEDIUM_LOW"

    return-object p0

    :cond_4
    const-string p0, "LOW"

    return-object p0

    :cond_5
    const-string p0, "OFF"

    return-object p0
.end method


# virtual methods
.method public addCustomDump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 911
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationCustomSettings;->addCustomDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public addListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
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

.method public bootCompleteReady()V
    .locals 0

    .line 871
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->bootCompleteReady()V

    return-void
.end method

.method public final createEffectFromResource(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 714
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object p0

    .line 715
    invoke-static {p0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    .line 615
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    const-wide v2, 0x10800000018L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 617
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    const-wide v2, 0x10800000006L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/16 v1, 0x11

    .line 619
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000012L

    .line 618
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 621
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000013L

    .line 620
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x32

    .line 623
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000016L

    .line 622
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 625
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000017L

    .line 624
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x12

    .line 627
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000007L

    .line 626
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 629
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000008L

    .line 628
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x13

    .line 631
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000014L

    .line 630
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 633
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000015L

    .line 632
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x31

    .line 635
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000009L

    .line 634
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 637
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x1050000000aL

    .line 636
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x21

    .line 639
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x1050000000bL

    .line 638
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 641
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result p0

    const-wide v1, 0x1050000000cL

    .line 640
    invoke-virtual {p1, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 642
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentIntensity(I)I
    .locals 2

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v0

    .line 371
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 372
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    .line 373
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentMagnitude(I)I
    .locals 0

    .line 875
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationCustomSettings;->getCurrentMagnitude(I)I

    move-result p0

    return p0
.end method

.method public getDefaultIntensity(I)I
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result p0

    return p0
.end method

.method public getFallbackEffect(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method public getMaxMagnitude()I
    .locals 0

    .line 883
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->getMaxMagnitude()I

    move-result p0

    return p0
.end method

.method public getMinMagnitude()I
    .locals 0

    .line 887
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->getMinMagnitude()I

    move-result p0

    return p0
.end method

.method public getRampDownDuration()I
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    move-result p0

    return p0
.end method

.method public getRampStepDuration()I
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRampStepDurationMs()I

    move-result p0

    return p0
.end method

.method public final loadSystemSetting(Ljava/lang/String;I)I
    .locals 1

    .line 697
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final notifyListeners()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 649
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;

    .line 651
    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;->onChange()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 649
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSystemReady()V
    .locals 6

    .line 237
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 238
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 239
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    .line 241
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 242
    :try_start_0
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 243
    iput-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 244
    iput v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 245
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    :catch_0
    new-instance v1, Lcom/android/server/vibrator/VibrationSettings$1;

    invoke-direct {v1, p0}, Lcom/android/server/vibrator/VibrationSettings$1;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 278
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceListener:Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;

    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->registerVirtualDisplayListener(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$VirtualDisplayListener;)V

    .line 282
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceListener:Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;

    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->registerAppsOnVirtualDeviceListener(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;)V

    .line 285
    :cond_0
    sget-object v0, Lcom/android/server/vibrator/VibrationSettings;->USER_SWITCHED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsChangeReceiver(Landroid/content/IntentFilter;)V

    .line 286
    sget-object v0, Lcom/android/server/vibrator/VibrationSettings;->INTERNAL_RINGER_MODE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsChangeReceiver(Landroid/content/IntentFilter;)V

    const-string/jumbo v0, "vibrate_input_devices"

    .line 289
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v0, "vibrate_on"

    .line 290
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "haptic_feedback_enabled"

    .line 291
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "alarm_vibration_intensity"

    .line 294
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "haptic_feedback_intensity"

    .line 296
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 295
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "hardware_haptic_feedback_intensity"

    .line 298
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v0, "media_vibration_intensity"

    .line 300
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v0, "notification_vibration_intensity"

    .line 302
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v0, "ring_vibration_intensity"

    .line 304
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 307
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->onSystemReady()V

    .line 308
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->registerCustomSettingsObserver()V

    .line 309
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->updateSupportedHalFeature()V

    .line 310
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->setDefaultRingtoneVibrationSepIndex()V

    .line 314
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    return-void

    :catchall_0
    move-exception p0

    .line 245
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final registerSettingsChangeReceiver(Landroid/content/IntentFilter;)V
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingChangeReceiver:Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final registerSettingsObserver(Landroid/net/Uri;)V
    .locals 3

    .line 702
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public shouldCancelVibrationOnScreenOff(Lcom/android/server/vibrator/Vibration$CallerInfo;J)Z
    .locals 4

    .line 465
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 467
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    .line 473
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->getLastGoToSleep()Landroid/os/PowerManager$SleepData;

    move-result-object v1

    .line 474
    iget-wide v2, v1, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    cmp-long p2, v2, p2

    if-ltz p2, :cond_0

    sget-object p2, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    iget p3, v1, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 475
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string p0, "VibrationSettings"

    .line 478
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring screen off event triggered at uptime "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, v1, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " for reason "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 480
    invoke-static {p2}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 478
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 484
    :cond_1
    sget-object p2, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    iget-object p3, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_2

    return p3

    .line 489
    :cond_2
    iget p2, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_3

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->opPkg:Ljava/lang/String;

    .line 490
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    move v0, p3

    :cond_3
    return v0

    :catchall_0
    move-exception p0

    .line 467
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public shouldIgnoreVibration(Lcom/android/server/vibrator/Vibration$CallerInfo;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 6

    .line 400
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 401
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;

    iget v3, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;->isUidForeground(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 403
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 404
    iget-object p0, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const-string p1, "ALLOWED_IN_BACKGROUND_PROCESS"

    .line 405
    invoke-virtual {p0, p1}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 406
    monitor-exit v1

    return-object v3

    .line 409
    :cond_0
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v1

    return-object p0

    .line 411
    :cond_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceListener:Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;

    iget v4, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    iget v5, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->displayId:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;->isAppOrDisplayOnAnyVirtualDevice(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 413
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v1

    return-object p0

    .line 416
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 417
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v1

    return-object p0

    .line 420
    :cond_3
    iget-object v2, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    if-nez v2, :cond_4

    .line 431
    iget-object v2, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const-string v4, "INTENSITY_MAX"

    invoke-virtual {v2, v4}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const-string v4, "INTENSITY_MIN"

    .line 432
    invoke-virtual {v2, v4}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const-string v4, "INDIVIDUAL_INTENSITY"

    .line 433
    invoke-virtual {v2, v4}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 434
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v1

    return-object p0

    .line 440
    :cond_4
    iget-object v2, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForRingerModeLocked(I)Z

    move-result p0

    if-nez p0, :cond_6

    .line 442
    iget-object p0, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const-string p1, "VIBRATE_CALL"

    invoke-virtual {p0, p1}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 443
    monitor-exit v1

    return-object v3

    .line 445
    :cond_5
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v1

    return-object p0

    .line 448
    :cond_6
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final shouldVibrateForRingerModeLocked(I)Z
    .locals 2

    const/16 v0, 0x21

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x31

    if-eq p1, v0, :cond_0

    return v1

    .line 505
    :cond_0
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public shouldVibrateInputDevices()Z
    .locals 0

    .line 389
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    return p0
.end method

.method public final toIntensity(II)I
    .locals 0

    .line 0
    if-ltz p1, :cond_1

    const/4 p0, 0x5

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method public final toPositiveIntensity(II)I
    .locals 0

    if-nez p1, :cond_0

    return p2

    .line 679
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 591
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 593
    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 594
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 595
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 596
    invoke-static {v3}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=("

    .line 597
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",default:"

    .line 598
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), "

    .line 599
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d

    .line 601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VibrationSettings{mVibratorConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrateInputDevices="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mBatterySaverMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrateOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrationIntensities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProcStatesCache="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;

    invoke-static {p0}, Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;->-$$Nest$fgetmProcStatesCache(Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 610
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public update()V
    .locals 0

    .line 510
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings()V

    .line 511
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateRingerMode()V

    .line 512
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method

.method public updateAmplitudeLevel()V
    .locals 0

    .line 891
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->updateAmplitudeLevel()V

    return-void
.end method

.method public updateCustomSettings()V
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->updateCustomSettings()V

    return-void
.end method

.method public final updateRingerMode()V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 586
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateSettings()V
    .locals 16

    move-object/from16 v0, p0

    .line 516
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "vibrate_input_devices"

    const/4 v3, 0x0

    .line 517
    invoke-virtual {v0, v2, v3}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    const-string/jumbo v2, "vibrate_on"

    .line 518
    invoke-virtual {v0, v2, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput-boolean v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    const-string v2, "alarm_vibration_intensity"

    const/4 v4, -0x1

    .line 521
    invoke-virtual {v0, v2, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v2

    const/16 v5, 0x11

    .line 522
    invoke-virtual {v0, v5}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v6

    .line 520
    invoke-virtual {v0, v2, v6}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v2

    const/16 v6, 0x12

    .line 523
    invoke-virtual {v0, v6}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v7

    .line 525
    invoke-static {}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getHapticFeedbackSettingName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v8

    .line 524
    invoke-virtual {v0, v8, v7}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v8

    .line 527
    invoke-virtual {v0, v8, v7}, Lcom/android/server/vibrator/VibrationSettings;->toPositiveIntensity(II)I

    move-result v7

    const-string v9, "hardware_haptic_feedback_intensity"

    .line 530
    invoke-virtual {v0, v9, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v9

    .line 529
    invoke-virtual {v0, v9, v7}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v9

    const-string/jumbo v10, "media_vibration_intensity"

    .line 533
    invoke-virtual {v0, v10, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v10

    const/16 v11, 0x13

    .line 534
    invoke-virtual {v0, v11}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v12

    .line 532
    invoke-virtual {v0, v10, v12}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v10

    const/16 v12, 0x31

    .line 535
    invoke-virtual {v0, v12}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v13

    .line 537
    invoke-static {}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getNotificationVibrationSettingName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v14

    .line 536
    invoke-virtual {v0, v14, v13}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v14

    .line 539
    invoke-virtual {v0, v14, v13}, Lcom/android/server/vibrator/VibrationSettings;->toPositiveIntensity(II)I

    move-result v13

    .line 542
    invoke-static {}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getRingVibrationSettingName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v4

    const/16 v15, 0x21

    .line 543
    invoke-virtual {v0, v15}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v6

    .line 541
    invoke-virtual {v0, v4, v6}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v4

    .line 545
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 546
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 547
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v12, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 548
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v11, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 549
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 550
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v15, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 553
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x41

    invoke-virtual {v2, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 558
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x32

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 559
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x22

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 566
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x12

    invoke-virtual {v2, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 570
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x42

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibrationSettings;->updateAmplitudeLevel()V

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibrationSettings;->updateCustomSettings()V

    .line 576
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
