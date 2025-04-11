.class public Lcom/android/server/power/LowPowerStandbyController;
.super Ljava/lang/Object;
.source "LowPowerStandbyController.java"


# static fields
.field static final DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;


# instance fields
.field public mActiveDuringMaintenance:Z

.field public final mActivityManager:Ljava/util/function/Supplier;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

.field public mEnableCustomPolicy:Z

.field public mEnableStandbyPorts:Z

.field public mEnabledByDefaultConfig:Z

.field public mForceActive:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIdleSinceNonInteractive:Z

.field public mIsActive:Z

.field public mIsDeviceIdle:Z

.field public mIsEnabled:Z

.field public mIsInteractive:Z

.field public mLastInteractiveTimeElapsed:J

.field public final mLocalService:Lcom/android/server/power/LowPowerStandbyControllerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

.field public mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

.field public final mPolicyFile:Ljava/io/File;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

.field public final mStandbyPortLocks:Ljava/util/List;

.field public mStandbyTimeoutConfig:I

.field public mSupportedConfig:Z

.field public final mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

.field public final mUidAllowedReasons:Landroid/util/SparseIntArray;

.field public final mUserReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$C5R8NlvfYJNd4O5ZVFEKi_ixMJg()Landroid/app/IActivityManager;
    .locals 1

    invoke-static {}, Lcom/android/server/power/LowPowerStandbyController;->lambda$new$0()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$CxpuvOeR3cf49PvwTGnpK_s8SmM(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->lambda$enqueueSavePolicy$2(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y-MNuBkcbmvZeDyklvQeG7Q3Ub4(Lcom/android/server/power/LowPowerStandbyController;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->lambda$systemReady$1(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_NYM5Y_vtJkCziUABpYM4TvLZkI(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onStandbyTimeoutExpired()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/android/server/power/LowPowerStandbyController;)Ljava/util/function/Supplier;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mActivityManager:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/power/LowPowerStandbyController;)Landroid/app/ActivityManagerInternal;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/power/LowPowerStandbyController;)Lcom/android/server/power/LowPowerStandbyController$Clock;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/LowPowerStandbyController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/LowPowerStandbyController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/LowPowerStandbyController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPhoneCallServiceTracker(Lcom/android/server/power/LowPowerStandbyController;)Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;->addToAllowlistInternal(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menqueueNotifyAllowlistChangedLocked(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyActiveChanged(Lcom/android/server/power/LowPowerStandbyController;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->notifyActiveChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAllowlistChanged(Lcom/android/server/power/LowPowerStandbyController;[I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->notifyAllowlistChanged([I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyPolicyChanged(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->notifyPolicyChanged(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyStandbyPortsChanged(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->notifyStandbyPortsChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDeviceIdleModeChanged(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onDeviceIdleModeChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monInteractive(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onInteractive()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monNonInteractive(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onNonInteractive()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monStandbyTimeoutExpired(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onStandbyTimeoutExpired()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;->removeFromAllowlistInternal(II)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "DEFAULT_POLICY"

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/os/PowerManager$LowPowerStandbyPolicy;-><init>(Ljava/lang/String;Ljava/util/Set;ILjava/util/Set;)V

    sput-object v0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 7

    new-instance v3, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda3;-><init>()V

    new-instance v4, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-direct {v4}, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;-><init>()V

    new-instance v5, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda4;-><init>()V

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "low_power_standby_policy.xml"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/LowPowerStandbyController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/LowPowerStandbyController$Clock;Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;Ljava/util/function/Supplier;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/LowPowerStandbyController$Clock;Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;Ljava/util/function/Supplier;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/LowPowerStandbyController$LocalService;-><init>(Lcom/android/server/power/LowPowerStandbyController;Lcom/android/server/power/LowPowerStandbyController$LocalService-IA;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLocalService:Lcom/android/server/power/LowPowerStandbyControllerInternal;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$1;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$2;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$3;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    new-instance p2, Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    iput-object p4, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    iput-object p5, p0, Lcom/android/server/power/LowPowerStandbyController;->mActivityManager:Ljava/util/function/Supplier;

    iput-object p6, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicyFile:Ljava/io/File;

    return-void
.end method

.method private synthetic lambda$enqueueSavePolicy$2(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->savePolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V

    return-void
.end method

.method public static synthetic lambda$new$0()Landroid/app/IActivityManager;
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$systemReady$1(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onDeviceConfigFlagsChanged()V

    return-void
.end method

.method public static writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public acquireStandbyPorts(Landroid/os/IBinder;ILjava/util/List;)V
    .locals 2

    invoke-virtual {p0, p3}, Lcom/android/server/power/LowPowerStandbyController;->validatePorts(Ljava/util/List;)V

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/IBinder;ILjava/util/List;)V

    iget-object p3, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->findIndexOfStandbyPorts(Landroid/os/IBinder;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    monitor-exit p3

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->linkToDeath()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/power/LowPowerStandbyController;->isPackageExempt(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyStandbyPortsChangedLocked()V

    :cond_1
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addAllowedReasonLocked(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    or-int/2addr p2, v0

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    if-eq v0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final addToAllowlistInternal(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;->hasAllowedReasonLocked(II)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;->addAllowedReasonLocked(II)Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final cancelStandbyTimeoutAlarmLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p1, "Low Power Standby Controller:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v1, "mIsActive="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "mIsEnabled="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mSupportedConfig="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "mEnabledByDefaultConfig="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mStandbyTimeoutConfig="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v1, "mEnableCustomPolicy="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "mIsInteractive="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "mLastInteractiveTime="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string v1, "mIdleSinceNonInteractive="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "mIsDeviceIdle="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object v1

    const-string v2, "Allowed UIDs="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v2, "mPolicy:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "mIdentifier="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mExemptPackages="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mAllowedReasons="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v2

    invoke-static {v2}, Landroid/os/PowerManager;->lowPowerStandbyAllowedReasonsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mAllowedFeatures="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedFeatures()Ljava/util/Set;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_2
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "UID allowed reasons:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/PowerManager;->lowPowerStandbyAllowedReasonsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getActiveStandbyPorts()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Active standby ports locks:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    const-wide v2, 0x10800000001L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    const-wide v2, 0x10800000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    const-wide v2, 0x10800000003L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    const-wide v2, 0x10800000004L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-wide v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    const-wide v3, 0x10300000006L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    const-wide v2, 0x10500000007L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    const-wide v2, 0x10800000008L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    const-wide v2, 0x10800000009L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    const-wide v5, 0x2050000000aL

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p0

    if-eqz p0, :cond_3

    const-wide v1, 0x10b0000000bL

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-wide v5, 0x20900000002L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v3

    const-wide v4, 0x10500000003L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedFeatures()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide v4, 0x20900000004L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enqueueNotifyActiveChangedLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final enqueueNotifyAllowlistChangedLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final enqueueNotifyPolicyChangedLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final enqueueNotifyStandbyPortsChangedLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final enqueueSavePolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/PowerManager$LowPowerStandbyPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final findIndexOfStandbyPorts(Landroid/os/IBinder;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    invoke-virtual {v1}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public forceActive(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mForceActive:Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getActiveStandbyPorts()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getExemptPackageAppIdsLocked()Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    invoke-virtual {v3}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->getPorts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v0

    :cond_3
    :goto_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAllowlistUidsLocked()[I
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-array p0, v3, [I

    return-object p0

    :cond_0
    invoke-virtual {v2}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_1

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getExemptPackageAppIdsLocked()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Lcom/android/server/power/LowPowerStandbyController;->uidsForAppId(ILjava/util/List;)[I

    move-result-object v4

    array-length v5, v4

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_3

    aget v7, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [I

    :goto_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    return-object p0
.end method

.method public final getExemptPackageAppIdsLocked()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/power/LowPowerStandbyController;->policyOrDefault(Landroid/os/PowerManager$LowPowerStandbyPolicy;)Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPolicyFile()Landroid/util/AtomicFile;
    .locals 1

    new-instance v0, Landroid/util/AtomicFile;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicyFile:Ljava/io/File;

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final hasAllowedReasonLocked(II)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final initSettingsLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-eqz v1, :cond_0

    const-string v1, "low_power_standby_enabled"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAllowed(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAllowed(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedFeatures()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isPackageExempt(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getExemptPackageAppIdsLocked()Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final loadPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .locals 15

    const-string v0, "LowPowerStandbyController"

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicyFile()Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v2

    move v8, v6

    :cond_1
    :goto_0
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_a

    const/4 v11, 0x2

    if-eq v9, v11, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v9

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    if-ne v9, v10, :cond_4

    const-string v9, "low-power-standby-policy"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid root tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-object v2

    :cond_4
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v13, 0x3

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "exempt-package"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v10

    goto :goto_2

    :sswitch_1
    const-string v9, "allowed-reasons"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v11

    goto :goto_2

    :sswitch_2
    const-string v9, "allowed-features"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v13

    goto :goto_2

    :sswitch_3
    const-string v9, "identifier"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_5

    move v9, v6

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v9, -0x1

    :goto_2
    const-string/jumbo v14, "value"

    if-eqz v9, :cond_9

    if-eq v9, v10, :cond_8

    if-eq v9, v11, :cond_7

    if-eq v9, v13, :cond_6

    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-interface {v5, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-interface {v5, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_0

    :cond_8
    invoke-interface {v5, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    invoke-interface {v5, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_a
    new-instance v5, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-direct {v5, v7, v3, v8, v4}, Landroid/os/PowerManager$LowPowerStandbyPolicy;-><init>(Ljava/lang/String;Ljava/util/Set;ILjava/util/Set;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_b

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_b
    return-object v5

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_c

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_3
    throw v3
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read policy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x60775357 -> :sswitch_3
        -0x2d963d3e -> :sswitch_2
        0x5007738a -> :sswitch_1
        0x79ffd458 -> :sswitch_0
    .end sparse-switch
.end method

.method public final notifyActiveChanged(Z)V
    .locals 1

    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0, p1}, Landroid/os/PowerManagerInternal;->setLowPowerStandbyActive(Z)V

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setLowPowerStandbyActive(Z)V

    return-void
.end method

.method public final notifyAllowlistChanged([I)V
    .locals 1

    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0, p1}, Landroid/os/PowerManagerInternal;->setLowPowerStandbyAllowlist([I)V

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setLowPowerStandbyAllowlist([I)V

    return-void
.end method

.method public final notifyEnabledChangedLocked()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.LOW_POWER_STANDBY_ENABLED_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final notifyPolicyChanged(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.os.action.LOW_POWER_STANDBY_POLICY_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x50000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final notifyStandbyPortsChanged()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.LOW_POWER_STANDBY_PORTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.MANAGE_LOW_POWER_STANDBY"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final onDeviceConfigFlagsChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-virtual {v1}, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;->enableCustomPolicy()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyPolicyChangedLocked()V

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-virtual {v1}, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;->enableStandbyPorts()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDeviceIdleModeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDisabledLocked()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->cancelStandbyTimeoutAlarmLocked()V

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->unregisterListeners()V

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    return-void
.end method

.method public final onEnabledLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onInteractive()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onNonInteractive()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->registerListeners()V

    return-void
.end method

.method public final onInteractive()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->cancelStandbyTimeoutAlarmLocked()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onNonInteractive()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    iput-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    iput-wide v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    iget v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->scheduleStandbyTimeoutAlarmLocked()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSettingsChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateSettingsLocked()V

    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eq v2, v1, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onEnabledLocked()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onDisabledLocked()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->notifyEnabledChangedLocked()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onStandbyTimeoutExpired()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final policyChangeAffectsAllowlistLocked(Landroid/os/PowerManager$LowPowerStandbyPolicy;Landroid/os/PowerManager$LowPowerStandbyPolicy;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->policyOrDefault(Landroid/os/PowerManager$LowPowerStandbyPolicy;)Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/android/server/power/LowPowerStandbyController;->policyOrDefault(Landroid/os/PowerManager$LowPowerStandbyPolicy;)Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v1

    xor-int/2addr p0, v1

    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    and-int/2addr p0, v2

    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v0, p2

    :cond_2
    return v0
.end method

.method public final policyOrDefault(Landroid/os/PowerManager$LowPowerStandbyPolicy;)Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final registerListeners()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUserReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v0, Lcom/android/server/PowerAllowlistInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerAllowlistInternal;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    invoke-interface {v0, v1}, Lcom/android/server/PowerAllowlistInternal;->registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->register()V

    return-void
.end method

.method public releaseStandbyPorts(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->findIndexOfStandbyPorts(Landroid/os/IBinder;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    invoke-virtual {p1}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->unlinkToDeath()V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->isPackageExempt(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyStandbyPortsChangedLocked()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeAllowedReasonLocked(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    not-int p2, p2

    and-int/2addr p2, v0

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    if-eq v0, p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final removeFromAllowlistInternal(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;->hasAllowedReasonLocked(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;->removeAllowedReasonLocked(II)Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final savePolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .locals 7

    const-string v0, "low-power-standby-policy"

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicyFile()Landroid/util/AtomicFile;

    move-result-object p0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "identifier"

    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/power/LowPowerStandbyController;->writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "exempt-package"

    invoke-static {v3, v6, v5}, Lcom/android/server/power/LowPowerStandbyController;->writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "allowed-reasons"

    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/server/power/LowPowerStandbyController;->writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedFeatures()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "allowed-features"

    invoke-static {v3, v5, v4}, Lcom/android/server/power/LowPowerStandbyController;->writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write policy to file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LowPowerStandbyController"

    invoke-static {v2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_3
    return-void
.end method

.method public final scheduleStandbyTimeoutAlarmLocked()V
    .locals 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    int-to-long v2, v2

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    const-string v8, "LowPowerStandbyController.StandbyTimeout"

    iget-object v9, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setActiveDuringMaintenance(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_0

    const-string p0, "LowPowerStandbyController"

    const-string p1, "Low Power Standby settings cannot be changed because it is not supported on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_standby_active_during_maintenance"

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onSettingsChanged()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_0

    const-string p0, "LowPowerStandbyController"

    const-string p1, "Low Power Standby cannot be enabled because it is not supported on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_standby_enabled"

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onSettingsChanged()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setPolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_0

    const-string p0, "LowPowerStandbyController"

    const-string p1, "Low Power Standby policy cannot be changed because it is not supported on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    if-nez v1, :cond_1

    const-string p0, "LowPowerStandbyController"

    const-string p1, "Custom policies are not enabled."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/LowPowerStandbyController;->policyChangeAffectsAllowlistLocked(Landroid/os/PowerManager$LowPowerStandbyPolicy;Landroid/os/PowerManager$LowPowerStandbyPolicy;)Z

    move-result v1

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->enqueueSavePolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyPolicyChangedLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public systemReady()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const v2, 0x11101b1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AlarmManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const v2, 0x10e00c0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    const v2, 0x11101b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "low_power_standby_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "low_power_standby_active_during_maintenance"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;->registerPropertyUpdateListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-virtual {v0}, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;->enableCustomPolicy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-virtual {v0}, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;->enableStandbyPorts()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->loadPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->initSettingsLocked()V

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateSettingsLocked()V

    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->registerListeners()V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/android/server/power/LowPowerStandbyControllerInternal;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLocalService:Lcom/android/server/power/LowPowerStandbyControllerInternal;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final uidsForAppId(ILjava/util/List;)[I
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v1, p0}, Landroid/os/UserHandle;->getUid(I)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final unregisterListeners()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-class v0, Lcom/android/server/PowerAllowlistInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerAllowlistInternal;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    invoke-interface {v0, p0}, Lcom/android/server/PowerAllowlistInternal;->unregisterTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    return-void
.end method

.method public final updateActiveLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mForceActive:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mActiveDuringMaintenance:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    if-eq v0, v1, :cond_4

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyActiveChangedLocked()V

    :cond_4
    return-void
.end method

.method public final updateSettingsLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    const-string v4, "low_power_standby_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    const-string v1, "low_power_standby_active_during_maintenance"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mActiveDuringMaintenance:Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    return-void
.end method

.method public validatePorts(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->getPortNumber()I

    move-result p1

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "port out of range:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method
