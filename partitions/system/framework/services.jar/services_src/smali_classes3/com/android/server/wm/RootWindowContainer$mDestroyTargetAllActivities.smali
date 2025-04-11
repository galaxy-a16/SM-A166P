.class public Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public reason:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;

.field public wpcowner:Lcom/android/server/wm/WindowProcessController;


# direct methods
.method public static synthetic $r8$lambda$kX3pZjqIrjdvwnVom_mpjmFoHrM(Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->lambda$run$0(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/RootWindowContainer;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 360
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->wpcowner:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v1, v0, :cond_1

    return-void

    .line 370
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->reason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 359
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 374
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 376
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    .line 373
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 374
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 375
    throw v1

    :catchall_1
    move-exception p0

    .line 376
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setParam(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->wpcowner:Lcom/android/server/wm/WindowProcessController;

    .line 352
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->reason:Ljava/lang/String;

    return-void
.end method
