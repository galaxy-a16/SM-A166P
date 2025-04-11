.class public Lcom/android/server/ibs/IntelligentBatterySaverService;
.super Landroid/os/IIntelligentBatterySaverService$Stub;
.source "IntelligentBatterySaverService.java"


# static fields
.field public static mIBSEnable:Z = false


# instance fields
.field public mBootCompleteReceiver:Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mIBSDexoptManager:Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

.field public mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

.field public mIBSGather:Lcom/android/server/ibs/IntelligentBatterySaverGather;

.field public mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

.field public mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

.field public final mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

.field public mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

.field public mIBSSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

.field public mIBSSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

.field public mSCPMReceiver:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

.field public mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

.field public mSleepModeLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

.field public mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public static synthetic $r8$lambda$Vz4hXUjWJ3NHQ1A2kltZlwtg8l8(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/ibs/IntelligentBatterySaverService;->lambda$dump$2(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iKDAHUBTh6ivcYYCdkS-Pu3LQII(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/ibs/IntelligentBatterySaverService;->lambda$dump$0(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qTVIvZjVmnF8FzsBtrEDGewQm2o(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModeLogger;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/ibs/IntelligentBatterySaverService;->lambda$dump$1(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModeLogger;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/ibs/IntelligentBatterySaverService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIBSScpmManager(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceHandler(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mforceResetEveryPolicy(Lcom/android/server/ibs/IntelligentBatterySaverService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->forceResetEveryPolicy()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 67
    invoke-direct {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sys.config.ibs.enable"

    .line 69
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IntelligentBatterySaverService"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 72
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 73
    sget-boolean v1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    .line 75
    invoke-static {}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->getInstance()Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 76
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    invoke-direct {v1, p1}, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    .line 77
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverGather;

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    invoke-direct {v1, p1, p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverGather;-><init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;Lcom/android/server/ibs/IntelligentBatterySaverLogger;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGather:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    .line 78
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    invoke-direct {v1, p1, p0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;-><init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 79
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/IntelligentBatterySaverLogger;Lcom/android/server/ibs/IntelligentBatterySaverSurvey;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 80
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-direct {v1, p1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 82
    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 84
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->onBootCompleted()V

    .line 88
    :cond_0
    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-direct {v1, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 89
    invoke-virtual {v1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->init()V

    .line 93
    invoke-static {}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->getInstance()Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModeLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 94
    new-instance v2, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/sleepmode/SleepModeLogger;)V

    iput-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 98
    new-instance p1, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

    invoke-direct {p1}, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;-><init>()V

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSDexoptManager:Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

    .line 99
    invoke-virtual {p1}, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;->init()V

    return-void
.end method

.method public static synthetic lambda$dump$0(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 315
    invoke-virtual {p2, p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dump$1(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModeLogger;)V
    .locals 0

    .line 316
    invoke-virtual {p2, p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->dumpSleepModeHistoryLog(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dump$2(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;)V
    .locals 0

    .line 319
    invoke-virtual {p2, p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addSqdBlockList(ILjava/lang/String;)Z
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->addBlockList(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public dexoptPackages(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSDexoptManager:Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;->dexoptPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 286
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.DUMP"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 288
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump IntelligentBatterySaverService from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 294
    :cond_0
    sget-boolean p1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    if-eqz p1, :cond_1

    const-string p1, ""

    .line 295
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "IBS Version: 1.0"

    .line 296
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->dumpIBSHistoryLog(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 303
    :cond_1
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    if-eqz p1, :cond_2

    .line 304
    invoke-virtual {p1, p2, p3}, Lcom/android/server/ibs/sqd/IbsQuickDim;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 309
    :cond_2
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    if-eqz p1, :cond_3

    .line 310
    invoke-virtual {p1, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 315
    :cond_3
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 316
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModeLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 319
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSDexoptManager:Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forceResetEveryPolicy()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->sendForceEixtFastDrainRestrictionMessage()V

    .line 110
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogAppNetworkForceReset()V

    return-void
.end method

.method public getGain()[J
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getGain()[J

    move-result-object p0

    return-object p0
.end method

.method public getOperationHistory()Landroid/os/Bundle;
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->getOperationHistory()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getSleepTime()Landroid/os/Bundle;
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->getSleepTime()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getSqdBlockList()Ljava/util/Map;
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getBlockList()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final init()V
    .locals 1

    .line 104
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mBootCompleteReceiver:Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;

    .line 105
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSCPMReceiver:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    return-void
.end method

.method public isEnableSerive()Z
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isEnableSerive()Z

    move-result p0

    return p0
.end method

.method public isSqdSupport()Z
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->isSqdSupport()Z

    move-result p0

    return p0
.end method

.method public isSqdUiControlEnabled()Z
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getSQDUiControlEnable()Z

    move-result p0

    return p0
.end method

.method public final onBootCompleted()V
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->init()V

    .line 119
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGather:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverGather;->init()V

    .line 120
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->init()V

    .line 121
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->init()V

    .line 122
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->init()V

    return-void
.end method

.method public removeSqdBlockList(ILjava/lang/String;)Z
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeBlockList(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setRubinEvent(Ljava/lang/String;)V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setRubinEvent(Ljava/lang/String;)V

    return-void
.end method

.method public setSarrUiControlEnable(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public setSleepModeEnabled(Z)V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSleepModeEnable(Z)V

    return-void
.end method

.method public setSleepTime(JJ)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSleepTime(JJ)V

    return-void
.end method

.method public setSqdUiControlEnabled(Z)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->setUicontrolEnable(Z)V

    return-void
.end method
