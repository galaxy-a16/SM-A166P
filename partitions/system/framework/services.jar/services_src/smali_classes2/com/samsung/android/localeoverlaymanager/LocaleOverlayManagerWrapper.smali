.class public Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;
.super Ljava/lang/Object;
.source "LocaleOverlayManagerWrapper.java"

# interfaces
.implements Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;


# static fields
.field public static final TAG:Ljava/lang/String; = "LocaleOverlayManagerWrapper"

.field public static sInstance:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

.field public mPendingActionRunnable:Ljava/lang/Runnable;

.field public final mPendingRequestQueue:Ljava/util/Queue;

.field public mQuitRunnable:Ljava/lang/Runnable;

.field public mRequestInProgress:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 143
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    .line 145
    new-instance v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingActionRunnable:Ljava/lang/Runnable;

    .line 148
    new-instance v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Ljava/lang/Runnable;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p1

    .line 41
    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/Utils;->setCurrentUserId(I)V

    .line 42
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate() called. UserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->initManager()V

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    return-void
.end method

.method public static clearInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->sInstance:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;
    .locals 2

    const-class v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->sInstance:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    invoke-direct {v1, p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->sInstance:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    .line 51
    :cond_0
    sget-object p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->sInstance:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public applyLocales(Landroid/os/LocaleList;ILcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V
    .locals 3

    .line 60
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyLocales() called with: localeList = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], userId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], observer = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->cancelQuit()V

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->localeChanged(Landroid/os/LocaleList;ILcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V

    return-void
.end method

.method public applyLocalesForPackage(Ljava/lang/String;IILcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)Z
    .locals 3

    .line 72
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyLocalesForPackage() called with: packageName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], token = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], observer = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->cancelQuit()V

    .line 80
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->packageInstalled(Ljava/lang/String;IILcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V

    const/4 p0, 0x1

    return p0
.end method

.method public applyPerAppLocale(Landroid/os/LocaleList;Ljava/lang/String;I)V
    .locals 3

    .line 86
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyPerAppLocale() called with: localeList = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], packageName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], userId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->localeChangedPerApp(Landroid/os/LocaleList;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final cancelQuit()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public checkSanityOfOverlays(I)V
    .locals 3

    .line 110
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSanityOfOverlays() called with: userId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pending_action"

    const-string v2, "com.samsung.android.localeoverlaymanager.action.JOB_SCHEDULED"

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    return-void
.end method

.method public cleanUpOverlays()V
    .locals 3

    .line 102
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanUpOverlays() called: mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->init(ZZ)V

    :cond_0
    return-void
.end method

.method public doDestroy()V
    .locals 2

    .line 178
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "doDestroy "

    invoke-static {v0, v1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->quit()Z

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    :cond_1
    return-void
.end method

.method public final init(ZZ)V
    .locals 3

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pending_action"

    const-string v2, "init_on_boot"

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "safeMode"

    .line 124
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "startCleanUpOverlay"

    .line 125
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    new-instance p2, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    return-void
.end method

.method public final initManager()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    const-string v0, "initManager thread not getting created"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_0
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "initManager thread creation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    const-string v1, "ResourceOverlayService"

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;-><init>(Ljava/lang/String;Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 169
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public initializeOverlays(Z)V
    .locals 3

    .line 94
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initilizeOverlays() called with: safeMode = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->init(ZZ)V

    :cond_0
    return-void
.end method

.method public declared-synchronized localeChanged(Landroid/os/LocaleList;ILcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V
    .locals 6

    monitor-enter p0

    .line 198
    :try_start_0
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localeChanged localeList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 201
    :goto_0
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 202
    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 204
    sget-object v3, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localeChanged: trying to get ISO_639_1 mapping for locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v3, Lcom/samsung/android/localeoverlaymanager/OverlayConstants;->ISO_639_2_TO_639_1_MAPPING:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    if-eqz v2, :cond_1

    .line 208
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_2
    sget-object p1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentLocales list from config - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pending_action"

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 213
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "config_locale_list"

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v0, "userId"

    .line 215
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized localeChangedPerApp(Landroid/os/LocaleList;Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    .line 226
    :try_start_0
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APK_OPTIMIZATION localeChangedPerApp localeList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/Utils;->getLocalesListAsSet(Landroid/os/LocaleList;)Ljava/util/Set;

    move-result-object p1

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APK_OPTIMIZATION CurrentLocales list from config - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pending_action"

    const-string v2, "com.samsung.android.localeoverlaymanager.action.MSG_HANDLE_PER_APP_LOCALE"

    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "perAppPackageName"

    .line 233
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "config_locale_list"

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo p1, "userId"

    .line 236
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    new-instance p2, Landroid/util/Pair;

    const/4 p3, 0x0

    invoke-direct {p2, v0, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final packageInstalled(Ljava/lang/String;IILcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V
    .locals 3

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pending_action"

    const-string v2, "com.samsung.android.localeoverlaymanager.action.PACKAGE_ADDED"

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "added_package"

    .line 133
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "token"

    .line 134
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "userId"

    .line 135
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, v0, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    return-void
.end method

.method public declared-synchronized requestPendingActions()V
    .locals 6

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestPendingActions() called - No pending actions!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 249
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->cancelQuit()V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    const-wide/16 v1, 0x64

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_2

    .line 259
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestPendingAction delayed, handler -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v4}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingActionRunnable:Ljava/lang/Runnable;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v1, v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 264
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 266
    sget-object v3, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestPendingAction sending bundle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 268
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    .line 270
    iput-boolean v4, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    const/4 v5, 0x0

    .line 271
    invoke-static {v5, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 272
    iget-object v4, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    invoke-virtual {v4, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->setObserver(Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingActionRunnable:Ljava/lang/Runnable;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v1, v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    :cond_5
    monitor-exit p0

    return-void

    .line 252
    :cond_6
    :goto_0
    :try_start_3
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "requestPendingAction delayed: Manager not alive"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->initManager()V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingActionRunnable:Ljava/lang/Runnable;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v1, v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRequestInProgress(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    return-void
.end method

.method public waitAndQuit()V
    .locals 4

    .line 287
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waitAndQuit called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    .line 292
    monitor-exit p0

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->isCleanupInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 300
    :cond_1
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->clearInstance()V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->doDestroy()V

    .line 306
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
