.class public abstract Lcom/android/server/wm/PackagesChangeAsTask;
.super Lcom/android/server/wm/PackagesChange;
.source "PackagesChange.java"


# instance fields
.field public mUpdateValueToTaskImmediately:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$8PXUGzSPuXRS_B9RDA7KiYqHOZk(Lcom/android/server/wm/PackagesChangeAsTask;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/PackagesChangeAsTask;->updateValueToTaskImmediately()V

    return-void
.end method

.method public static synthetic $r8$lambda$IyJObiVuDrdR4ZvTTDs6YHEoMC4(Lcom/android/server/wm/PackagesChangeAsTask;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChangeAsTask;->lambda$updateValueToTaskImmediately$0(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 262
    new-instance p1, Lcom/android/server/wm/PackagesChangeAsTask$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/PackagesChangeAsTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/PackagesChangeAsTask;)V

    iput-object p1, p0, Lcom/android/server/wm/PackagesChangeAsTask;->mUpdateValueToTaskImmediately:Ljava/lang/Runnable;

    .line 266
    invoke-static {p0}, Lcom/android/server/wm/PackagesChange;->addPackagesChangeAsTask(Lcom/android/server/wm/PackagesChangeAsTask;)V

    return-void
.end method

.method private synthetic lambda$updateValueToTaskImmediately$0(Lcom/android/server/wm/Task;)V
    .locals 1

    const/4 v0, 0x1

    .line 281
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/PackagesChangeAsTask;->updateValueToTask(Lcom/android/server/wm/Task;Z)V

    return-void
.end method


# virtual methods
.method public abstract onDumpInTask(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/Task;)V
.end method

.method public abstract onUpdateValueToTask(Lcom/android/server/wm/Task;Ljava/lang/String;Z)V
.end method

.method public final updateValueToTask(Lcom/android/server/wm/Task;Z)V
    .locals 1

    .line 288
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 289
    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/PackagesChangeAsTask;->onUpdateValueToTask(Lcom/android/server/wm/Task;Ljava/lang/String;Z)V

    return-void
.end method

.method public final updateValueToTask(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/server/wm/PackagesChangeAsTask;->updateValueToTaskImmediately()V

    return-void

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v0, p0, Lcom/android/server/wm/PackagesChangeAsTask;->mUpdateValueToTaskImmediately:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object p1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/PackagesChangeAsTask;->mUpdateValueToTaskImmediately:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateValueToTaskImmediately()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/PackagesChangeAsTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/PackagesChangeAsTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PackagesChangeAsTask;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 283
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
