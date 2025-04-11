.class public Lcom/samsung/android/camera/CameraServiceWorker$2;
.super Ljava/lang/Object;
.source "CameraServiceWorker.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v0, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fputmDisplayId(Lcom/samsung/android/camera/CameraServiceWorker;I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmDisplayManager(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/hardware/display/DisplayManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmLock(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "CameraService_worker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayChanged rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " current mDeviceState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v3}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmDeviceState(Lcom/samsung/android/camera/CameraServiceWorker;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmLastDisplayRotation(Lcom/samsung/android/camera/CameraServiceWorker;)I

    move-result v1

    if-eq v1, p1, :cond_2

    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmDeviceState(Lcom/samsung/android/camera/CameraServiceWorker;)J

    move-result-wide v1

    const-wide/16 v3, 0x6

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->isCoverFlexRotateApp()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmDeviceState(Lcom/samsung/android/camera/CameraServiceWorker;)J

    move-result-wide v2

    const-wide v4, 0x800000000L

    or-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChange(J)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmDeviceState(Lcom/samsung/android/camera/CameraServiceWorker;)J

    move-result-wide v2

    const-wide v4, -0x800000001L

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChange(J)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fputmLastDisplayRotation(Lcom/samsung/android/camera/CameraServiceWorker;I)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
