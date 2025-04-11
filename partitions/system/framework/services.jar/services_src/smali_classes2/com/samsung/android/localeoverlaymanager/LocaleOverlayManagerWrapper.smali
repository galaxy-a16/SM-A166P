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

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    new-instance v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingActionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/Utils;->setCurrentUserId(I)V

    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate() called. UserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->initManager()V

    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    return-void
.end method

.method public static clearInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->sInstance:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;
    .locals 2

    const-class v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->sInstance:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    invoke-direct {v1, p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->sInstance:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

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

    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->cancelQuit()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->localeChanged(Landroid/os/LocaleList;ILcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V

    return-void
.end method

.method public applyLocalesForPackage(Ljava/lang/String;IILcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)Z
    .locals 3

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

    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->cancelQuit()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->packageInstalled(Ljava/lang/String;IILcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V

    const/4 p0, 0x1

    return p0
.end method

.method public applyPerAppLocale(Landroid/os/LocaleList;Ljava/lang/String;I)V
    .locals 3

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->localeChangedPerApp(Landroid/os/LocaleList;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final cancelQuit()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

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

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pending_action"

    const-string v2, "com.samsung.android.localeoverlaymanager.action.JOB_SCHEDULED"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    return-void
.end method

.method public cleanUpOverlays()V
    .locals 3

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

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->init(ZZ)V

    :cond_0
    return-void
.end method

.method public doDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "doDestroy "

    invoke-static {v0, v1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    :cond_1
    return-void
.end method

.method public final init(ZZ)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pending_action"

    const-string v2, "init_on_boot"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "safeMode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "startCleanUpOverlay"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    new-instance p2, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    return-void
.end method

.method public final initManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    const-string v0, "initManager thread not getting created"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "initManager thread creation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    const-string v1, "ResourceOverlayService"

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;-><init>(Ljava/lang/String;Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public initializeOverlays(Z)V
    .locals 3

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

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->init(ZZ)V

    :cond_0
    return-void
.end method

.method public declared-synchronized localeChanged(Landroid/os/LocaleList;ILcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V
    .locals 6

    monitor-enter p0

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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localeChanged: trying to get ISO_639_1 mapping for locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/localeoverlaymanager/OverlayConstants;->ISO_639_2_TO_639_1_MAPPING:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pending_action"

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "config_locale_list"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/Utils;->getLocalesListAsSet(Landroid/os/LocaleList;)Ljava/util/Set;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APK_OPTIMIZATION CurrentLocales list from config - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pending_action"

    const-string v2, "com.samsung.android.localeoverlaymanager.action.MSG_HANDLE_PER_APP_LOCALE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "perAppPackageName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "config_locale_list"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo p1, "userId"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    new-instance p2, Landroid/util/Pair;

    const/4 p3, 0x0

    invoke-direct {p2, v0, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final packageInstalled(Ljava/lang/String;IILcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pending_action"

    const-string v2, "com.samsung.android.localeoverlaymanager.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "added_package"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "token"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "userId"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, v0, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    return-void
.end method

.method public declared-synchronized requestPendingActions()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestPendingActions() called - No pending actions!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->cancelQuit()V

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    const-wide/16 v1, 0x64

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_2

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

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingActionRunnable:Ljava/lang/Runnable;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v1, v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

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

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    const/4 v5, 0x0

    invoke-static {v5, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    invoke-virtual {v4, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->setObserver(Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingActionRunnable:Ljava/lang/Runnable;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v1, v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :goto_0
    :try_start_3
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "requestPendingAction delayed: Manager not alive"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->initManager()V

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingActionRunnable:Ljava/lang/Runnable;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v1, v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRequestInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mRequestInProgress:Z

    return-void
.end method

.method public waitAndQuit()V
    .locals 4

    sget-object v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waitAndQuit called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mPendingRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->requestPendingActions()V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->isCleanupInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->clearInstance()V

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mManager:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mQuitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->doDestroy()V

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
