.class public Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;
.super Ljava/lang/Object;
.source "ApkExtractionManager.java"


# static fields
.field public static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field public static final NUMBER_OF_CORES:I

.field public static final TAG:Ljava/lang/String; = "ApkExtractionManager"

.field public static final sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;


# instance fields
.field public mCallback:Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;

.field public mContextRef:Ljava/lang/ref/WeakReference;

.field public mExtractedLocales:Ljava/util/Set;

.field public mForceEnable:Z

.field public mLocalesToAdd:Ljava/util/Set;

.field public mShouldReplace:Z

.field public mTargetPackages:Ljava/util/List;

.field public final mTasks:Ljava/util/Queue;

.field public final mTasksWorkQueue:Ljava/util/concurrent/BlockingQueue;

.field public final mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->NUMBER_OF_CORES:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    invoke-direct {v0}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;-><init>()V

    sput-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mExtractedLocales:Ljava/util/Set;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasksWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasks:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->NUMBER_OF_CORES:I

    const-wide/16 v4, 0x1

    sget-object v6, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    return-object v0
.end method


# virtual methods
.method public cancelCurrent()V
    .locals 4

    sget-object p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasksWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    new-array v1, v0, [Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasksWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-enter p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->getApkExtractionTask()Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1
.end method

.method public extractLocaleApks(Ljava/util/Set;Ljava/util/Set;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->extractLocaleApks(Ljava/util/Set;Ljava/util/Set;Landroid/content/Context;Z)V

    return-void
.end method

.method public extractLocaleApks(Ljava/util/Set;Ljava/util/Set;Landroid/content/Context;Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractLocaleApks() called with: targetPackages = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], context = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling extraction for packages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->cancelCurrent()V

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mContextRef:Ljava/lang/ref/WeakReference;

    iget-object p3, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mExtractedLocales:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    iput-object p2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mLocalesToAdd:Ljava/util/Set;

    iput-boolean p4, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mShouldReplace:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mForceEnable:Z

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->startExtraction(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized handleState(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleState() called with: extractionTask = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], state = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mExtractedLocales:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->getExtractedLocaleApks()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->onFinishTask(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onFinishTask(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mCallback:Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mExtractedLocales:Ljava/util/Set;

    iget-boolean v2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mForceEnable:Z

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;->onExtractionComplete(Ljava/util/Set;Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->recycleTask(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public recycleTask(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasks:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mCallback:Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;

    return-void
.end method

.method public setCallback(Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mCallback:Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;

    return-void
.end method

.method public setForceEnable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mForceEnable:Z

    return-void
.end method

.method public startExtraction(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startExtraction() called with: targetPackage = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    iget-object v2, v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    invoke-direct {v2}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;-><init>()V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mLocalesToAdd:Ljava/util/Set;

    if-eqz v4, :cond_2

    iget-boolean p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mShouldReplace:Z

    invoke-virtual {v2, p1, v4, v3, p0}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->initializeTask(Ljava/lang/String;Ljava/util/Set;Landroid/content/Context;Z)V

    iget-object p0, v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->getRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startExtraction: Context is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localesToAdd is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mLocalesToAdd:Ljava/util/Set;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
