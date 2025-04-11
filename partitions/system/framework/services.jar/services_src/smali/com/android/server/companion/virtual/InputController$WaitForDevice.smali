.class public Lcom/android/server/companion/virtual/InputController$WaitForDevice;
.super Ljava/lang/Object;
.source "InputController.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

.field public mInputDeviceId:I

.field public final mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field public final synthetic this$0:Lcom/android/server/companion/virtual/InputController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceAddedLatch(Lcom/android/server/companion/virtual/InputController$WaitForDevice;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmInputDeviceId(Lcom/android/server/companion/virtual/InputController$WaitForDevice;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mInputDeviceId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;II)V
    .locals 7

    .line 697
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->this$0:Lcom/android/server/companion/virtual/InputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x2

    .line 695
    iput v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mInputDeviceId:I

    .line 698
    new-instance v0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;-><init>(Lcom/android/server/companion/virtual/InputController$WaitForDevice;Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 725
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$fgetmHandler(Lcom/android/server/companion/virtual/InputController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManagerGlobal;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 754
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method

.method public waitForDeviceCreation()I
    .locals 4

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 744
    iget v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mInputDeviceId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    return v0

    .line 745
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Virtual input device was created with an invalid id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mInputDeviceId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_1
    :try_start_1
    new-instance p0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    const-string v0, "Timed out waiting for virtual device to be created."

    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 741
    new-instance v0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    const-string v1, "Interrupted while waiting for virtual device to be created."

    invoke-direct {v0, v1, p0}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
