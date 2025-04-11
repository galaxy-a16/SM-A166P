.class public final Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;
.super Landroid/hardware/devicestate/DeviceStateManagerInternal;
.source "DeviceStateManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public static synthetic $r8$lambda$bhgunFWtQSCYxDXcDuQ1vACpcrA(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mnotifyPolicyIfNeeded(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$LocalService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    return-void
.end method


# virtual methods
.method public displayEnabled()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fputmDisplayEnabled(Lcom/android/server/devicestate/DeviceStateManagerService;Z)V

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mupdatePendingStateLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getSupportedStateIdentifiers()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mgetSupportedStateIdentifiersLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setTableModeEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmDeviceStatePolicy(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/DeviceStatePolicy;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public updateFoldingSensorState(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmDeviceStatePolicy(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/DeviceStatePolicy;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
