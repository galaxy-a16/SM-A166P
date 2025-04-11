.class public Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "MultiWindowEnableController.java"


# instance fields
.field public final mExitAnimatingTasks:Ljava/util/List;

.field public final mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/server/wm/TransitionController;)V
    .locals 1

    .line 729
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    .line 726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mExitAnimatingTasks:Ljava/util/List;

    .line 730
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 731
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mTransitionController:Lcom/android/server/wm/TransitionController;

    return-void
.end method


# virtual methods
.method public final handleExitAnimatingTasks(Ljava/lang/String;)V
    .locals 5

    .line 750
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mExitAnimatingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    .line 751
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 752
    invoke-static {}, Lcom/android/server/wm/MultiWindowEnableController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleExitAnimatingTasks: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 754
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mExitAnimatingTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 755
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TransitionController;->unregisterLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    return-void
.end method

.method public onAppTransitionCancelledLocked(Z)V
    .locals 0

    const-string p1, "Cancelled"

    .line 741
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->handleExitAnimatingTasks(Ljava/lang/String;)V

    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "Finished"

    .line 736
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->handleExitAnimatingTasks(Ljava/lang/String;)V

    return-void
.end method

.method public onAppTransitionTimeoutLocked()V
    .locals 1

    const-string v0, "Timeout"

    .line 746
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->handleExitAnimatingTasks(Ljava/lang/String;)V

    return-void
.end method
