.class public final Lcom/android/server/sepunion/EngmodeService;
.super Lcom/samsung/android/sepunion/IEngmodeService$Stub;
.source "EngmodeService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# instance fields
.field public mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

.field public mNeedUpdate:Z

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mRunTimeTask:Ljava/util/TimerTask;

.field public mServerDate:Ljava/lang/String;

.field public mTimeThread:Ljava/lang/Thread;

.field public mTimerObserve:Ljava/util/Timer;

.field public mUpdateTimer:Ljava/util/Timer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmManager(Lcom/android/server/sepunion/EngmodeService;)Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNeedUpdate(Lcom/android/server/sepunion/EngmodeService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/sepunion/EngmodeService;->mNeedUpdate:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunTimeTask(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/TimerTask;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mRunTimeTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServerDate(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mServerDate:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeThread(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimerObserve(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateTimer(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mUpdateTimer:Ljava/util/Timer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmNeedUpdate(Lcom/android/server/sepunion/EngmodeService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/sepunion/EngmodeService;->mNeedUpdate:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRunTimeTask(Lcom/android/server/sepunion/EngmodeService;Ljava/util/TimerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mRunTimeTask:Ljava/util/TimerTask;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmServerDate(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mServerDate:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTimeThread(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTimerObserve(Lcom/android/server/sepunion/EngmodeService;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUpdateTimer(Lcom/android/server/sepunion/EngmodeService;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mUpdateTimer:Ljava/util/Timer;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetEmManager(Lcom/android/server/sepunion/EngmodeService;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->getEmManager()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misTokenInstalled(Lcom/android/server/sepunion/EngmodeService;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->isTokenInstalled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmakeRunTimeTask(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/TimerTask;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->makeRunTimeTask()Ljava/util/TimerTask;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmakeTimeReq(Lcom/android/server/sepunion/EngmodeService;)[B
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->makeTimeReq()[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mregisterNetworkCallback(Lcom/android/server/sepunion/EngmodeService;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->registerNetworkCallback()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateTime(Lcom/android/server/sepunion/EngmodeService;[B)[B
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/EngmodeService;->updateTime([B)[B

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IEngmodeService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/sepunion/EngmodeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/EngmodeService$2;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/sepunion/EngmodeService;->mNeedUpdate:Z

    const-string p0, "engmode_service"

    const-string p1, "EM Service is started"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p0, "\n##### EngmodeService #####\n##### (dumpsys sepunion EngmodeService) #####\n"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getEmManager()Z
    .locals 2

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    const/4 p0, 0x1

    return p0
.end method

.method public final isTokenInstalled()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->getEmManager()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "engmode_service"

    const-string v1, "Failed to get EM Manager"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isTokenInstalled()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public final makeRunTimeTask()Ljava/util/TimerTask;
    .locals 1

    new-instance v0, Lcom/android/server/sepunion/EngmodeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/EngmodeService$1;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    return-object v0
.end method

.method public final makeTimeReq()[B
    .locals 2

    const-string/jumbo v0, "makeTimeReq() called"

    const-string v1, "engmode_service"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->getEmManager()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Failed to get manager"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->makeTimeReq()[B

    move-result-object p0

    return-object p0
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    :try_start_0
    const-string p1, "engmode_service"

    const-string/jumbo v0, "onBootPhase() boot completed"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final registerNetworkCallback()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/EngmodeService$3;

    invoke-direct {v2, p0}, Lcom/android/server/sepunion/EngmodeService$3;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    iput-object v2, p0, Lcom/android/server/sepunion/EngmodeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final updateTime([B)[B
    .locals 2

    const-string/jumbo v0, "updateTimeReq() called"

    const-string v1, "engmode_service"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/sepunion/EngmodeService;->getEmManager()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Failed to get manager"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->updateTime([B)[B

    move-result-object p0

    return-object p0
.end method
