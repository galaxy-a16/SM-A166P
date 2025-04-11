.class public final Lcom/android/server/wm/ChangeTransitionController$H;
.super Landroid/os/Handler;
.source "ChangeTransitionController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ChangeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ChangeTransitionController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    invoke-static {p1}, Lcom/android/server/wm/ChangeTransitionController;->-$$Nest$fgetmGlobalLock(Lcom/android/server/wm/ChangeTransitionController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object p1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_0
    const-string v0, "ChangeTransitionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYNC_ACTIVITY_TIMEOUT!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    invoke-static {v2}, Lcom/android/server/wm/ChangeTransitionController;->-$$Nest$fgetmSyncDeferredAllDrawnApps(Lcom/android/server/wm/ChangeTransitionController;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    invoke-static {v0}, Lcom/android/server/wm/ChangeTransitionController;->-$$Nest$fgetmSyncDeferredAllDrawnApps(Lcom/android/server/wm/ChangeTransitionController;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    invoke-static {p0}, Lcom/android/server/wm/ChangeTransitionController;->-$$Nest$fgetmWm(Lcom/android/server/wm/ChangeTransitionController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
