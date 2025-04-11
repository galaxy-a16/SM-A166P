.class public final Lcom/android/server/app/GameTaskInfoProvider;
.super Ljava/lang/Object;
.source "GameTaskInfoProvider.java"


# instance fields
.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public final mGameClassifier:Lcom/android/server/app/GameClassifier;

.field public final mGameTaskInfoCache:Landroid/util/LruCache;

.field public final mLock:Ljava/lang/Object;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/app/IActivityTaskManager;Lcom/android/server/app/GameClassifier;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    .line 52
    iput-object p1, p0, Lcom/android/server/app/GameTaskInfoProvider;->mUserHandle:Landroid/os/UserHandle;

    .line 53
    iput-object p2, p0, Lcom/android/server/app/GameTaskInfoProvider;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 54
    iput-object p3, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameClassifier:Lcom/android/server/app/GameClassifier;

    return-void
.end method


# virtual methods
.method public final generateGameInfo(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;
    .locals 4

    .line 115
    new-instance v0, Lcom/android/server/app/GameTaskInfo;

    iget-object v1, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameClassifier:Lcom/android/server/app/GameClassifier;

    .line 116
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/app/GameTaskInfoProvider;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v1, v2, v3}, Lcom/android/server/app/GameClassifier;->isGame(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/app/GameTaskInfo;-><init>(IZLandroid/content/ComponentName;)V

    .line 118
    iget-object p2, p0, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    monitor-exit p2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public get(I)Lcom/android/server/app/GameTaskInfo;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameTaskInfo;

    if-eqz v1, :cond_0

    .line 62
    monitor-exit v0

    return-object v1

    .line 64
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/app/GameTaskInfoProvider;->generateGameInfo(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 64
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public get(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameTaskInfo;

    if-eqz v1, :cond_1

    .line 78
    iget-object v2, v1, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GameTaskInfoProvider"

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found cached task info for taskId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but cached component name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not match "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_0
    monitor-exit v0

    return-object v1

    .line 86
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameTaskInfoProvider;->generateGameInfo(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 86
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    const/4 v0, 0x0

    .line 95
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const v1, 0x7fffffff

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {p0, v1, v3, v3, v2}, Landroid/app/IActivityTaskManager;->getTasks(IZZI)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 106
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    return-object v0

    :catch_0
    const-string p0, "GameTaskInfoProvider"

    const-string p1, "Failed to fetch running tasks"

    .line 101
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
