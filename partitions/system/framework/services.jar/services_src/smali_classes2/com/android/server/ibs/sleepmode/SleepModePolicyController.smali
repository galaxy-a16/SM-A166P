.class public Lcom/android/server/ibs/sleepmode/SleepModePolicyController;
.super Ljava/lang/Object;
.source "SleepModePolicyController.java"


# instance fields
.field public final mActionsLock:Ljava/lang/Object;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mBootCompleteReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

.field public final mContext:Landroid/content/Context;

.field public mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field public final mDeviceStatusReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

.field public mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

.field public mEntryArrayList:Ljava/util/ArrayList;

.field public final mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mInited:Z

.field public mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

.field public final mReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

.field public final mSleepModeAction:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

.field public mSleepModeEnabled:Z

.field public mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

.field public mSysState:I

.field public final mTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method public static synthetic $r8$lambda$-jQKplB4QuFi4egX9gHJ5wyIIN8(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->lambda$exitSleepMode$3(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3lo_TQhCzjFlmiZkS7vnzy8T7mY(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->lambda$recoverSleepMode$2(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W7kn21dIx8jPfN97VyQY1JOdZWI(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$c_GDLKkPmjgTjjUBty40xmiJaPk(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->lambda$enterSleepMode$1(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d7fj4jIXhS1obE4tyWuUcJ8NEaE(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->lambda$sendPackageRemovedMessage$4(Landroid/net/Uri;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLogger(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)Lcom/android/server/ibs/sleepmode/SleepModeLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAlarmEndEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->handleAlarmEndEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAlarmStartEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->handleAlarmStartEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBeforeBedtimeEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->handleBeforeBedtimeEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBootCompleteEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->handleBootCompleteEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleIdleChangedEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->handleIdleChangedEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageRemovedEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->handlePackageRemovedEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleProbablyAsleepEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->handleProbablyAsleepEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSetTimeEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->handleSetTimeEvent(Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSleepModeExitEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->handleSleepModeExitEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSleepModeStartEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->handleSleepModeStartEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSleepModeStopEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->handleSleepModeStopEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStatusCheckEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->handleStatusCheckEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleTimeChangedEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->handleTimeChangedEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleWakeupEvent(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->handleWakeupEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->registerSleepModeAction(Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendBootCompleteMessage(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->sendBootCompleteMessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendCheckStatusMessage(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->sendCheckStatusMessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendExitSleepModeMessage(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->sendExitSleepModeMessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendIdleChangedMessage(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->sendIdleChangedMessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendPackageRemovedMessage(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->sendPackageRemovedMessage(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendTimeChangedMessage(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->sendTimeChangedMessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSysState(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/sleepmode/SleepModeLogger;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 57
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 60
    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 61
    iput v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    const-string p3, "deviceidle"

    .line 63
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    .line 62
    invoke-static {p3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string p3, "alarm"

    .line 64
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 65
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    .line 66
    new-instance p3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    invoke-direct {p3, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 67
    new-instance p3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    invoke-direct {p3, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceStatusReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 68
    new-instance p3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    invoke-direct {p3, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mBootCompleteReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    .line 69
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeAction:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 70
    invoke-virtual {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->registerAction()V

    .line 71
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 73
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 74
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, p3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic lambda$enterSleepMode$1(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;)V
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " do sleep mode restriction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SleepModePolicyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->callBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    invoke-interface {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;->triggerAction()V

    return-void
.end method

.method public static synthetic lambda$exitSleepMode$3(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;)V
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cancel sleep mode restriction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SleepModePolicyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->callBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    invoke-interface {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;->cancelAction()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->updateActivated()V

    return-void
.end method

.method public static synthetic lambda$recoverSleepMode$2(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;)V
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cancel sleep mode restriction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SleepModePolicyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->callBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    invoke-interface {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;->cancelAction()V

    return-void
.end method

.method private synthetic lambda$sendPackageRemovedMessage$4(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "com.samsung.android.statsd"

    .line 312
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    if-eqz p1, :cond_0

    const-string p1, "SleepModePolicyController"

    const-string/jumbo v0, "sendPackageRemovedMessage"

    .line 313
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 315
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    .line 499
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SleepModePolicy "

    .line 500
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get current state :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    array-length v0, p2

    const-string/jumbo v1, "set new state :"

    const-string/jumbo v2, "sleepMode"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    aget-object v0, p2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez p2, :cond_3

    .line 506
    invoke-virtual {p0, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSleepModeEnable(Z)V

    const-string p0, "diable sleep mode"

    .line 507
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    :cond_0
    array-length v0, p2

    const/4 v6, 0x4

    if-ne v0, v6, :cond_1

    aget-object v0, p2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    aget-object v0, p2, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-ne v0, v4, :cond_3

    .line 513
    invoke-virtual {p0, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSleepModeEnable(Z)V

    const-string v0, "enable sleep mode"

    .line 514
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    aget-object v0, p2, v5

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->getTime(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x3

    aget-object p2, p2, v2

    invoke-static {p2}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->getTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSleepTime(JJ)V

    const-string/jumbo p0, "set sleep time"

    .line 516
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_1
    array-length v0, p2

    if-ne v0, v4, :cond_2

    const-string v0, "getSleepTime"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "get sleep time"

    .line 519
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->getSleepTime()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 522
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "start time is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bundle_start_sleep_time_key"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end time is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bundle_end_sleep_time_key"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 525
    :cond_2
    array-length v0, p2

    if-ne v0, v5, :cond_3

    const-string/jumbo v0, "rubinEvent"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    aget-object p2, p2, v4

    invoke-virtual {p0, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setRubinEvent(Ljava/lang/String;)V

    const-string/jumbo p0, "set runbin event"

    .line 527
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final enterSleepMode()V
    .locals 6

    .line 194
    iget-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    if-nez v0, :cond_0

    const-string p0, "SleepModePolicyController"

    const-string v0, "UI switch off disable the sleep mode restriction."

    .line 195
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    const-string v2, "enterSleepMode"

    invoke-virtual {v1, v2}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 200
    iput v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 201
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 205
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pref_sleep_mode_activated_key"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 206
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pref_sleep_mode_trigger_time_key"

    invoke-static {}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->getCurTime()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 207
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pref_sleep_mode_policy_state_key"

    iget v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    invoke-static {v1, v2, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 208
    invoke-virtual {p0, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initDeviceStatusBroadcast(Z)V

    .line 209
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final exitSleepMode()V
    .locals 6

    .line 227
    iget-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    if-nez v0, :cond_0

    const-string p0, "SleepModePolicyController"

    const-string v0, "UI switch off disable the cancel sleep mode restriction."

    .line 228
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    const-string v2, "exitSleepMode"

    invoke-virtual {v1, v2}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 237
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pref_sleep_mode_activated_key"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 238
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pref_sleep_mode_cancel_time_key"

    invoke-static {}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->getCurTime()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 239
    invoke-virtual {p0, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initDeviceStatusBroadcast(Z)V

    .line 240
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCustomEndTime()Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;
    .locals 5

    .line 326
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_sleep_mode_end_time_key"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-eqz p0, :cond_0

    .line 327
    invoke-static {v3, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getCustomStartTime()Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;
    .locals 5

    .line 321
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_sleep_mode_start_time_key"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-eqz p0, :cond_0

    .line 322
    invoke-static {v3, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getOperationHistory()Landroid/os/Bundle;
    .locals 7

    const-string v0, "SleepModePolicyController"

    const-string v1, "getOperationHistory"

    .line 424
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_trigger_time_key"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 427
    iget-object v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pref_sleep_mode_cancel_time_key"

    invoke-static {v4, v5, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pref_sleep_mode_policy_state_key"

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 430
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "bundle_start_time_key"

    .line 431
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "bundle_end_time_key"

    .line 432
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x1

    .line 433
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result v0

    const-string v1, "bundle_psm_key"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x4

    .line 434
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result v0

    const-string v1, "bundle_gps_key"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x8

    .line 435
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result v0

    const-string v1, "bundle_bt_key"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x2

    .line 436
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result v0

    const-string v1, "bundle_wifi_key"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x10

    .line 437
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result v0

    const-string v1, "bundle_nearby_key"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x20

    .line 438
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result v0

    const-string v1, "bundle_master_sync_key"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x40

    .line 439
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result v0

    const-string v1, "bundle_notification_key"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x80

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result p0

    const-string v0, "bundle_camera_flash_notification_key"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getSleepTime()Landroid/os/Bundle;
    .locals 6

    const-string v0, "SleepModePolicyController"

    const-string v1, "getSleepTime"

    .line 446
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_start_time_key"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 449
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pref_sleep_mode_end_time_key"

    invoke-static {p0, v4, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    .line 451
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bundle_start_sleep_time_key"

    .line 452
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "bundle_end_sleep_time_key"

    .line 453
    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final handleAlarmEndEvent()V
    .locals 3

    const-string v0, "SleepModePolicyController"

    const-string v1, "handleAlarmEndEvent"

    .line 698
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode()V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_idle_timeout_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initDeviceIdleController()V

    .line 705
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {p0}, Landroid/os/IDeviceIdleController;->resetPreIdleTimeoutMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 707
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final handleAlarmStartEvent()V
    .locals 3

    const-string v0, "SleepModePolicyController"

    const-string v1, "handleAlarmStartEvent"

    .line 713
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initDeviceIdleController()V

    .line 718
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->setPreIdleTimeoutMode(I)I

    .line 719
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_idle_timeout_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 721
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 724
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->enterSleepMode()V

    :cond_0
    return-void
.end method

.method public final handleBeforeBedtimeEvent()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string v1, "handleBeforeBedtimeEvent"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initDeviceIdleController()V

    .line 95
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->setPreIdleTimeoutMode(I)I

    .line 96
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_sleep_mode_idle_timeout_key"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final handleBootCompleteEvent()V
    .locals 2

    const-string v0, "handleBootCompleteEvent"

    const-string v1, "SleepModePolicyController"

    .line 125
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->recoverSleepMode()V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sleep mode enabled!"

    .line 129
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->getCustomStartTime()Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 131
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->getCustomEndTime()Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    :cond_0
    return-void
.end method

.method public final handleIdleChangedEvent()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string v1, "handleIdleChangedEvent"

    .line 657
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result v0

    .line 659
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isDuringUserSetupTime()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 662
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->enterSleepMode()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 665
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->needRecover()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final handlePackageRemovedEvent()V
    .locals 2

    .line 79
    iget-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    .line 81
    iput-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode()V

    .line 86
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    .line 87
    iput-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 88
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->clear(Landroid/content/Context;)V

    return-void
.end method

.method public final handleProbablyAsleepEvent()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string v1, "handleProbablyAsleepEvent"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->enterSleepMode()V

    :cond_0
    return-void
.end method

.method public final handleSetTimeEvent(Landroid/os/Message;)V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string v1, "handleSetTimeEvent"

    .line 690
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/ArrayMap;

    const-string/jumbo v0, "start_time"

    .line 692
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    const-string v0, "end_time"

    .line 693
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    const/4 p1, 0x1

    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    return-void
.end method

.method public final handleSleepModeExitEvent()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string v1, "handleSleepModeExitEvent"

    .line 650
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode()V

    :cond_0
    return-void
.end method

.method public final handleSleepModeStartEvent()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string v1, "handleSleepModeStartEvent"

    .line 740
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 742
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    .line 743
    iput-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    :cond_0
    return-void
.end method

.method public final handleSleepModeStopEvent()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string v1, "handleSleepModeStopEvent"

    .line 731
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    .line 734
    iput-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    .line 736
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    return-void
.end method

.method public final handleStatusCheckEvent()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string v1, "handleStatusCheckEvent"

    .line 673
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode()V

    :cond_0
    return-void
.end method

.method public final handleTimeChangedEvent()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string v1, "handleTimeChangedEvent"

    .line 685
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 686
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    return-void
.end method

.method public final handleWakeupEvent()V
    .locals 3

    const-string v0, "SleepModePolicyController"

    const-string v1, "handleWakeupEvent"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_idle_timeout_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initDeviceIdleController()V

    .line 117
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {p0}, Landroid/os/IDeviceIdleController;->resetPreIdleTimeoutMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final initAlarm(Z)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v0, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->updateActivated()V

    :cond_1
    return-void
.end method

.method public final initBroadcast(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 140
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.REBOOT"

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 144
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 149
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method public final initDeviceIdleController()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "deviceidle"

    .line 338
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceIdleController:Landroid/os/IDeviceIdleController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 340
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final initDeviceStatusBroadcast(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 158
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceStatusReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceStatusReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method public final isDuringUserSetupTime()Z
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    if-eqz v0, :cond_0

    .line 461
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    invoke-virtual {v1, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 463
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v2, v1, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    move-result-object p0

    .line 464
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 466
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDuringUserSetupTime: isInSetupTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SleepModePolicyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isEnableSerive()Z
    .locals 2

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnableSerive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SleepModePolicyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-boolean p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    return p0
.end method

.method public final isIdleStatus()Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isDeviceIdleMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 169
    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 170
    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isPowerConnected(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 173
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current idle status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SleepModePolicyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isSleepModeActivated()Z
    .locals 2

    .line 178
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_sleep_mode_activated_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSleepModeActivated to be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SleepModePolicyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isSleepModeEnabled()Z
    .locals 2

    .line 331
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_sleep_mode_enabled_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final needRecover()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isDeviceIdleMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 186
    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isPowerConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 189
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "revort state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SleepModePolicyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final recoverSleepMode()V
    .locals 4

    .line 213
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    const-string/jumbo v2, "recoverSleepMode"

    invoke-virtual {v1, v2}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 220
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pref_sleep_mode_activated_key"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 221
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_cancel_time_key"

    invoke-static {}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->getCurTime()J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 222
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
    return-void
.end method

.method public final registerSleepModeAction(Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_0
    new-instance v1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;

    invoke-direct {v1, p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;-><init>(Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 494
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendAlarmEndMessage()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string/jumbo v1, "sendAlarmEndMessage"

    .line 279
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 281
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 282
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final sendAlarmStartMessage()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string/jumbo v1, "sendAlarmStartMessage"

    .line 252
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 254
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 255
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final sendBootCompleteMessage()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string/jumbo v1, "sendBootCompleteMessage"

    .line 295
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    .line 297
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 298
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final sendCheckStatusMessage()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string/jumbo v1, "sendCheckStatusMessage"

    .line 287
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 289
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 290
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final sendExitSleepModeMessage()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string/jumbo v1, "sendExitSleepModeMessage"

    .line 244
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    .line 246
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 247
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final sendIdleChangedMessage()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string/jumbo v1, "sendIdleChangedMessage"

    .line 303
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 305
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 306
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final sendPackageRemovedMessage(Landroid/content/Intent;)V
    .locals 1

    .line 311
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final sendSetTimeMessage(JJ)V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string/jumbo v1, "sendSetTimeMessage"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string/jumbo v1, "start_time"

    .line 271
    invoke-static {p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "end_time"

    .line 272
    invoke-static {p3, p4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 274
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final sendTimeChangedMessage()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string/jumbo v1, "sendTimeChangedMessage"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 262
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 263
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setRubinEvent(Ljava/lang/String;)V
    .locals 3

    .line 402
    iget-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    const-string v1, "SleepModePolicyController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "sleep mode off, doesn\'t deal with runstone event!"

    .line 403
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "BEFORE_BEDTIME"

    .line 406
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "PROBABLY_ASLEEP"

    .line 409
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v0, "WAKEUP"

    .line 412
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 413
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public setSleepModeEnable(Z)V
    .locals 2

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSleepModeEnable >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SleepModePolicyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->startSleepModePolicy()V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->stopSleepModePolicy()V

    .line 390
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 391
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_sleep_mode_enabled_key"

    invoke-static {p0, v0, p1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setSleepTime(JJ)V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string/jumbo v1, "setSleepTime"

    .line 395
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->sendSetTimeMessage(JJ)V

    .line 397
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_start_time_key"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 398
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "pref_sleep_mode_end_time_key"

    invoke-static {p0, p1, p3, p4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public final setSysState(I)V
    .locals 1

    and-int/lit16 p1, p1, 0xff

    .line 472
    iget v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    if-eq p1, v0, :cond_0

    .line 473
    iput p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    :cond_0
    return-void
.end method

.method public final startSleepModePolicy()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string/jumbo v1, "startSleepModePolicy"

    .line 482
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final stopSleepModePolicy()V
    .locals 2

    const-string v0, "SleepModePolicyController"

    const-string/jumbo v1, "stopSleepModePolicy"

    .line 487
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final testState(I)Z
    .locals 0

    .line 478
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateActivated()V
    .locals 4

    const-string v0, "SleepModePolicyController"

    const-string/jumbo v1, "updateActivated"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    if-eqz v0, :cond_0

    .line 348
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    invoke-virtual {v1, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 350
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    invoke-virtual {v3, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    move-result-object v1

    .line 351
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    .line 352
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method

.method public final updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V
    .locals 11

    if-eqz p1, :cond_2

    .line 358
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    invoke-virtual {v1, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    move-result-object p2

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    move-result-object p2

    .line 360
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v0, 0xc

    const-string v1, ":"

    const/16 v2, 0xb

    const-string v3, "SleepModePolicyController"

    if-eqz p1, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->sendAlarmStartMessage()V

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In Active Duration, set inactive alarm at "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 362
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->sendAlarmEndMessage()V

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out Active Duration, set active alarm at "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_1
    iget-object v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-string v8, "SleepModePolicyController"

    iget-object v9, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method
