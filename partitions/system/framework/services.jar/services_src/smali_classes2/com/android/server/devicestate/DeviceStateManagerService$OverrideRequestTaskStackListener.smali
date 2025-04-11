.class public Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestTaskStackListener;
.super Landroid/app/TaskStackListener;
.source "DeviceStateManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    .line 1426
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestTaskStackListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestTaskStackListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestTaskStackListener;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    return-void
.end method


# virtual methods
.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 1430
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestTaskStackListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1431
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestTaskStackListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mshouldCancelOverrideRequestWhenRequesterNotOnTop(Lcom/android/server/devicestate/DeviceStateManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1432
    monitor-exit p1

    return-void

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestTaskStackListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmActiveOverride(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/OverrideRequest;

    .line 1436
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestTaskStackListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$misTopApp(Lcom/android/server/devicestate/DeviceStateManagerService;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1437
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestTaskStackListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmOverrideRequestController(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/OverrideRequestController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 1439
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
