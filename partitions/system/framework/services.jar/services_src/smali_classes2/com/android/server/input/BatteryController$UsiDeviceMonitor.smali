.class public Lcom/android/server/input/BatteryController$UsiDeviceMonitor;
.super Lcom/android/server/input/BatteryController$DeviceMonitor;
.source "BatteryController.java"


# instance fields
.field public mValidityTimeoutCallback:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public static synthetic $r8$lambda$QbMZckE1d3PkucTGZ9bkMEpto-U(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->lambda$markUsiBatteryValid$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UwULtvqCEa65GDAED1OeKN7yQyU(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;)Lcom/android/server/input/BatteryController$State;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->lambda$getBatteryStateForReporting$4()Lcom/android/server/input/BatteryController$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WoyraP3JNKw32LAtz2-fgza4MgA(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->lambda$onTimeout$2(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gG9wTS2N-K8MD_pwrlLixjoYmPk(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->lambda$onStylusGestureStarted$1(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rh1RenveBp1uLhqTrIc4C__4KNI(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->lambda$onUEvent$0(Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/BatteryController;I)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    .line 807
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;-><init>(Lcom/android/server/input/BatteryController;I)V

    return-void
.end method

.method private synthetic lambda$getBatteryStateForReporting$4()Lcom/android/server/input/BatteryController$State;
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 879
    new-instance v0, Lcom/android/server/input/BatteryController$State;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$State;-><init>(Landroid/hardware/input/IInputDeviceBatteryState;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/input/BatteryController$State;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    iget p0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$State;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method private synthetic lambda$markUsiBatteryValid$3(I)V
    .locals 0

    .line 861
    iget-object p0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {p0, p1}, Lcom/android/server/input/BatteryController;->-$$Nest$mhandleMonitorTimeout(Lcom/android/server/input/BatteryController;I)V

    return-void
.end method

.method private synthetic lambda$onStylusGestureStarted$1(Ljava/lang/Long;)V
    .locals 1

    .line 826
    iget-object p1, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 827
    iget-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    iget p1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    return-void

    .line 835
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->markUsiBatteryValid()V

    return-void
.end method

.method private synthetic lambda$onTimeout$2(Ljava/lang/Long;)V
    .locals 0

    .line 841
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->markUsiBatteryInvalid()V

    return-void
.end method

.method private synthetic lambda$onUEvent$0(Ljava/lang/Long;)V
    .locals 2

    .line 818
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/BatteryController$DeviceMonitor;->updateBatteryStateFromNative(J)V

    .line 819
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->markUsiBatteryValid()V

    return-void
.end method


# virtual methods
.method public getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;
    .locals 2

    .line 877
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->resolveBluetoothBatteryState()Lcom/android/server/input/BatteryController$State;

    move-result-object v0

    new-instance v1, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;)V

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/BatteryController$State;

    return-object p0
.end method

.method public isPersistent()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final markUsiBatteryInvalid()V
    .locals 2

    .line 867
    iget-object v0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v0}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmHandler(Lcom/android/server/input/BatteryController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 871
    iput-object v0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public final markUsiBatteryValid()V
    .locals 3

    .line 856
    iget-object v0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v0}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmHandler(Lcom/android/server/input/BatteryController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    iget v0, v0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 860
    new-instance v1, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;I)V

    iput-object v1, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Ljava/lang/Runnable;

    .line 863
    :goto_0
    iget-object v0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v0}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmHandler(Lcom/android/server/input/BatteryController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Ljava/lang/Runnable;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConfiguration(J)V
    .locals 0

    .line 846
    invoke-super {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onConfiguration(J)V

    .line 848
    iget-boolean p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    if-eqz p0, :cond_0

    return-void

    .line 849
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "UsiDeviceMonitor: USI devices are always expected to report a valid battery, but no battery was detected!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onPoll(J)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStylusGestureStarted(J)V
    .locals 1

    .line 825
    new-instance v0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public onTimeout(J)V
    .locals 1

    .line 841
    new-instance v0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public onUEvent(J)V
    .locals 1

    .line 817
    new-instance v0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public requiresPolling()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", UsiStateIsValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
