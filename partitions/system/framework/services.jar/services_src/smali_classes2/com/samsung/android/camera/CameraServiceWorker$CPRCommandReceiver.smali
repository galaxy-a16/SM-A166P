.class public Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraServiceWorker.java"


# instance fields
.field public ACTION_RESET_CAMERAPROVIDER:Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "com.samsung.cmh.action.cameraprovider"

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;->ACTION_RESET_CAMERAPROVIDER:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;->ACTION_RESET_CAMERAPROVIDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;->ACTION_RESET_CAMERAPROVIDER:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION***"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraService_worker"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const-wide p1, 0x400000000L

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(J)Landroid/util/Pair;

    :cond_0
    return-void
.end method
