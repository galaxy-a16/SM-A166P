.class public Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;
.super Ljava/lang/Object;
.source "DeviceStateManagerService.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    .line 1443
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    return-void
.end method


# virtual methods
.method public onAwakeStateChanged(Z)V
    .locals 1

    .line 1454
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    .line 1466
    :try_start_0
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mshouldCancelOverrideRequestWhenRequesterNotOnTop(Lcom/android/server/devicestate/DeviceStateManagerService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1467
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmOverrideRequestController(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/OverrideRequestController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmActiveOverride(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {p1, p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 1469
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onKeyguardStateChanged(Z)V
    .locals 1

    .line 1474
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 1475
    :try_start_0
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mshouldCancelOverrideRequestWhenRequesterNotOnTop(Lcom/android/server/devicestate/DeviceStateManagerService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1476
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmOverrideRequestController(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/OverrideRequestController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmActiveOverride(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {p1, p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 1478
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
