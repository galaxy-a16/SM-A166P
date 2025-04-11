.class public Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "RequestInjectorService.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 8

    iget-object p2, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-static {p2}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->-$$Nest$fgetmCameraServiceWorker(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)Lcom/samsung/android/camera/CameraServiceWorker;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/samsung/android/camera/CameraServiceWorker;->isSamsungCameraApp(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "RequestInjectorService"

    if-eqz p2, :cond_0

    const-string p0, "Samsung Camera is opened. ignore VT Camera Setting."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p3, :cond_4

    const/4 p2, 0x1

    if-eq p3, p2, :cond_4

    const/4 v1, 0x2

    if-eq p3, v1, :cond_4

    const/4 v2, 0x3

    const-string v3, "camera_open_id"

    const-string v4, "com.samsung.android.vtcamerasettings"

    const-string v5, "VT Camera Setting does not exist "

    const-string v6, "VT Camera Setting does not exist"

    const/4 v7, 0x0

    if-eq p3, v2, :cond_3

    const/16 v2, 0x64

    if-eq p3, v2, :cond_1

    const/16 p5, 0x65

    if-eq p3, p5, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Non acceptable state "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    :try_start_0
    invoke-static {p4, p5}, Lcom/samsung/android/camera/CameraServiceWorker;->getTaskInfo(Ljava/lang/String;I)Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    move-result-object p3

    if-eqz p3, :cond_2

    iget p3, p3, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    goto :goto_0

    :cond_2
    move p3, v7

    :goto_0
    new-instance p5, Landroid/content/Intent;

    const-string v2, "intentfilter.samsung.vtcamerasetting.cameraobserver"

    invoke-direct {p5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "camera_open_package_name"

    invoke-virtual {p5, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p5, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "display_id"

    invoke-virtual {p5, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p4, "Camera is opening. Start VT Camera Setting. cameraId(%s), displayId(%d)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-static {p4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-static {p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, p5, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {v0, v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance p5, Landroid/content/Intent;

    const-string v2, "intentfilter.samsung.vtcamerasetting.closecamera"

    invoke-direct {p5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "camera_close_package_name"

    invoke-virtual {p5, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p5, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "Camera is closed. cameraId(%s), state(%d)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-static {p4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-static {p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, p5, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {v0, v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
