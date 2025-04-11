.class public Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
.super Ljava/lang/Object;
.source "EyeComfortSolutionService.java"


# static fields
.field public static final ECSS_KEYS:[Ljava/lang/String;


# instance fields
.field public ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

.field public ACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS:I

.field public ANTI_GLARE_MODE_NODE:Ljava/lang/String;

.field public ANTI_GLARE_MODE_SUB_NODE:Ljava/lang/String;

.field public final BED_TRANSITION_TIME:I

.field public BOPR_MAX_VALUE:I

.field public BOPR_VALUE_STEP:I

.field public final DEBUG:Z

.field public final DEFAULT_BED_TIME:I

.field public final DEFAULT_WAKEUP_TIME:I

.field public GET_SYSTEM_SERVICES_MILLIS:I

.field public final HIGH_DAY_BLF:I

.field public final MAX_BOPR_STEP:I

.field public final MAX_TOTAL_STEP:I

.field public final MORNING_BLF_INTERVAL_A:I

.field public final MORNING_BLF_INTERVAL_B:I

.field public final MSG_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_OFF:I

.field public final MSG_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_ON:I

.field public final MSG_GET_BOPR_SENSOR_VALUE_OFF:I

.field public final MSG_GET_BOPR_SENSOR_VALUE_ON:I

.field public final MSG_GET_SYSTEM_SERVICES:I

.field public final MSG_NIGHT_MODE_CUSTOM_TIME_CHANGED:I

.field public final MSG_SET_BLUE_LIGHT_FILTER_DAY:I

.field public final NIGHT_BLF_INTERVAL:I

.field public NIGHT_DIM_MODE_NODE:Ljava/lang/String;

.field public NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

.field public final RANGE_BOPR_BLF:I

.field public final RANGE_DAY_BLF:I

.field public final RANGE_DAY_ONLY_BLF:I

.field public final WAKEUP_TRANSITION_TIME_A:I

.field public final WAKEUP_TRANSITION_TIME_B:I

.field public app_weighting_factor:F

.field public bopr_average_value_for_bigdata_blf_off:I

.field public bopr_average_value_for_bigdata_blf_on:I

.field public bopr_cumulative_count:I

.field public bopr_cumulative_count_for_bigdata_blf_off:I

.field public bopr_cumulative_count_for_bigdata_blf_on:I

.field public bopr_cumulative_value_for_bigdata_blf_off:I

.field public bopr_cumulative_value_for_bigdata_blf_on:I

.field public bopr_current_value:I

.field public cal_value_sum:F

.field public defaultBedTime:I

.field public defaultWakeupTime:I

.field public mAdaptiveBlueLightFilterSupported:Z

.field public mBedtime_friday:I

.field public mBedtime_monday:I

.field public mBedtime_saturday:I

.field public mBedtime_sunday:I

.field public mBedtime_thursday:I

.field public mBedtime_tuesday:I

.field public mBedtime_wednesday:I

.field public mBlfIndexEadOffset:I

.field public mBlueLightFilterAdaptiveModeEnabled:Z

.field public mBlueLightFilterAntiGlareEnabled:Z

.field public mBlueLightFilterCustomAlwaysOn:Z

.field public mBlueLightFilterEnableTime:Z

.field public mBlueLightFilterModeEnabled:Z

.field public mBlueLightFilterScheduledTime:Z

.field public mBoprSensor:Landroid/hardware/Sensor;

.field public mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

.field public mBoprSensorListener:Landroid/hardware/SensorEventListener;

.field public mColorOnPixelRatioSupported:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentStateSleep:Z

.field public mCurrentStateWakeup:Z

.field public mDefaultThemeEnabled:Z

.field public mEnvironmentAdaptiveDisplaySupported:Z

.field public mGlareReductionSupported:Z

.field public mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mLastBoprBlueLightFilterIndex:I

.field public mLastDayBlueLightFilterIndex:I

.field public mLastTotalBlueLightFilterIndex:I

.field public mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field public mNightDimFontConfigValue:I

.field public mNightDimFontConfigValuePrev:I

.field public mNightDimModeEnabled:Z

.field public mPlatformBrightnessValue:F

.field public mScreenOn:Z

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

.field public mUseEyeComfortSolutionServiceConfig:Z

.field public mWakeupTime_friday:I

.field public mWakeupTime_monday:I

.field public mWakeupTime_saturday:I

.field public mWakeupTime_sunday:I

.field public mWakeupTime_thursday:I

.field public mWakeupTime_tuesday:I

.field public mWakeupTime_wednesday:I

.field public mWorkingCondition:Z

.field public prevTotalStep:I


# direct methods
.method public static synthetic $r8$lambda$2e4DE2woWvBbygg4aOnAB5eYViM(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/app/IActivityManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->lambda$updateNightDimSettings$0(Landroid/app/IActivityManager;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetBOPR_VALUE_STEP(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetbopr_cumulative_count(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetbopr_cumulative_count_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetbopr_cumulative_count_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetbopr_cumulative_value_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetbopr_cumulative_value_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetbopr_current_value(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_current_value:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlueLightFilterAdaptiveModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlueLightFilterEnableTime(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlueLightFilterModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBoprSensorForBigDataListener(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorEventListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBoprSensorListener(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorEventListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSemHqmManager(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/os/SemHqmManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputbopr_average_value_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbopr_average_value_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbopr_cumulative_count(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbopr_cumulative_count_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbopr_cumulative_count_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbopr_cumulative_value_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbopr_cumulative_value_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbopr_current_value(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_current_value:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSemHqmManager(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/SemHqmManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mblue_light_filter_setting_bopr(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_bopr(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mblue_light_filter_setting_day(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbopr_for_bigdata_data_reset(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_for_bigdata_data_reset()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBoprSensorValue(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getBoprSensorValue(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBoprSensorValueForBigData(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getBoprSensorValueForBigData(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSystemServices(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getSystemServices()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendBigDatatoHQM(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sendBigDatatoHQM()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setting_is_changed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAntiGlareSettings(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateAntiGlareSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNightDimSettings(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateNightDimSettings(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "BOPR_AVG_VALUE_BLF_ON"

    const-string v1, "BOPR_AVG_VALUE_BLF_OFF"

    .line 181
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ECSS_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 15

    move-object v0, p0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "/sys/class/lcd/panel/night_dim"

    .line 92
    iput-object v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_NODE:Ljava/lang/String;

    const-string v1, "/sys/class/lcd/panel1/night_dim"

    .line 93
    iput-object v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie/anti_glare"

    .line 94
    iput-object v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_NODE:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie1/anti_glare"

    .line 95
    iput-object v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_SUB_NODE:Ljava/lang/String;

    const-string v1, "eng"

    .line 97
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->DEBUG:Z

    const/4 v1, 0x2

    .line 99
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MORNING_BLF_INTERVAL_A:I

    const/4 v2, 0x5

    .line 100
    iput v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MORNING_BLF_INTERVAL_B:I

    const/16 v3, 0xa

    .line 101
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_BLF_INTERVAL:I

    const/16 v3, 0x1770

    .line 103
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->HIGH_DAY_BLF:I

    const/16 v3, 0x7d0

    .line 104
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->RANGE_DAY_ONLY_BLF:I

    const/16 v3, 0x320

    .line 105
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->RANGE_DAY_BLF:I

    const/16 v3, 0x4b0

    .line 106
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->RANGE_BOPR_BLF:I

    const/16 v3, 0x5a

    .line 107
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MAX_TOTAL_STEP:I

    const/16 v3, 0x36

    .line 108
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MAX_BOPR_STEP:I

    const/16 v3, 0x168

    .line 110
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BED_TRANSITION_TIME:I

    const/16 v4, 0xb4

    .line 111
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->WAKEUP_TRANSITION_TIME_A:I

    .line 112
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->WAKEUP_TRANSITION_TIME_B:I

    const/4 v4, 0x0

    .line 114
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->DEFAULT_BED_TIME:I

    .line 115
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->DEFAULT_WAKEUP_TIME:I

    const/4 v5, 0x1

    .line 117
    iput v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_SYSTEM_SERVICES:I

    .line 118
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_BOPR_SENSOR_VALUE_ON:I

    const/4 v1, 0x3

    .line 119
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_BOPR_SENSOR_VALUE_OFF:I

    const/4 v1, 0x4

    .line 120
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_ON:I

    .line 121
    iput v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_OFF:I

    const/4 v1, 0x6

    .line 122
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_SET_BLUE_LIGHT_FILTER_DAY:I

    const/4 v1, 0x7

    .line 123
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_NIGHT_MODE_CUSTOM_TIME_CHANGED:I

    const/16 v1, 0xfa0

    .line 125
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->GET_SYSTEM_SERVICES_MILLIS:I

    const/16 v1, 0x2710

    .line 126
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    .line 127
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS:I

    .line 128
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    .line 130
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_current_value:I

    .line 131
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    .line 133
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I

    .line 134
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    .line 135
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    .line 136
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I

    .line 137
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    .line 138
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 140
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    const/4 v1, 0x0

    .line 141
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    const/4 v1, -0x1

    .line 144
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 145
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 146
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 147
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 148
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 150
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 151
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    .line 153
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    .line 155
    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 156
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 158
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    .line 159
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    .line 160
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    .line 161
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    .line 162
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    .line 163
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    .line 164
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    .line 166
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    .line 167
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    .line 168
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    .line 169
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    .line 170
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    .line 171
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    .line 172
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    const/4 v2, 0x0

    .line 183
    iput-object v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    .line 189
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWorkingCondition:Z

    .line 190
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    .line 191
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 193
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 194
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 195
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAntiGlareEnabled:Z

    .line 196
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    .line 197
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    .line 198
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    .line 199
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 200
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 201
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    .line 202
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    .line 203
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    .line 204
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    .line 205
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mEnvironmentAdaptiveDisplaySupported:Z

    .line 206
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mGlareReductionSupported:Z

    .line 839
    new-instance v3, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    iput-object v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Landroid/hardware/SensorEventListener;

    .line 859
    new-instance v3, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    iput-object v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v3, p1

    .line 209
    iput-object v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    .line 211
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "EyeComfortSolutionServiceThread"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 212
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 213
    new-instance v6, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget-object v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/Looper;)V

    iput-object v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110174

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    .line 219
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mEnvironmentAdaptiveDisplaySupported:Z

    .line 220
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mGlareReductionSupported:Z

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mEnvironmentAdaptiveDisplaySupported "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mEnvironmentAdaptiveDisplaySupported:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mGlareReductionSupported : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mGlareReductionSupported:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "EyeComfortSolutionService"

    invoke-static {v12, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v6, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    iget-object v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/Handler;)V

    iput-object v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const-string v7, "blue_light_filter"

    .line 228
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v6, v7, v4, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v7, "blue_light_filter_night_dim"

    .line 229
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v6, v7, v4, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v7, "blue_light_filter_adaptive_mode"

    .line 230
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v6, v7, v4, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v7, "blue_light_filter_anti_glare"

    .line 231
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v6, v7, v4, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v7, "current_sec_active_themepackage"

    .line 232
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v6, v7, v4, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v7, "blue_light_filter_type"

    .line 233
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v6, v7, v4, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 235
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 236
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 237
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 238
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 239
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 240
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 241
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 242
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 243
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 244
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    new-instance v7, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;

    invoke-direct {v7, p0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver-IA;)V

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 248
    iget-object v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    iget-object v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v2, v2

    add-long/2addr v13, v2

    invoke-virtual {v1, v5, v13, v14}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 251
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 252
    iput-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    .line 254
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 255
    iput-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    .line 257
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A_BLF : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , COPR_IP : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "false"

    const-string/jumbo v2, "sys.eyecomfortsolution.ecson"

    .line 258
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "true"

    .line 261
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "EyeComfortSolutionService Enabled"

    .line 264
    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$updateNightDimSettings$0(Landroid/app/IActivityManager;)V
    .locals 1

    .line 685
    :try_start_0
    invoke-interface {p1}, Landroid/app/IActivityManager;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 686
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    iput p0, v0, Landroid/content/res/Configuration;->nightDim:I

    .line 687
    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 689
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot update Configuration : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EyeComfortSolutionService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static sysfsWrite(Ljava/lang/String;I)Z
    .locals 3

    .line 1197
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 1201
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1206
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1207
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1203
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    .line 1209
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1211
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 1213
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return v1
.end method


# virtual methods
.method public final JsonParseData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    .line 952
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p3, :cond_0

    .line 954
    :try_start_1
    aget-object v1, p1, p0

    aget-object v2, p2, p0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 958
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 960
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\{"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\}"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final blue_light_filter_data_reset()V
    .locals 2

    const/4 v0, 0x0

    .line 610
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 611
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    const/4 v1, 0x0

    .line 612
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 613
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 614
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 615
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    return-void
.end method

.method public final blue_light_filter_setting_bopr(II)V
    .locals 5

    .line 340
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getting_platform_brightness_value()F

    move-result v0

    int-to-float p1, p1

    const/high16 v1, 0x43800000    # 256.0f

    div-float v1, p1, v1

    float-to-double v1, v1

    const-wide v3, 0x40019999a0000000L    # 2.200000047683716

    .line 343
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    mul-float/2addr v3, v0

    float-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    .line 344
    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , bopr_value : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", platform_value : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , app_weighting : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , cal_value : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , sum_value : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , BOPR_MAX_VALUE : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EyeComfortSolutionService"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    const/16 v0, 0x36

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 349
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    div-int/2addr v2, v0

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    add-int/lit8 v4, v3, 0x1

    mul-int/2addr v2, v4

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    if-ne v3, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 350
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change BLF step by B-opr, BLF dayIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] , boprIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    .line 353
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    .line 354
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final blue_light_filter_setting_day(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 361
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 362
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "EE"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 363
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 364
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 365
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 366
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 367
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    const-string v8, "EyeComfortSolutionService"

    const/4 v9, 0x0

    if-eqz p1, :cond_21

    .line 373
    iget v10, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iget v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    const/4 v12, 0x1

    if-lt v10, v11, :cond_1

    if-le v6, v11, :cond_0

    if-gt v6, v10, :cond_0

    .line 375
    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 376
    iput-boolean v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    goto :goto_0

    .line 378
    :cond_0
    iput-boolean v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 379
    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    goto :goto_0

    :cond_1
    if-le v6, v10, :cond_2

    if-gt v6, v11, :cond_2

    .line 383
    iput-boolean v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 384
    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    goto :goto_0

    .line 386
    :cond_2
    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 387
    iput-boolean v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    .line 391
    :goto_0
    iget-boolean v10, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    const-string v11, " , TimeValue : "

    const-string v13, " , Minute : "

    const-string v14, " , Hour : "

    const-string v15, "Week : "

    const/16 v9, 0x5a0

    if-eqz v10, :cond_c

    .line 392
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , wakeup state, defaultBedTime : "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , start sleep : "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    add-int/lit16 v7, v7, -0x168

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    add-int/lit16 v10, v7, -0x168

    if-gez v10, :cond_7

    add-int/lit16 v10, v7, 0x5a0

    add-int/lit16 v10, v10, -0x168

    if-lt v6, v10, :cond_4

    if-ge v6, v9, :cond_4

    .line 395
    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    add-int/2addr v7, v9

    add-int/lit16 v7, v7, -0x168

    if-ne v6, v7, :cond_3

    .line 396
    iget-boolean v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    if-eqz v7, :cond_3

    .line 397
    iget-object v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    iget-object v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    move-object/from16 v16, v11

    int-to-long v11, v12

    add-long/2addr v1, v11

    invoke-virtual {v7, v10, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1

    :cond_3
    move-object/from16 v16, v11

    .line 400
    :goto_1
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    add-int/2addr v1, v9

    add-int/lit16 v1, v1, -0x168

    sub-int v1, v6, v1

    div-int/lit8 v1, v1, 0xa

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v16, v11

    move v2, v12

    if-ltz v6, :cond_5

    if-ge v6, v7, :cond_5

    .line 402
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    sub-int/2addr v7, v6

    rsub-int v1, v7, 0x168

    .line 403
    div-int/lit8 v1, v1, 0xa

    :goto_3
    add-int/2addr v1, v2

    goto :goto_6

    :cond_5
    if-ne v6, v7, :cond_6

    const/4 v1, 0x0

    .line 405
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    const-string v2, "WakeupTime"

    .line 407
    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 409
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    goto :goto_5

    :cond_7
    move-object/from16 v16, v11

    add-int/lit16 v10, v7, -0x168

    if-ltz v10, :cond_b

    add-int/lit16 v10, v7, -0x168

    if-lt v6, v10, :cond_9

    if-ge v6, v7, :cond_9

    const/4 v10, 0x1

    .line 414
    iput-boolean v10, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    add-int/lit16 v7, v7, -0x168

    if-ne v6, v7, :cond_8

    .line 415
    iget-boolean v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    if-eqz v7, :cond_8

    .line 416
    iget-object v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    int-to-long v11, v11

    add-long/2addr v1, v11

    invoke-virtual {v7, v10, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 419
    :cond_8
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    add-int/lit16 v1, v1, -0x168

    sub-int v1, v6, v1

    div-int/lit8 v1, v1, 0xa

    goto :goto_2

    :cond_9
    if-ne v6, v7, :cond_a

    const/4 v1, 0x0

    .line 421
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    const-string v2, "NextWakeupTime"

    .line 423
    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    :goto_4
    const/16 v1, 0x24

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    .line 425
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    :cond_b
    :goto_5
    const/4 v1, 0x0

    .line 429
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentWakeupStep : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_c
    move-object/from16 v16, v11

    const/4 v1, 0x0

    .line 432
    :goto_7
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    if-eqz v2, :cond_1c

    .line 433
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    const-string v7, " , start wakeup : "

    const-string v10, " , sleep state, defaultWakeupTime : "

    const-string v11, "BedTime"

    if-eqz v2, :cond_14

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v16

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v3, v3, -0xb4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v3, v2, -0xb4

    if-gez v3, :cond_11

    add-int/lit16 v3, v2, 0x5a0

    add-int/lit16 v3, v3, -0xb4

    if-lt v6, v3, :cond_e

    if-ge v6, v9, :cond_e

    const/4 v3, 0x0

    .line 437
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    add-int/2addr v2, v9

    add-int/lit16 v2, v2, -0xb4

    sub-int/2addr v6, v2

    const/4 v4, 0x2

    .line 438
    div-int/2addr v6, v4

    :goto_8
    rsub-int/lit8 v2, v6, 0x59

    :cond_d
    :goto_9
    move v9, v2

    goto/16 :goto_e

    :cond_e
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ltz v6, :cond_f

    if-ge v6, v2, :cond_f

    .line 440
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    sub-int/2addr v2, v6

    rsub-int v2, v2, 0xb4

    .line 441
    div-int/2addr v2, v4

    rsub-int/lit8 v2, v2, 0x59

    goto :goto_9

    :cond_f
    if-ne v6, v2, :cond_10

    const-string/jumbo v2, "reset blue_light_filter_data_reset"

    .line 443
    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_data_reset()V

    const/4 v2, 0x0

    .line 445
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 447
    invoke-virtual {v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    .line 449
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 450
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/16 v3, 0x24

    if-ge v2, v3, :cond_d

    goto :goto_a

    :cond_11
    add-int/lit16 v3, v2, -0xb4

    if-ltz v3, :cond_1b

    add-int/lit16 v3, v2, -0xb4

    if-lt v6, v3, :cond_12

    if-ge v6, v2, :cond_12

    const/4 v3, 0x0

    .line 458
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    add-int/lit16 v2, v2, -0xb4

    sub-int/2addr v6, v2

    const/4 v2, 0x2

    .line 459
    div-int/2addr v6, v2

    goto :goto_8

    :cond_12
    if-ne v6, v2, :cond_13

    const-string/jumbo v2, "reset blue_light_filter_data_reset"

    .line 461
    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_data_reset()V

    const/4 v2, 0x0

    .line 463
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 465
    invoke-virtual {v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    goto :goto_9

    :cond_13
    const/4 v2, 0x0

    .line 467
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 468
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/16 v3, 0x24

    if-ge v2, v3, :cond_d

    :goto_a
    goto/16 :goto_d

    :cond_14
    move-object/from16 v12, v16

    if-nez v2, :cond_1b

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v3, v3, -0xb4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v3, v2, -0xb4

    if-gez v3, :cond_18

    add-int/lit16 v3, v2, 0x5a0

    add-int/lit16 v3, v3, -0xb4

    if-lt v6, v3, :cond_15

    if-ge v6, v9, :cond_15

    const/4 v3, 0x0

    .line 479
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    add-int/2addr v2, v9

    add-int/lit16 v2, v2, -0xb4

    sub-int/2addr v6, v2

    .line 480
    div-int/lit8 v6, v6, 0x5

    :goto_b
    rsub-int/lit8 v2, v6, 0x23

    goto/16 :goto_9

    :cond_15
    const/4 v3, 0x0

    if-ltz v6, :cond_16

    if-ge v6, v2, :cond_16

    .line 482
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    sub-int/2addr v2, v6

    rsub-int v2, v2, 0xb4

    .line 483
    div-int/lit8 v2, v2, 0x5

    rsub-int/lit8 v2, v2, 0x23

    goto/16 :goto_9

    :cond_16
    if-ne v6, v2, :cond_17

    .line 485
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 487
    invoke-virtual {v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    goto :goto_c

    .line 489
    :cond_17
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    goto :goto_d

    :cond_18
    const/4 v3, 0x0

    add-int/lit16 v4, v2, -0xb4

    if-ltz v4, :cond_1b

    add-int/lit16 v4, v2, -0xb4

    if-lt v6, v4, :cond_19

    if-ge v6, v2, :cond_19

    .line 494
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    add-int/lit16 v2, v2, -0xb4

    sub-int/2addr v6, v2

    .line 495
    div-int/lit8 v6, v6, 0x5

    goto :goto_b

    :cond_19
    if-ne v6, v2, :cond_1a

    .line 497
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 499
    invoke-virtual {v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    :goto_c
    move v9, v3

    goto :goto_e

    .line 501
    :cond_1a
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    :goto_d
    const/16 v9, 0x24

    goto :goto_e

    :cond_1b
    const/4 v9, 0x0

    .line 506
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSleepStep : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_1c
    const/4 v9, 0x0

    .line 509
    :goto_f
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    const-string v3, "Change BLF step by mCurrentStateWakeup, BLF dayIndex : ["

    const-string v4, "]"

    if-eqz v2, :cond_1d

    .line 510
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    if-eq v2, v1, :cond_22

    .line 511
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 512
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] , boprIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    .line 515
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    goto/16 :goto_10

    .line 518
    :cond_1d
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    if-eqz v1, :cond_22

    .line 519
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v1, :cond_20

    .line 520
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    const/16 v1, 0x24

    if-le v9, v1, :cond_1e

    move v9, v1

    .line 524
    :cond_1e
    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 525
    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change BLF step by mCurrentStateSleep_1, BLF totalIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    .line 529
    :cond_1f
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    if-eq v1, v9, :cond_22

    .line 530
    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 531
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    if-ge v9, v1, :cond_22

    .line 532
    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change BLF step by mCurrentStateSleep_2, BLF totalIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    goto :goto_10

    :cond_20
    if-nez v1, :cond_22

    .line 538
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    if-eq v1, v9, :cond_22

    .line 539
    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 540
    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] , boprIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    .line 543
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    goto :goto_10

    :cond_21
    const/4 v1, -0x1

    .line 548
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    const/4 v1, 0x0

    .line 549
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 550
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    const-string/jumbo v2, "set ead offset to 0"

    .line 551
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    .line 553
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    if-nez v2, :cond_22

    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz v2, :cond_22

    .line 554
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 555
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    :cond_22
    :goto_10
    return-void
.end method

.method public final bopr_for_bigdata_data_reset()V
    .locals 1

    const/4 v0, 0x0

    .line 619
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I

    .line 620
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    .line 621
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    .line 622
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I

    .line 623
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    .line 624
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    return-void
.end method

.method public getBlfAdaptiveCurrentIndex()I
    .locals 0

    .line 1192
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    return p0
.end method

.method public final getBoprSensorValue(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 885
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 889
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v0, :cond_1

    .line 890
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getBoprSensorValueForBigData(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 896
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 900
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v0, :cond_1

    .line 901
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getSystemServices()V
    .locals 7

    .line 906
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSensorManager : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EyeComfortSolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const v2, 0x10033

    .line 910
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 913
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 914
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 915
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v5, p0

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    const-string p0, "Failure to register all of the services system."

    .line 916
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 918
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWorkingCondition:Z

    const-string p0, "Success to register all of the services system."

    .line 919
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final getting_platform_brightness_value()F
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, 0x0

    .line 601
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPlatformBrightnessValue:F

    return v0
.end method

.method public isBlueLightFilterScheduledTime()Z
    .locals 2

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBlueLightFilterAdaptiveModeEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mBlueLightFilterScheduledTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EyeComfortSolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final sendBigDatatoHQM()V
    .locals 12

    const/4 v1, 0x0

    const-string v2, "Display"

    const-string v3, "ECSS"

    const-string/jumbo v4, "sm"

    const-string v5, "0.0"

    const-string/jumbo v6, "sec"

    const-string v7, ""

    const-string v9, ""

    .line 933
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    const/4 v8, 0x0

    const/16 v10, 0x3c

    if-gt v0, v10, :cond_0

    .line 934
    iput v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    .line 935
    :cond_0
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    if-gt v0, v10, :cond_1

    .line 936
    iput v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    .line 938
    :cond_1
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v10

    .line 940
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_4

    .line 941
    iget v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    if-nez v8, :cond_2

    iget v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    if-eqz v8, :cond_3

    .line 942
    :cond_2
    sget-object v11, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ECSS_KEYS:[Ljava/lang/String;

    array-length v8, v11

    invoke-virtual {p0, v11, v10, v8}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->JsonParseData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BigDatatoHQM sendData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v11

    invoke-virtual {p0, v11, v10, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->JsonParseData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EyeComfortSolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_for_bigdata_data_reset()V

    :cond_4
    return-void
.end method

.method public setBlfEnableTimeBySchedule(ZI)V
    .locals 1

    .line 1172
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    .line 1173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBlueLightFilterModeEnabledTime - mBlueLightFilterScheduledTime: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , index: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EyeComfortSolutionService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    const/4 p1, 0x7

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setBlueLightFilterMode(ZI)V
    .locals 12

    .line 561
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    if-eqz v0, :cond_7

    .line 562
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    const-string v1, " , ead offset : "

    const-string v2, " + 11] = "

    const-string v3, " , targetIndex : ["

    const-string v4, "BLF Adaptive Mode Enable : "

    const-wide v5, 0x40b7700000000000L    # 6000.0

    const-string v7, "EyeComfortSolutionService"

    if-eqz v0, :cond_0

    const-wide v8, 0x403638e38e38e38eL    # 22.22222222222222

    int-to-double v10, p2

    mul-double/2addr v10, v8

    sub-double/2addr v5, v10

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-wide v8, 0x404bc71c71c71c72L    # 55.55555555555556

    int-to-double v10, p2

    mul-double/2addr v10, v8

    sub-double/2addr v5, v10

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "mDNIe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMdnieManager : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mEnvironmentAdaptiveDisplaySupported:Z

    if-nez v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_6

    add-int/lit8 v1, p2, 0xb

    .line 574
    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightModeStep(I)Z

    .line 575
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightMode(ZI)Z

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_6

    .line 578
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_6

    .line 580
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x65

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    const/16 v1, 0x2f

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 586
    :goto_1
    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0xb

    if-le v2, v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    .line 590
    :goto_2
    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightModeStep(I)Z

    .line 591
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightMode(ZI)Z

    .line 594
    :cond_6
    :goto_3
    invoke-virtual {p0, p2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateNightDimSettings(I)V

    :cond_7
    return-void
.end method

.method public setEadIndexOffset(I)V
    .locals 2

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEadIndexOffset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EyeComfortSolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1184
    :goto_0
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    .line 1186
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1187
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    :cond_1
    return-void
.end method

.method public setEyeComfortWeightingFactorValue(F)V
    .locals 0

    .line 606
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    return-void
.end method

.method public final setting_is_changed()V
    .locals 7

    .line 764
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 765
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "blue_light_filter"

    const/4 v4, 0x0

    const/4 v5, -0x2

    .line 767
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    const-string v3, "blue_light_filter_night_dim"

    .line 768
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    const-string v3, "blue_light_filter_adaptive_mode"

    .line 769
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    const-string v3, "blue_light_filter_anti_glare"

    .line 770
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_3

    move v3, v6

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAntiGlareEnabled:Z

    const-string v3, "current_sec_active_themepackage"

    .line 771
    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v6

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    const-string v3, "blue_light_filter_type"

    .line 772
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v6

    goto :goto_5

    :cond_5
    move v0, v4

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBlueLightFilterModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mNightDimModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mBlueLightFilterAdaptiveModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mDefaultThemeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mBlueLightFilterCustomAlwaysOn : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EyeComfortSolutionService"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    const/4 v5, 0x2

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz v0, :cond_6

    const-string v0, "All"

    .line 777
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p0, v6}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V

    .line 779
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    if-eqz v0, :cond_7

    .line 780
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_6

    .line 784
    :cond_6
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V

    .line 785
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 786
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 787
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "reset blue_light_filter_data_reset"

    .line 788
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_data_reset()V

    .line 791
    :cond_7
    :goto_6
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateNightDimSettings(I)V

    .line 792
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateAntiGlareSettings()V

    return-void
.end method

.method public final updateAntiGlareSettings()V
    .locals 6

    .line 729
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    const-string v1, "ANTI_GLARE Mode : 0"

    const-string v2, "EyeComfortSolutionService"

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mGlareReductionSupported:Z

    if-eqz v0, :cond_8

    .line 730
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    const-string v4, "ANTI_GLARE Mode : 1"

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_NODE:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 732
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 734
    :cond_0
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 736
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAntiGlareEnabled:Z

    if-eqz v0, :cond_6

    .line 737
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_NODE:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 744
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 745
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 746
    :cond_3
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 738
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_NODE:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 739
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 740
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 741
    :cond_5
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 749
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_NODE:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 750
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 751
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 752
    :cond_7
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 756
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_NODE:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 757
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 758
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ANTI_GLARE_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 759
    :cond_9
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final updateNightDimSettings(I)V
    .locals 7

    .line 638
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 640
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    if-eqz v1, :cond_c

    .line 641
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    const/16 v3, 0x4b

    const/16 v4, 0x20

    if-eqz v1, :cond_8

    .line 642
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    if-eqz v1, :cond_7

    if-nez p1, :cond_0

    .line 644
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0xb

    if-lez p1, :cond_1

    if-gt p1, v1, :cond_1

    const/16 v1, 0x26

    .line 646
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_1
    const/16 v4, 0x16

    if-le p1, v1, :cond_2

    if-gt p1, v4, :cond_2

    const/16 v1, 0x2c

    .line 648
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_2
    const/16 v1, 0x22

    if-le p1, v4, :cond_3

    if-gt p1, v1, :cond_3

    const/16 v1, 0x32

    .line 650
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_3
    const/16 v4, 0x2d

    const/16 v5, 0x38

    if-le p1, v1, :cond_4

    if-gt p1, v4, :cond_4

    .line 652
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_4
    if-le p1, v4, :cond_5

    if-gt p1, v5, :cond_5

    const/16 v1, 0x3e

    .line 654
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_5
    const/16 v1, 0x44

    if-le p1, v5, :cond_6

    if-gt p1, v1, :cond_6

    .line 656
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_6
    if-le p1, v1, :cond_d

    .line 658
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    .line 661
    :cond_7
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    .line 664
    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    if-eqz v1, :cond_9

    goto :goto_0

    .line 671
    :cond_9
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    .line 665
    :cond_a
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    if-eqz v1, :cond_b

    .line 666
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    .line 668
    :cond_b
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    .line 675
    :cond_c
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 677
    :cond_d
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNightDimSettings index : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mNightDimFontConfigValue : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EyeComfortSolutionService"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    iget v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    if-eq v1, v4, :cond_e

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateConfiguration ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") -> ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    const-string v4, "enhanced_comfort_font_value"

    const/4 v5, -0x2

    .line 681
    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 682
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 683
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/app/IActivityManager;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 694
    :cond_e
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    const-string v1, "NIGHT_DIM Mode : 0 (CLUT Off setting)"

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    if-eqz v0, :cond_17

    .line 695
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    const-string v4, "NIGHT_DIM Mode : 1 (CLUT On)"

    const/4 v5, 0x1

    if-eqz v0, :cond_12

    if-nez p1, :cond_10

    .line 697
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_NODE:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 698
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 699
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_f
    const-string p0, "NIGHT_DIM Mode : 0 (CLUT Off index)"

    .line 700
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 702
    :cond_10
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_NODE:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 703
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 704
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 705
    :cond_11
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 708
    :cond_12
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    if-eqz p1, :cond_13

    goto :goto_2

    .line 714
    :cond_13
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_NODE:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 715
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 716
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 717
    :cond_14
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 709
    :cond_15
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_NODE:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 710
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 711
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 712
    :cond_16
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 721
    :cond_17
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_NODE:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 722
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 723
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 724
    :cond_18
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public updateRubinSleepPattern(Ljava/lang/String;JJF)V
    .locals 7

    const-string v0, "SUNDAY"

    .line 964
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " , WakeupTime : "

    const-string v2, ") , BedTime : "

    const-string v3, "EyeComfortSolutionService"

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0xea60

    const/4 v6, -0x1

    if-eqz v0, :cond_1

    cmpl-float p1, p6, v4

    if-lez p1, :cond_0

    long-to-int p1, p2

    .line 966
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    long-to-int p1, p4

    .line 967
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    goto :goto_0

    .line 969
    :cond_0
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    .line 970
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    .line 972
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SUNDAY("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1
    const-string v0, "MONDAY"

    .line 973
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    cmpl-float p1, p6, v4

    if-lez p1, :cond_2

    long-to-int p1, p2

    .line 975
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    long-to-int p1, p4

    .line 976
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    goto :goto_1

    .line 978
    :cond_2
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    .line 979
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    .line 981
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MONDAY("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_3
    const-string v0, "TUESDAY"

    .line 982
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    cmpl-float p1, p6, v4

    if-lez p1, :cond_4

    long-to-int p1, p2

    .line 984
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    long-to-int p1, p4

    .line 985
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    goto :goto_2

    .line 987
    :cond_4
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    .line 988
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    .line 990
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TUESDAY("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_5
    const-string v0, "WEDNESDAY"

    .line 991
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    cmpl-float p1, p6, v4

    if-lez p1, :cond_6

    long-to-int p1, p2

    .line 993
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    long-to-int p1, p4

    .line 994
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    goto :goto_3

    .line 996
    :cond_6
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    .line 997
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    .line 999
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WEDNESDAY("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_7
    const-string v0, "THURSDAY"

    .line 1000
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    cmpl-float p1, p6, v4

    if-lez p1, :cond_8

    long-to-int p1, p2

    .line 1002
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    long-to-int p1, p4

    .line 1003
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    goto :goto_4

    .line 1005
    :cond_8
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    .line 1006
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    .line 1008
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "THURSDAY("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_9
    const-string v0, "FRIDAY"

    .line 1009
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    cmpl-float p1, p6, v4

    if-lez p1, :cond_a

    long-to-int p1, p2

    .line 1011
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    long-to-int p1, p4

    .line 1012
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    goto :goto_5

    .line 1014
    :cond_a
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    .line 1015
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    .line 1017
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FRIDAY("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    const-string v0, "SATURDAY"

    .line 1018
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    cmpl-float p1, p6, v4

    if-lez p1, :cond_c

    long-to-int p1, p2

    .line 1020
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    long-to-int p1, p4

    .line 1021
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    goto :goto_6

    .line 1023
    :cond_c
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    .line 1024
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    .line 1026
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SATURDAY("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_7
    return-void
.end method

.method public final updateSleepWakeupTime(Ljava/lang/String;)V
    .locals 12

    const-string v0, "currentRubinState"

    const-string v1, "isDeviceRubinSupported"

    const-string v2, "EyeComfortSolutionService"

    .line 1031
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1032
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1033
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1034
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1035
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 1039
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.samsung.android.rubin.state"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "getRubinState"

    const-string v7, "com.samsung.android.bluelightfilter"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1041
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 1043
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "D-Runestone isDeviceRubinSupported : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_0
    :try_start_2
    const-string v1, "OK"

    .line 1045
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, "isEnabledInSupportedApps"

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v6, v3

    .line 1046
    :goto_0
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "O-Runestone currentRubinState : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , isEnabledInSupportedApps : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRubinDataValid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_0
    :cond_2
    move v6, v3

    .line 1055
    :catch_1
    :goto_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "EE"

    invoke-direct {v0, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Sun"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "NextWakeupTime"

    const-string v7, "WakeupTime"

    const-string v8, "BedTime"

    const/16 v9, 0x168

    const/4 v10, -0x1

    if-eqz v0, :cond_7

    .line 1056
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    if-eq v0, v10, :cond_6

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    if-eq v0, v10, :cond_6

    if-eqz v6, :cond_6

    .line 1057
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1058
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_3

    .line 1059
    :cond_3
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1060
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1061
    :cond_4
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1062
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1064
    :cond_5
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1065
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1068
    :cond_6
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1069
    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1071
    :cond_7
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "Mon"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1072
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    if-eq v0, v10, :cond_b

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    if-eq v0, v10, :cond_b

    if-eqz v6, :cond_b

    .line 1073
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1074
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_3

    .line 1075
    :cond_8
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1076
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1077
    :cond_9
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1078
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1080
    :cond_a
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1081
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1084
    :cond_b
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1085
    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1087
    :cond_c
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "Tue"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1088
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    if-eq v0, v10, :cond_10

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    if-eq v0, v10, :cond_10

    if-eqz v6, :cond_10

    .line 1089
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1090
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_3

    .line 1091
    :cond_d
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1092
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1093
    :cond_e
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1094
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1096
    :cond_f
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1097
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1100
    :cond_10
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1101
    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1103
    :cond_11
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "Wed"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1104
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    if-eq v0, v10, :cond_15

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    if-eq v0, v10, :cond_15

    if-eqz v6, :cond_15

    .line 1105
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1106
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_3

    .line 1107
    :cond_12
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1108
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1109
    :cond_13
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1110
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1112
    :cond_14
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1113
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1116
    :cond_15
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1117
    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1119
    :cond_16
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "Thu"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1120
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    if-eq v0, v10, :cond_1a

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    if-eq v0, v10, :cond_1a

    if-eqz v6, :cond_1a

    .line 1121
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1122
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_3

    .line 1123
    :cond_17
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1124
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1125
    :cond_18
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1126
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1128
    :cond_19
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1129
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1132
    :cond_1a
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1133
    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1135
    :cond_1b
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "Fri"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1136
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    if-eq v0, v10, :cond_1f

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    if-eq v0, v10, :cond_1f

    if-eqz v6, :cond_1f

    .line 1137
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1138
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_3

    .line 1139
    :cond_1c
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1140
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    .line 1141
    :cond_1d
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1142
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_3

    .line 1144
    :cond_1e
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1145
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_3

    .line 1148
    :cond_1f
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1149
    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_3

    .line 1151
    :cond_20
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1152
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    if-eq v0, v10, :cond_24

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    if-eq v0, v10, :cond_24

    if-eqz v6, :cond_24

    .line 1153
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1154
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto :goto_3

    .line 1155
    :cond_21
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1156
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_3

    .line 1157
    :cond_22
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1158
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_3

    .line 1160
    :cond_23
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1161
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_3

    .line 1164
    :cond_24
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1165
    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 1168
    :cond_25
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSleepWakeupTime. type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , defaultBedTime : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , defaultWakeupTime : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
