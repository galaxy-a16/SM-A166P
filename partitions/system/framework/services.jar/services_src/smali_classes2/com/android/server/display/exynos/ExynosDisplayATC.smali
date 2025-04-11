.class public Lcom/android/server/display/exynos/ExynosDisplayATC;
.super Ljava/lang/Object;
.source "ExynosDisplayATC.java"


# static fields
.field public static final LUX_EVENT_HORIZON:J

.field public static TUNE_MODE:Z = false


# instance fields
.field public final APS_INIT:Ljava/lang/String;

.field public ATC_BL_FILE_PATH:Ljava/lang/String;

.field public ATC_CAL_FILE_PATH:Ljava/lang/String;

.field public ATC_DIMOFF_SYSFS_PATH:Ljava/lang/String;

.field public ATC_DIM_STATUS_SYSFS_PATH:Ljava/lang/String;

.field public ATC_LUX_SYSFS_PATH:Ljava/lang/String;

.field public ATC_ONOFF_SYSFS_PATH:Ljava/lang/String;

.field public ATC_SFR_SYSFS_PATH:Ljava/lang/String;

.field public ATC_XML_FILE_PATH:Ljava/lang/String;

.field public BYPASS_CAL_FILE_PATH:Ljava/lang/String;

.field public final DEBUG:Z

.field public HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

.field public HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

.field public HSC_SYSFS_PATH:Ljava/lang/String;

.field public mAmbientLight:[I

.field public mApsDelayedOffRequired:Z

.field public mApsDelayedOffTable:[I

.field public mApsInit:Ljava/lang/String;

.field public mApsTable:[Ljava/lang/String;

.field public mBrightnessInit:[I

.field public mBrightnessLux:[I

.field public mBrightnessSetting:[I

.field public final mContext:Landroid/content/Context;

.field public mCountDownTimerCount:I

.field public mCountdownTimer:Landroid/os/CountDownTimer;

.field public final mDataCollectionLock:Ljava/lang/Object;

.field public mDimOperating:I

.field public mEventCount:I

.field public mHandler:Landroid/os/Handler;

.field public mHsvLcgTable:[[Ljava/lang/String;

.field public mHsvTable:[Ljava/lang/String;

.field public mIntervalMs:I

.field public mItem:[Ljava/lang/String;

.field public mLastAps:Ljava/lang/String;

.field public mLastApsDelayedOff:I

.field public mLastHsv:Ljava/lang/String;

.field public mLastHsvLcg:[Ljava/lang/String;

.field public mLastLuminance:I

.field public mLastSensorReadings:Ljava/util/Deque;

.field public mLightSensor:Landroid/hardware/Sensor;

.field public mLightSensorEnabled:Z

.field public final mLocalHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mLux:Ljava/lang/String;

.field public mPreOnOff:Z

.field public mPrevAps:Ljava/lang/String;

.field public mPrevHsv:Ljava/lang/String;

.field public mPrevHsvLcg:[Ljava/lang/String;

.field public mPrevLuminance:I

.field public mPrevPos:I

.field public mQalcoeff:Ljava/lang/String;

.field public mQcoeff:Ljava/lang/String;

.field public mQdelay:Ljava/lang/String;

.field public mQsize:Ljava/lang/String;

.field public mQueAlCoeffTable:[Ljava/lang/String;

.field public mQueCoeffTable:[Ljava/lang/String;

.field public mQueDelayTable:[Ljava/lang/String;

.field public mQueSizeTable:[Ljava/lang/String;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mTimeoutMs:I

.field public sensorListener:Landroid/hardware/SensorEventListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetDEBUG(Lcom/android/server/display/exynos/ExynosDisplayATC;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->DEBUG:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApsDelayedOffRequired(Lcom/android/server/display/exynos/ExynosDisplayATC;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffRequired:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayATC;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDimOperating(Lcom/android/server/display/exynos/ExynosDisplayATC;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDimOperating:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEventCount(Lcom/android/server/display/exynos/ExynosDisplayATC;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mEventCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/exynos/ExynosDisplayATC;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIntervalMs(Lcom/android/server/display/exynos/ExynosDisplayATC;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeoutMs(Lcom/android/server/display/exynos/ExynosDisplayATC;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmApsDelayedOffRequired(Lcom/android/server/display/exynos/ExynosDisplayATC;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffRequired:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayATC;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEventCount(Lcom/android/server/display/exynos/ExynosDisplayATC;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mEventCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcaculateLuminance(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->caculateLuminance()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckDimOperating(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->checkDimOperating()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetQueDelay(Lcom/android/server/display/exynos/ExynosDisplayATC;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->getQueDelay()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$minitCountDownTimer(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->initCountDownTimer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloadLuminanceATCTable(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->loadLuminanceATCTable()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprintSensorDeque(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->printSensorDeque()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrecordSensorEvent(Lcom/android/server/display/exynos/ExynosDisplayATC;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->recordSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendMessage(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sendMessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBrightnessAdjustment(Lcom/android/server/display/exynos/ExynosDisplayATC;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setBrightnessAdjustment(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 137
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->LUX_EVENT_HORIZON:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->DEBUG:Z

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensor:Landroid/hardware/Sensor;

    .line 72
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mSensorManager:Landroid/hardware/SensorManager;

    .line 73
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    const-string v1, "/sys/class/dqe/dqe/dim_status"

    .line 75
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_DIM_STATUS_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/aps"

    .line 76
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_SFR_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/aps_lux"

    .line 77
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_LUX_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/aps_onoff"

    .line 78
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_ONOFF_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/hsc48_idx"

    .line 79
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/hsc48_lcg"

    .line 80
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/hsc"

    .line 81
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->HSC_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/aps_dim_off"

    .line 82
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_DIMOFF_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "0,0,128,128,128,0,10,14,2,0,25,230,140,250,0,3,3,2,3,128,1"

    .line 87
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->APS_INIT:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    const-string v1, "3000,4000,5000,6000,8000,10000,15000,20000,25000,30000,40000,50000"

    .line 90
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLux:Ljava/lang/String;

    const-string v1, "8"

    .line 91
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    const-string v1, "10,5,4,3,2,1,1,1"

    .line 92
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQcoeff:Ljava/lang/String;

    const-string v1, "4"

    .line 93
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQalcoeff:Ljava/lang/String;

    const-string v1, "0"

    .line 94
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQdelay:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    const-string v1, "/data/dqe/calib_data_atc.xml"

    .line 98
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_CAL_FILE_PATH:Ljava/lang/String;

    const-string v1, "/data/dqe/calib_data_atc_bl.xml"

    .line 99
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    const-string v1, "/vendor/etc/dqe/calib_data_atc.xml"

    .line 100
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_XML_FILE_PATH:Ljava/lang/String;

    const-string v1, "/vendor/etc/dqe/calib_data_bypass.xml"

    .line 101
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->BYPASS_CAL_FILE_PATH:Ljava/lang/String;

    .line 104
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDataCollectionLock:Ljava/lang/Object;

    .line 105
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    const/16 v1, 0xd

    new-array v1, v1, [I

    .line 107
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 110
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    .line 117
    filled-new-array {v2}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    .line 119
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    .line 120
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevLuminance:I

    .line 121
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevAps:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsv:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    .line 127
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPreOnOff:Z

    .line 128
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    .line 129
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffRequired:Z

    .line 131
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mEventCount:I

    const/4 v1, -0x1

    .line 132
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 134
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDimOperating:I

    .line 139
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/16 v0, 0x5dc

    .line 140
    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    const/16 v0, 0x1f4

    .line 141
    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    .line 142
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    .line 144
    filled-new-array {v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessInit:[I

    .line 145
    filled-new-array {v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 146
    filled-new-array {v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLock:Ljava/lang/Object;

    .line 375
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC$1;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Landroid/os/Handler;

    .line 468
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC$3;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->sensorListener:Landroid/hardware/SensorEventListener;

    .line 151
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mContext:Landroid/content/Context;

    .line 152
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    .line 153
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensor:Landroid/hardware/Sensor;

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLocalHandler:Landroid/os/Handler;

    .line 157
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->getApsInit()V

    .line 158
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->initCountDownTimer()V

    return-void

    :array_0
    .array-data 4
        0x0
        0xbb8
        0xfa0
        0x1388
        0x1770
        0x1f40
        0x2710
        0x3a98
        0x4e20
        0x61a8
        0x7530
        0x9c40
        0xc350
    .end array-data
.end method

.method public static isDefaultSensorOff(Landroid/content/Context;)Z
    .locals 2

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0060

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final caculateLuminance()V
    .locals 12

    const-string v0, "\\s*,\\s*"

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    .line 314
    new-array v2, v1, [F

    .line 316
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    add-int/lit8 v7, v5, 0x1

    .line 317
    iget v6, v6, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    aput v6, v2, v5

    move v5, v7

    goto :goto_0

    .line 319
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 320
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 323
    new-array v5, v3, [I

    .line 325
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQcoeff:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_1

    .line 328
    aput v4, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v4

    .line 330
    :goto_2
    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_2

    .line 331
    aget-object v7, v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 334
    :cond_2
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQalcoeff:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 335
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 337
    sget-boolean v6, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "qcoef: "

    move v7, v4

    :goto_3
    if-ge v7, v3, :cond_3

    .line 340
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v5, v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const-string v7, "ExynosDisplayATC"

    .line 341
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " qalcoeff: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v6, v1, -0x1

    move v7, v4

    move v8, v6

    move v6, v7

    :goto_4
    if-ltz v8, :cond_6

    if-ge v1, v3, :cond_5

    .line 348
    aget v9, v2, v8

    float-to-int v9, v9

    aget v10, v5, v7

    mul-int/2addr v9, v10

    add-int/2addr v4, v9

    add-int/2addr v6, v10

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 353
    :cond_5
    aget v9, v2, v8

    float-to-int v9, v9

    aget v10, v5, v7

    mul-int/2addr v9, v10

    iget v11, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    mul-int/2addr v11, v0

    add-int/2addr v9, v11

    add-int/2addr v4, v9

    add-int/2addr v6, v10

    add-int/2addr v6, v0

    goto :goto_5

    :goto_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 359
    :cond_6
    div-int/2addr v4, v6

    iput v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 362
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-void
.end method

.method public final checkDimOperating()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_DIM_STATUS_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDimOperating:I

    return-void

    .line 181
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDimOperating:I

    return-void
.end method

.method public final elapsedRealtimeNanos()J
    .locals 2

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public enableATC(Z)V
    .locals 1

    .line 818
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->resetATC()V

    if-eqz p1, :cond_2

    .line 823
    sget-boolean p1, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-nez p1, :cond_0

    .line 824
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 826
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_CAL_FILE_PATH:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "tune"

    .line 829
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->parserATCXML(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_1
    sget-boolean p1, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 834
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->parserTuneATCBLXML()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 837
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sysfsWriteOnOff(Z)V

    .line 840
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    .line 841
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method public enableATCTuneMode(Z)V
    .locals 1

    .line 792
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eq p1, p0, :cond_0

    .line 793
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableATCTuneMode: TUNE_MODE="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExynosDisplayATC"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_0
    sput-boolean p1, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    return-void
.end method

.method public enableLightSensor(Z)V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->isDefaultSensorOff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 848
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLightSensor: enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExynosDisplayATC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 850
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 851
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 867
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 868
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 871
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    return-void
.end method

.method public final findBestATCTable()I
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    .line 199
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 200
    iget v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    aget v2, v2, v1

    if-ge v3, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr v1, v0

    .line 205
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    return v1

    :cond_2
    move v2, v1

    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    .line 209
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    add-int/2addr v1, v0

    .line 210
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    aget-object v4, v3, v1

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "ExynosDisplayATC"

    if-ltz v2, :cond_a

    .line 212
    array-length v4, v3

    if-lt v1, v4, :cond_5

    goto :goto_5

    .line 217
    :cond_5
    iget v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    if-eq v4, v2, :cond_7

    if-ne v4, v1, :cond_6

    goto :goto_4

    :cond_6
    move v4, v2

    .line 222
    :cond_7
    :goto_4
    aget-object v3, v3, v4

    if-nez v3, :cond_8

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to find proper ATC table, return prev pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    return p0

    .line 227
    :cond_8
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz p0, :cond_9

    .line 228
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjusted pos: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at ("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "~"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v4

    .line 213
    :cond_a
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid ATC table, return prev pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    return p0
.end method

.method public final getApsInit()V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->BYPASS_CAL_FILE_PATH:Ljava/lang/String;

    const-string v1, "aps"

    const-string v2, "atc"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLALText(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    return-void

    :cond_1
    :goto_0
    const-string v0, "ExynosDisplayATC"

    const-string/jumbo v1, "xml aps not found"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0,0,128,128,128,0,10,14,2,0,25,230,140,250,0,3,3,2,3,128,1"

    .line 189
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    return-void
.end method

.method public final getQueDelay()I
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQdelay:Ljava/lang/String;

    const-string v1, "\\s*,\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    const/4 p0, 0x0

    .line 369
    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 370
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "qdelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExynosDisplayATC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method

.method public final initCountDownTimer()V
    .locals 7

    .line 407
    new-instance v6, Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    int-to-long v2, v0

    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    int-to-long v4, v0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/exynos/ExynosDisplayATC$2;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;JJ)V

    iput-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final loadLuminanceATCTable()V
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    if-nez v0, :cond_2

    return-void

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    if-nez v0, :cond_3

    return-void

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    if-nez v0, :cond_4

    return-void

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    if-nez v0, :cond_6

    return-void

    .line 248
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->findBestATCTable()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 251
    monitor-exit v0

    return-void

    .line 253
    :cond_7
    sget-boolean v2, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    if-eq v2, v1, :cond_9

    :cond_8
    const-string v2, "ExynosDisplayATC"

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLastLuminance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mAmbientLight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_9
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    .line 257
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    .line 258
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    .line 259
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQcoeff:Ljava/lang/String;

    .line 260
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQalcoeff:Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQdelay:Ljava/lang/String;

    .line 262
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_a

    .line 264
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_a
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 266
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public parserATCXML(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    :try_start_0
    const-string v0, "atc"

    const-string v1, "al"

    .line 661
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 665
    :cond_0
    array-length v1, v0

    if-gtz v1, :cond_1

    const-string p0, "ExynosDisplayATC"

    .line 666
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "xml array size wrong: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "ExynosDisplayATC"

    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "array_length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    array-length v2, v0

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    const/4 v2, 0x0

    move v3, v2

    .line 675
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 676
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget-object v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v3

    const-string v4, "ExynosDisplayATC"

    .line 677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "al: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    array-length v3, v0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 681
    array-length v3, v0

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    .line 682
    array-length v3, v0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    .line 683
    array-length v3, v0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    .line 684
    array-length v3, v0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    .line 685
    array-length v3, v0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    .line 687
    array-length v3, v0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 688
    array-length v0, v0

    const/4 v3, 0x3

    filled-new-array {v0, v3}, [I

    move-result-object v0

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    move v0, v2

    .line 690
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    array-length v5, v4

    if-ge v0, v5, :cond_c

    const-string v8, "atc"

    .line 692
    aget v9, v4, v0

    const-string v10, "aps"

    const/4 v11, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v6 .. v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 694
    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v5, v0

    :cond_3
    const-string v6, "atc"

    .line 696
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v7, v4, v0

    const-string v8, "apsdoff"

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 698
    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v5, v0

    goto :goto_2

    .line 700
    :cond_4
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    aput v2, v4, v0

    :goto_2
    const-string v7, "atc"

    .line 702
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v8, v4, v0

    const-string/jumbo v9, "qsize"

    const/4 v10, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v5 .. v10}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 704
    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v5, v0

    :cond_5
    const-string v6, "atc"

    .line 706
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v7, v4, v0

    const-string/jumbo v8, "qcoeff"

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 708
    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v5, v0

    :cond_6
    const-string v6, "atc"

    .line 710
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v7, v4, v0

    const-string/jumbo v8, "qdelay"

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 712
    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v5, v0

    :cond_7
    const-string v6, "atc"

    .line 714
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v7, v4, v0

    const-string/jumbo v8, "qalcoeff"

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 716
    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v5, v0

    :cond_8
    move v10, v2

    :goto_3
    const/4 v11, 0x0

    if-ge v10, v3, :cond_a

    const-string v6, "atc"

    .line 719
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v7, v4, v0

    const-string v8, "hsc48_lcg"

    move-object v4, p1

    move-object v5, p2

    move v9, v10

    invoke-static/range {v4 .. v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 721
    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v4, v4, v2

    aput-object v4, v5, v10

    goto :goto_4

    .line 723
    :cond_9
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v11, v4, v10

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_a
    const-string v6, "atc"

    .line 726
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v7, v4, v0

    const-string v8, "hsc"

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 728
    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v5, v0

    goto :goto_5

    .line 730
    :cond_b
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    aput-object v11, v4, v0

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 733
    :cond_c
    :goto_6
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    array-length p1, p1

    if-ge v2, p1, :cond_d

    const-string p1, "ExynosDisplayATC"

    .line 734
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<aps>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ExynosDisplayATC"

    .line 735
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<apsdoff>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ExynosDisplayATC"

    .line 736
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<qsize>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ExynosDisplayATC"

    .line 737
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<qcoeff>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ExynosDisplayATC"

    .line 738
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<qdelay>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ExynosDisplayATC"

    .line 739
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<qalcoeff>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ExynosDisplayATC"

    .line 740
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<hsc>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 742
    :cond_d
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->loadLuminanceATCTable()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catchall_0
    move-exception p0

    .line 742
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 748
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-void
.end method

.method public final parserTuneATCBLXML()V
    .locals 7

    const-string v0, "atc"

    .line 757
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    const-string v2, "al"

    invoke-static {v1, v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 761
    :cond_0
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "ExynosDisplayATC"

    if-gtz v2, :cond_1

    .line 762
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "xml array size wrong: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 766
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "array_length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 769
    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    const/4 v2, 0x0

    move v4, v2

    .line 771
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 772
    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    aget-object v6, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4

    .line 773
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "al: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 776
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 777
    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    aget v4, v4, v1

    const-string v6, "bl"

    invoke-static {v5, v0, v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLALText(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 778
    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 781
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    array-length v0, v0

    if-ge v2, v0, :cond_4

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<bl>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 787
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public final printSensorDeque()V
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 513
    :cond_0
    new-array v1, v0, [F

    .line 514
    new-array v0, v0, [J

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 520
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->elapsedRealtimeNanos()J

    .line 524
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 527
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_2
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz p0, :cond_3

    .line 536
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "que: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExynosDisplayATC"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final putScreenBrightnessSetting(I)V
    .locals 2

    .line 652
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_brightness"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final recordSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 275
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->elapsedRealtimeNanos()J

    .line 276
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 282
    invoke-interface {v1}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    iget-wide v5, v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->timestamp:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    const-string p0, "ExynosDisplayATC"

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore event "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    monitor-exit v0

    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    const-string v3, "\\s*,\\s*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 290
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 292
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 293
    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    if-lt v3, v1, :cond_1

    .line 295
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    goto :goto_0

    .line 298
    :cond_1
    new-instance v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC$LightData-IA;)V

    .line 299
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v3, v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->timestamp:J

    .line 300
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    iput p1, v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    .line 301
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {p0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 302
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetATC()V
    .locals 5

    .line 799
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    const/4 v0, 0x0

    .line 800
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevAps:Ljava/lang/String;

    .line 801
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessInit:[I

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 803
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    .line 804
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsv:Ljava/lang/String;

    .line 805
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    const/4 v2, 0x3

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    .line 806
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 808
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 809
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    if-nez v3, :cond_2

    new-array v3, v2, [Ljava/lang/String;

    .line 810
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    :cond_2
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    .line 812
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    .line 813
    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 814
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    return-void
.end method

.method public final sendMessage()V
    .locals 4

    .line 875
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 877
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 878
    iget v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 879
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 880
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 882
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 883
    iget v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 884
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 886
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 888
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 889
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 890
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 891
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 892
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 898
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 899
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 900
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public final setBrightnessAdjustment(I)V
    .locals 4

    .line 449
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    array-length v3, v1

    if-gt v3, v2, :cond_0

    goto :goto_2

    .line 451
    :cond_0
    array-length v0, v0

    array-length v1, v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    move v0, v2

    .line 455
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 457
    aget v1, v1, v0

    if-ge p1, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sub-int/2addr v0, v2

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lux: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mBrightnessLux: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    aget p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mBrightnessSetting: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    aget p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ExynosDisplayATC"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->putScreenBrightnessSetting(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setCountDownTimer(II)V
    .locals 2

    const/16 v0, 0x11

    if-lt p1, v0, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p2, p1

    .line 948
    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    .line 949
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    .line 951
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "mTimeoutMs: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mIntervalMs: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExynosDisplayATC"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 954
    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    .line 955
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 958
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLocalHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/display/exynos/ExynosDisplayATC$4;

    invoke-direct {p2, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC$4;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setLastLuminance(I)V
    .locals 5

    .line 906
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    .line 908
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    .line 910
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->loadLuminanceATCTable()V

    .line 914
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    const-string v1, "\\s*,\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 915
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 917
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 918
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 920
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    goto :goto_0

    .line 923
    :cond_0
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC$LightData-IA;)V

    .line 924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->timestamp:J

    int-to-float v1, p1

    .line 925
    iput v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    .line 926
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 928
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->printSensorDeque()V

    .line 930
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->caculateLuminance()V

    const/4 v0, 0x1

    .line 932
    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    .line 934
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sendMessage()V

    .line 936
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    array-length v1, v1

    if-le v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    array-length v1, v1

    if-gt v1, v0, :cond_2

    .line 937
    :cond_1
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 938
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->parserTuneATCBLXML()V

    .line 941
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setBrightnessAdjustment(I)V

    return-void
.end method

.method public startCountDownTimer()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 442
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    .line 443
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 444
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public sysfsWriteAps(Ljava/lang/String;I)V
    .locals 3

    .line 556
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevAps:Ljava/lang/String;

    const-string v1, "ExynosDisplayATC"

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "aps skip : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 564
    :cond_2
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v0, :cond_3

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aps: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x1

    .line 567
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sysfsWriteOnOff(Z)V

    .line 569
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_SFR_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 570
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevAps:Ljava/lang/String;

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 571
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffRequired:Z

    .line 572
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->startCountDownTimer()V

    return-void
.end method

.method public sysfsWriteHsv(Ljava/lang/String;)V
    .locals 3

    .line 576
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsv:Ljava/lang/String;

    const-string v1, "ExynosDisplayATC"

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz p0, :cond_1

    const-string p0, "hsv skip as same"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 584
    :cond_2
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v0, :cond_3

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hsv: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->HSC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 588
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsv:Ljava/lang/String;

    .line 589
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->startCountDownTimer()V

    return-void
.end method

.method public sysfsWriteHsvLcg(Ljava/lang/String;I)V
    .locals 3

    .line 593
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const-string v1, "ExynosDisplayATC"

    if-lt p2, v0, :cond_2

    .line 597
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz p0, :cond_1

    const-string p0, "hsvlcg skip as invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    if-eqz v0, :cond_4

    aget-object v0, v0, p2

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 601
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz p0, :cond_3

    const-string p0, "hsvlcg skip as same"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 605
    :cond_4
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v0, :cond_5

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hsv lcg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 609
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 610
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 611
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->startCountDownTimer()V

    return-void
.end method

.method public sysfsWriteLux(I)V
    .locals 2

    .line 540
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 543
    :cond_0
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-nez v0, :cond_1

    return-void

    .line 546
    :cond_1
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevLuminance:I

    if-ne v0, p1, :cond_2

    return-void

    .line 549
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExynosDisplayATC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_LUX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWrite(Ljava/lang/String;I)Z

    .line 552
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevLuminance:I

    return-void
.end method

.method public sysfsWriteOnOff(Z)V
    .locals 3

    .line 616
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPreOnOff:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 619
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ExynosDisplayATC"

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onoff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " aps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_ONOFF_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "0"

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 624
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_ONOFF_SYSFS_PATH:Ljava/lang/String;

    if-nez p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 627
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_SFR_SYSFS_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 628
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sendEmptyUpdate()V

    const-wide/16 v0, 0x64

    .line 629
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 632
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->startCountDownTimer()V

    .line 634
    iput-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPreOnOff:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 637
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
