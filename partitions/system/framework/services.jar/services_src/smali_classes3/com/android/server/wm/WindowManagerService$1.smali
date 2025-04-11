.class public Lcom/android/server/wm/WindowManagerService$1;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "WindowManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$VI2yfcdMpOsJLvA9s8a-0jUmWmc(ZLcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/WindowManagerService$1;->lambda$onVrStateChanged$0(ZLcom/android/server/wm/DisplayPolicy;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onVrStateChanged$0(ZLcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    .line 537
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayPolicy;->onVrStateChangedLw(Z)V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 536
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    .line 537
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/wm/WindowManagerService$1$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 538
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
