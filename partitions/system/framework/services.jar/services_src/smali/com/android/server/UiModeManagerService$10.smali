.class public Lcom/android/server/UiModeManagerService$10;
.super Landroid/database/ContentObserver;
.source "UiModeManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public static synthetic $r8$lambda$ky2y781VIpRH_fVQcymqBCTTA_E(FLandroid/app/IUiModeManagerCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService$10;->lambda$onChange$0(FLandroid/app/IUiModeManagerCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$onChange$0(FLandroid/app/IUiModeManagerCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Landroid/app/IUiModeManagerCallback;->notifyContrastChanged(F)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mupdateContrastLocked(Lcom/android/server/UiModeManagerService;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mgetContrastLocked(Lcom/android/server/UiModeManagerService;)F

    move-result p2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmUiModeManagerCallbacks(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result p0

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/UiModeManagerService$10$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/UiModeManagerService$10$$ExternalSyntheticLambda0;-><init>(F)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
