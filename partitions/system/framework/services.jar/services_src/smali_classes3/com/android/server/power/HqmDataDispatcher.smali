.class public final Lcom/android/server/power/HqmDataDispatcher;
.super Ljava/lang/Object;
.source "HqmDataDispatcher.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HqmDataDispatcher"


# instance fields
.field public final mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayStats:Landroid/util/SparseArray;

.field public mGlobalBrightness:F

.field public final mHandler:Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

.field public final mHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method public static bridge synthetic -$$Nest$msendBrightnessDuration(Lcom/android/server/power/HqmDataDispatcher;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/HqmDataDispatcher;->sendBrightnessDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendCurrentBrightnessSettings(Lcom/android/server/power/HqmDataDispatcher;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/HqmDataDispatcher;->sendCurrentBrightnessSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendDataSetToHqm(Lcom/android/server/power/HqmDataDispatcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/HqmDataDispatcher;->sendDataSetToHqm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/power/HqmDataDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 66
    iput v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mGlobalBrightness:F

    .line 116
    sget-object v0, Lcom/android/server/power/HqmDataDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "HqmDataDispatcher()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;-><init>(Lcom/android/server/power/HqmDataDispatcher;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mHandler:Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

    const-string p2, "HqmManagerService"

    .line 120
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/SemHqmManager;

    iput-object p2, p0, Lcom/android/server/power/HqmDataDispatcher;->mHqmManager:Landroid/os/SemHqmManager;

    .line 121
    const-class p2, Landroid/os/BatteryManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/BatteryManagerInternal;

    iput-object p2, p0, Lcom/android/server/power/HqmDataDispatcher;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 123
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 124
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;-><init>(Lcom/android/server/power/HqmDataDispatcher;Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver-IA;)V

    invoke-virtual {p1, v1, p2, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static getInstance()Lcom/android/server/power/HqmDataDispatcher;
    .locals 1

    .line 112
    invoke-static {}, Lcom/android/server/power/HqmDataDispatcher$HqmDataDispatcherHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/power/HqmDataDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 104
    new-instance v0, Lcom/android/server/power/HqmDataDispatcher;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/HqmDataDispatcher;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-static {v0}, Lcom/android/server/power/HqmDataDispatcher$HqmDataDispatcherHolder;->-$$Nest$sfputINSTANCE(Lcom/android/server/power/HqmDataDispatcher;)V

    return-void
.end method

.method public static isBuiltInDisplay(I)Z
    .locals 1

    .line 308
    invoke-static {p0}, Lcom/android/server/power/HqmDataDispatcher;->isDefaultDisplay(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/server/power/HqmDataDispatcher;->isExtraDisplay(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDefaultDisplay(I)Z
    .locals 0

    .line 0
    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isExtraDisplay(I)Z
    .locals 1

    .line 316
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final findForegroundPackageName()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 302
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 303
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;
    .locals 2

    .line 193
    invoke-static {p1}, Lcom/android/server/power/HqmDataDispatcher$DisplayType;->getType(I)I

    move-result p1

    .line 194
    iget-object v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    invoke-direct {v1, p1}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    return-object p0
.end method

.method public noteScreenBrightness(FI)V
    .locals 1

    .line 176
    invoke-static {p2}, Lcom/android/server/power/HqmDataDispatcher;->isBuiltInDisplay(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/power/HqmDataDispatcher;->getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    move-result-object p2

    .line 180
    invoke-virtual {p2, p1}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->setScreenBrightness(F)V

    .line 181
    iput p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mGlobalBrightness:F

    return-void
.end method

.method public noteScreenCurtainEnabled(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/server/power/HqmDataDispatcher;->getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    move-result-object p0

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->setScreenCurtainEnabled(Z)V

    return-void
.end method

.method public noteScreenState(II)V
    .locals 1

    .line 157
    invoke-static {p2}, Lcom/android/server/power/HqmDataDispatcher;->isBuiltInDisplay(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/power/HqmDataDispatcher;->getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    move-result-object v0

    .line 162
    invoke-virtual {v0, p1}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->setScreenState(I)V

    .line 165
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 167
    iget p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mGlobalBrightness:F

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/HqmDataDispatcher;->noteScreenBrightness(FI)V

    :cond_1
    return-void
.end method

.method public sendBrightnessAdjustmentEventAsync(FFF)V
    .locals 4

    float-to-int p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 135
    iget-object v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "screen_brightness_mode"

    const/4 v3, 0x0

    .line 135
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/power/HqmDataDispatcher;->findForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/power/HqmDataDispatcher;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 141
    invoke-virtual {p2}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 143
    new-instance v1, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    invoke-direct {v1}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;-><init>()V

    const-string v2, "LUBS_L"

    .line 144
    invoke-virtual {v1, v2, p1}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;I)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    const-string p1, "LUBS_B"

    .line 145
    invoke-virtual {v1, p1, p3}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;I)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    const-string p1, "LUBS_M"

    .line 146
    invoke-virtual {v1, p1, v0}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;I)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    const-string p1, "LUBS_P"

    .line 147
    invoke-virtual {v1, p1, p2}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    .line 149
    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mHandler:Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher;->mHandler:Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

    invoke-virtual {v1}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->build()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2710

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;->sendMessageDelayed(ILjava/lang/Object;I)V

    return-void
.end method

.method public final sendBrightnessDuration()V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [J

    const-wide/16 v2, 0x0

    move-wide v5, v2

    move-wide v7, v5

    move-wide v9, v7

    move-wide v11, v9

    move-wide v13, v11

    const/4 v15, 0x0

    .line 212
    :goto_0
    iget-object v4, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/16 v17, 0x2

    const/16 v18, 0x1

    if-ge v15, v4, :cond_3

    .line 213
    iget-object v4, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    invoke-static {v4}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->-$$Nest$fgetmScreenOnCount(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)J

    move-result-wide v19

    add-long v2, v2, v19

    .line 214
    iget-object v4, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    invoke-static {v4}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->-$$Nest$fgetmScreenOnDuration(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)J

    move-result-wide v19

    add-long v5, v5, v19

    const/4 v4, 0x0

    aget-wide v19, v1, v4

    .line 215
    iget-object v4, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    invoke-static {v4}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->-$$Nest$fgetmBrightnessDuration(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)[J

    move-result-object v4

    const/16 v16, 0x0

    aget-wide v21, v4, v16

    add-long v19, v19, v21

    aput-wide v19, v1, v16

    aget-wide v19, v1, v18

    .line 216
    iget-object v4, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    invoke-static {v4}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->-$$Nest$fgetmBrightnessDuration(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)[J

    move-result-object v4

    aget-wide v21, v4, v18

    add-long v19, v19, v21

    aput-wide v19, v1, v18

    aget-wide v18, v1, v17

    .line 217
    iget-object v4, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    invoke-static {v4}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->-$$Nest$fgetmBrightnessDuration(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)[J

    move-result-object v4

    aget-wide v20, v4, v17

    add-long v18, v18, v20

    aput-wide v18, v1, v17

    .line 219
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz v4, :cond_0

    .line 220
    iget-object v4, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    invoke-static {v4}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->-$$Nest$fgetmDisplayType(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)I

    move-result v4

    if-nez v4, :cond_0

    .line 221
    iget-object v4, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    invoke-static {v4}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->-$$Nest$fgetmBrightnessDuration(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)[J

    move-result-object v4

    aget-wide v7, v4, v17

    .line 225
    :cond_0
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SCREEN_CURTAIN:Z

    if-eqz v4, :cond_1

    .line 226
    iget-object v4, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    invoke-static {v4}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->-$$Nest$fgetmDisplayType(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)I

    move-result v4

    if-nez v4, :cond_1

    .line 227
    iget-object v4, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    invoke-static {v4}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->-$$Nest$fgetmScreenCurtainCount(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)J

    move-result-wide v17

    add-long v11, v11, v17

    .line 228
    iget-object v4, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    invoke-static {v4}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->-$$Nest$fgetmScreenCurtainDuration(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)J

    move-result-wide v17

    add-long v9, v9, v17

    .line 232
    :cond_1
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

    if-eqz v4, :cond_2

    .line 233
    iget-object v4, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    invoke-static {v4}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->-$$Nest$fgetmDisplayType(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)I

    move-result v4

    if-nez v4, :cond_2

    .line 234
    iget-object v4, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 235
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    invoke-static {v4}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->-$$Nest$fgetmScreenBrightnessHighestDuration(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)J

    move-result-wide v17

    add-long v13, v13, v17

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 240
    :cond_3
    new-instance v4, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    invoke-direct {v4}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;-><init>()V

    const-string v15, "LBLD"

    move-wide/from16 v19, v13

    const/16 v16, 0x0

    aget-wide v13, v1, v16

    .line 241
    invoke-virtual {v4, v15, v13, v14}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;J)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    const-string v13, "LBMD"

    aget-wide v14, v1, v18

    .line 242
    invoke-virtual {v4, v13, v14, v15}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;J)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    const-string v13, "LBHD"

    aget-wide v14, v1, v17

    .line 243
    invoke-virtual {v4, v13, v14, v15}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;J)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    .line 245
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz v1, :cond_4

    const-string v1, "LBHD_M"

    .line 246
    invoke-virtual {v4, v1, v7, v8}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;J)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    :cond_4
    const-string v1, "LOD"

    .line 251
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;J)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    const-string v1, "LOCNT"

    .line 252
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;J)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    .line 254
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SCREEN_CURTAIN:Z

    if-eqz v1, :cond_5

    const-string v1, "SC_DUR"

    .line 255
    invoke-virtual {v4, v1, v9, v10}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;J)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    const-string v1, "SC_CNT"

    .line 256
    invoke-virtual {v4, v1, v11, v12}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;J)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    .line 259
    :cond_5
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

    if-eqz v1, :cond_6

    const-string v1, "LBHD_HIGHEST"

    move-wide/from16 v2, v19

    .line 260
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;J)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    :cond_6
    const-string v1, "DPLD"

    .line 264
    invoke-virtual {v4}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->build()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/HqmDataDispatcher;->sendDataSetToHqm(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v4, v16

    .line 266
    :goto_1
    iget-object v1, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_7

    .line 267
    iget-object v1, v0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    invoke-virtual {v1}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->reset()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public final sendCurrentBrightnessSettings()V
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 273
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string/jumbo v4, "screen_brightness"

    .line 275
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 278
    new-instance v2, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    invoke-direct {v2}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;-><init>()V

    const-string v3, "MODE"

    .line 279
    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;I)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    const-string v1, "LEVEL"

    .line 280
    invoke-virtual {v2, v1, v0}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;I)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    const-string v0, "DPSI"

    .line 282
    invoke-virtual {v2}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->build()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/HqmDataDispatcher;->sendDataSetToHqm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendDataSetToHqm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 286
    sget-object v0, Lcom/android/server/power/HqmDataDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDataSetToHqm: feature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dataSet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v2, p0, Lcom/android/server/power/HqmDataDispatcher;->mHqmManager:Landroid/os/SemHqmManager;

    const/4 v3, 0x0

    const-string v4, "Display"

    const-string/jumbo v6, "sm"

    const-string v7, "0.0"

    const-string/jumbo v8, "sec"

    const-string v9, ""

    const-string v11, ""

    move-object v5, p1

    move-object v10, p2

    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
