.class public Lcom/android/server/ibs/sqd/IbsQuickDim;
.super Ljava/lang/Object;
.source "IbsQuickDim.java"


# static fields
.field public static mHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field public final DEBUG:Z

.field public SQDGainMap:Ljava/util/Map;

.field public mBlockUnDimUidList:Ljava/util/List;

.field public mBrightness:I

.field public mCharging:Z

.field public mChargingFinishTime:J

.field public mContext:Landroid/content/Context;

.field public mDimStartTime:J

.field public mFilter:Landroid/content/IntentFilter;

.field public mLastFPS:I

.field public mLastPagecount:J

.field public mLastTime:J

.field public final mLock:Ljava/lang/Object;

.field public mPkgFilter:Landroid/content/IntentFilter;

.field public final mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mProcessObserver:Landroid/app/IProcessObserver;

.field public mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

.field public mQuickDimMode:I

.field public mQuickdimEnable:Z

.field public mResolver:Landroid/content/ContentResolver;

.field public mSFSevices:Landroid/os/IBinder;

.field public mSQDPowerSave:F

.field public mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

.field public mScreenOffTimeoutSetting:J

.field public mScreenOn:Z

.field public mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

.field public mSmartStayEnabledSetting:Z

.field public mUiControlEnabled:Z

.field public mWMS:Lcom/android/server/wm/WindowManagerService;

.field public receiver:Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;


# direct methods
.method public static synthetic $r8$lambda$XQOYtlguUrJ0-LJ6XBWkIQYXWxM(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->lambda$handleBootComplete$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$pAudxvX0zQhNXFxFThzTa5Ek0hI(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->lambda$handlePkgRemoved$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetDEBUG(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCharging(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastFPS(Lcom/android/server/ibs/sqd/IbsQuickDim;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/ibs/sqd/IbsQuickDim;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManagerInternal(Lcom/android/server/ibs/sqd/IbsQuickDim;)Landroid/os/PowerManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQkDimHandler(Lcom/android/server/ibs/sqd/IbsQuickDim;)Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuickdimEnable(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/server/ibs/sqd/IbsQuickDim;)Landroid/content/ContentResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOffTimeoutSetting(Lcom/android/server/ibs/sqd/IbsQuickDim;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOffTimeoutSetting:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSmartStayEnabledSetting(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSmartStayEnabledSetting:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiControlEnabled(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCharging(Lcom/android/server/ibs/sqd/IbsQuickDim;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmChargingFinishTime(Lcom/android/server/ibs/sqd/IbsQuickDim;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mChargingFinishTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDimStartTime(Lcom/android/server/ibs/sqd/IbsQuickDim;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastFPS(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmQuickdimEnable(Lcom/android/server/ibs/sqd/IbsQuickDim;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOffTimeoutSetting(Lcom/android/server/ibs/sqd/IbsQuickDim;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOffTimeoutSetting:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/android/server/ibs/sqd/IbsQuickDim;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSmartStayEnabledSetting(Lcom/android/server/ibs/sqd/IbsQuickDim;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSmartStayEnabledSetting:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckQuickDimStatus(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->checkQuickDimStatus()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetFpsFromSurfaceFlinger(Lcom/android/server/ibs/sqd/IbsQuickDim;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getFpsFromSurfaceFlinger()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleBootComplete(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->handleBootComplete()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePkgRemoved(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->handlePkgRemoved()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitFilter(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->initFilter()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mquitDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->quitDimMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveAllmessage(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetQuickDimModeFromPms(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->setQuickDimModeFromPms(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IbsQuickDim"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eng"

    .line 66
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBrightness:I

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    .line 71
    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 73
    new-instance v2, Lcom/android/server/ibs/sqd/IbsQuickDim$1;

    invoke-direct {v2, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$1;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    iput-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->SQDGainMap:Ljava/util/Map;

    .line 85
    iput-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    const-wide/16 v2, 0x0

    .line 86
    iput-wide v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mChargingFinishTime:J

    .line 87
    iput-wide v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    .line 89
    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mWMS:Lcom/android/server/wm/WindowManagerService;

    .line 91
    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 92
    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    .line 94
    iput-wide v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastPagecount:J

    .line 95
    iput-wide v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastTime:J

    .line 96
    iput-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    const/4 v2, 0x2

    .line 97
    iput v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 98
    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 99
    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim$2;

    invoke-direct {v1, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$2;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    const/4 v1, -0x1

    .line 110
    iput v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    .line 111
    iput-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    .line 121
    new-instance v0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$3;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    iput-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 158
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$handleBootComplete$0()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_sqd_enabled_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 332
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->setUicontrolEnable(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$handlePkgRemoved$1()V
    .locals 1

    .line 341
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->setUicontrolEnable(Z)V

    .line 344
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->clear(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 346
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addBlockList(ILjava/lang/String;)Z
    .locals 3

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " addBlockList uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IbsQuickDim"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "PackageName"

    .line 366
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Uid"

    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->insert(Landroid/content/ContentValues;)J

    move-result-wide p0

    .line 369
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " ret = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final calcDimActionGain()V
    .locals 9

    .line 305
    iget-wide v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 308
    iget-object v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->SQDGainMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 309
    iget v7, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBrightness:I

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 310
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    .line 315
    :cond_1
    iget-wide v6, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    sub-long/2addr v0, v6

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x45610000    # 3600.0f

    div-float/2addr v0, v1

    int-to-float v1, v5

    mul-float/2addr v0, v1

    .line 317
    iget v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    .line 318
    iput-wide v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    return-void
.end method

.method public final checkQuickDimStatus()V
    .locals 6

    .line 215
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getFpsFromSurfaceFlinger()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 219
    :cond_0
    iget v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    const/4 v2, -0x1

    const-wide/16 v3, 0x1f40

    const/4 v5, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "IbsQuickDim"

    const-string v2, "checkQuickDimStatus first check!"

    .line 220
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iput v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    .line 222
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    if-ge v1, v5, :cond_2

    .line 225
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 227
    :cond_2
    iput v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    .line 228
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    .line 627
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SQD Version: 1.0"

    .line 628
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SQD swich status : "

    .line 629
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI on-off : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCharging : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSQDPowerSave : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "policy status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "block List:"

    .line 634
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 635
    :goto_0
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    :cond_0
    array-length p1, p2

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 640
    aget-object p1, p2, v0

    const-string/jumbo v2, "sqd_swich"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 641
    aget-object p1, p2, v1

    const-string/jumbo p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 642
    iput-boolean v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    goto :goto_1

    .line 644
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public getBlockList()Ljava/util/Map;
    .locals 7

    .line 388
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 389
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    iget-object v2, v1, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 392
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PackageName"

    .line 393
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Uid"

    .line 394
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 399
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 400
    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public final getFpsFromSurfaceFlinger()I
    .locals 13

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 239
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getSurfaceFlingerServices()Landroid/os/IBinder;

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v2, "android.ui.ISurfaceComposer"

    .line 243
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    const/16 v4, 0x3f5

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 247
    iget-wide v6, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastTime:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_1

    iget-wide v8, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastPagecount:J

    int-to-long v10, v2

    cmp-long v12, v8, v10

    if-gez v12, :cond_1

    cmp-long v12, v6, v4

    if-gez v12, :cond_1

    sub-long v6, v4, v6

    long-to-float v3, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v3, v6

    sub-long/2addr v10, v8

    long-to-float v6, v10

    div-float/2addr v6, v3

    float-to-int v3, v6

    :cond_1
    int-to-long v6, v2

    .line 251
    iput-wide v6, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastPagecount:J

    .line 252
    iput-wide v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 256
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const/4 v3, -0x2

    :goto_0
    return v3

    .line 259
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 261
    throw p0
.end method

.method public getGain()[J
    .locals 6

    .line 460
    iget v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    float-to-long v0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 461
    iget-wide v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mChargingFinishTime:J

    aput-wide v4, v2, v3

    const/4 p0, 0x1

    aput-wide v0, v2, p0

    return-object v2
.end method

.method public getSQDUiControlEnable()Z
    .locals 0

    .line 435
    iget-boolean p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    return p0
.end method

.method public getSurfaceFlingerServices()Landroid/os/IBinder;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "SurfaceFlinger"

    .line 353
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleBootComplete()V
    .locals 2

    const-string v0, "IbsQuickDim"

    const-string v1, "handleBootComplete"

    .line 328
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handlePkgRemoved()V
    .locals 2

    const-string v0, "IbsQuickDim"

    const-string v1, "handlePkgRemoved"

    .line 338
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public init()V
    .locals 8

    const-string v0, "IbsQuickDim"

    .line 162
    sget-object v1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 163
    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    sget-object v2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 164
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "window"

    .line 168
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 167
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerService;

    iput-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mWMS:Lcom/android/server/wm/WindowManagerService;

    .line 169
    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Exception - registerPointerEventListener"

    .line 171
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    :goto_0
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    .line 179
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    const v3, 0xea60

    const-string/jumbo v4, "screen_off_timeout"

    const/4 v5, -0x2

    invoke-static {v2, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOffTimeoutSetting:J

    .line 182
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSmartStayEnabledSetting:Z

    .line 184
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "screen_brightness"

    invoke-static {v2, v6, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBrightness:I

    .line 187
    new-instance v2, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    iget-object v5, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    invoke-direct {v2, p0, v5}, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    .line 188
    new-instance v2, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    iput-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->receiver:Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;

    .line 189
    iget-object v5, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v5, v2, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->receiver:Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;

    iget-object v7, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPkgFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 193
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    const/4 v7, -0x1

    .line 192
    invoke-virtual {v2, v4, v1, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 195
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 196
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    .line 195
    invoke-virtual {v2, v3, v1, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 198
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 199
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    .line 198
    invoke-virtual {v2, v3, v1, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 202
    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 204
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "RemoteException - registerProcessObserver"

    .line 206
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 209
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->readDBWhiteList()V

    .line 211
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getSurfaceFlingerServices()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    return-void
.end method

.method public final initFilter()V
    .locals 2

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPkgFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPkgFilter:Landroid/content/IntentFilter;

    const-string/jumbo v0, "package"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method

.method public isSqdSupport()Z
    .locals 4

    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    .line 443
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    if-nez v3, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getSurfaceFlingerServices()Landroid/os/IBinder;

    .line 446
    :cond_0
    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    const-string v3, "android.ui.ISurfaceComposer"

    .line 447
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 448
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    const/16 v3, 0x3f5

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 451
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 453
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 455
    throw p0
.end method

.method public final quitDimMode()V
    .locals 2

    .line 297
    iget v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 298
    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " quit dim mode mQuickDimMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IbsQuickDim"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setScreenDimDurationOverrideFromSqd(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->calcDimActionGain()V

    :cond_1
    return-void
.end method

.method public readDBWhiteList()V
    .locals 7

    .line 406
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 407
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    iget-object v2, v1, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 410
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Uid"

    .line 411
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 416
    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public final removeAllmessage()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public removeBlockList(ILjava/lang/String;)Z
    .locals 3

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " removeBlockList uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IbsQuickDim"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 380
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 381
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    const-string p2, "PackageName = ? AND Uid = ?"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 382
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final setQuickDimModeFromPms(I)V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "IbsQuickDim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    .line 283
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    .line 284
    iget-boolean p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "IbsQuickDim"

    const-string v1, "PMS set dim"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    iput v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_4

    .line 287
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->quitDimMode()V

    .line 288
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    const/4 p1, -0x1

    .line 289
    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    .line 290
    iget-boolean p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "IbsQuickDim"

    const-string/jumbo v1, "pause check dim"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x4

    .line 291
    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 293
    :cond_4
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

.method public setUicontrolEnable(Z)V
    .locals 2

    const-string v0, "IbsQuickDim"

    const-string v1, "UI set SQD switch"

    .line 421
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    if-eq v0, p1, :cond_2

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 424
    iput v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 425
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 426
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    if-nez v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 429
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_sqd_enabled_key"

    invoke-static {v0, v1, p1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 431
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    return-void
.end method
