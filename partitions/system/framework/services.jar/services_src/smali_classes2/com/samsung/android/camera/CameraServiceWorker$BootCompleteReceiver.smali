.class public Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraServiceWorker.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .locals 2

    .line 382
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 383
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 384
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 385
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 390
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "ACTION***"

    const-string v1, "CameraService_worker"

    if-eqz p1, :cond_0

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmVtCameraProviderObserver(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->tryRegisterContentObserver()V

    .line 396
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmCameraServiceWorker(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/ICameraServiceWorker$Stub;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/camera/ICameraServiceWorker;->pingForUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 399
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BootCompleteReceiver exception happen "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fputmBootCompleted(Lcom/samsung/android/camera/CameraServiceWorker;Z)V

    goto :goto_1

    :cond_0
    const-string p1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 403
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmScpmReceiver(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/scpm/ScpmReceiver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->tryRegisterSCPMServer()V

    :cond_1
    :goto_1
    return-void
.end method
