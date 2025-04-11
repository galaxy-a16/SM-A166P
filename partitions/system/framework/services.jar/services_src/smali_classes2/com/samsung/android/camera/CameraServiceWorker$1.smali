.class public Lcom/samsung/android/camera/CameraServiceWorker$1;
.super Ljava/lang/Object;
.source "CameraServiceWorker.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(III)V
    .locals 6

    const-string p2, "CameraService_worker"

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmFoldStateLatch(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    :try_start_0
    const-string/jumbo p1, "mFoldStateLatch E"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmFoldStateLatch(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "mDisplayStateListener onStart - can\'t wait for close camera is done for 500 millisec"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmDeviceState(Lcom/samsung/android/camera/CameraServiceWorker;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_0

    const-string/jumbo p1, "mDisplayStateListener onStart - but device state does not changed yet. wait 500ms more"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmFoldStateLatch(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0, v0, v1, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    :cond_0
    const-string/jumbo p0, "mFoldStateLatch X"

    invoke-static {p2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "mDisplayStateListener onStart - getting interrupt during wait for close camera is done"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
