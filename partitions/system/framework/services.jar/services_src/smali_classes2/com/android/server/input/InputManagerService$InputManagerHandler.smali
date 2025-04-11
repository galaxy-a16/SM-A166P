.class public final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "InputManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .locals 1

    .line 4045
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 4046
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 4051
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v3, 0x3

    const/16 v4, 0x20

    const-wide v5, 0xffffffffL

    if-eq v0, v3, :cond_8

    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 4113
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x0

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 4115
    :goto_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmSensorManager(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorManager;

    move-result-object v3

    const-string v4, "InputManager"

    if-nez v3, :cond_1

    const-string/jumbo p0, "mSensorManager is null."

    .line 4116
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4119
    :cond_1
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingAngleSensor(Lcom/android/server/input/InputManagerService;)Landroid/hardware/Sensor;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo p0, "mFoldingAngleSensor is null."

    .line 4120
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    if-eqz p1, :cond_4

    .line 4124
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingAngleRegistered(Lcom/android/server/input/InputManagerService;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4125
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmSensorManager(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingAngleListener(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingAngleSensor(Lcom/android/server/input/InputManagerService;)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v5}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$InputManagerHandler;

    move-result-object v5

    invoke-virtual {p1, v0, v3, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 4127
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fputmFoldingAngleRegistered(Lcom/android/server/input/InputManagerService;Z)V

    const-string/jumbo p0, "register mFoldingAngleListener"

    .line 4128
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    const-string p0, "already registered mFoldingAngleListener"

    .line 4130
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4133
    :cond_4
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingAngleRegistered(Lcom/android/server/input/InputManagerService;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4134
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmSensorManager(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingAngleListener(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingAngleSensor(Lcom/android/server/input/InputManagerService;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 4136
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fputmFoldingAngleRegistered(Lcom/android/server/input/InputManagerService;Z)V

    const-string/jumbo p0, "unregister mFoldingAngleListener"

    .line 4137
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    const-string p0, "already unregistered mFoldingAngleListener"

    .line 4139
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4102
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 4103
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 4104
    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 4105
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 4106
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 4107
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mdeliverSwitchEventChanged(Lcom/android/server/input/InputManagerService;IIII)V

    goto/16 :goto_2

    .line 4091
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 4092
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v0, v0

    and-long/2addr v0, v5

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v2, v2

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 4094
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 4095
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 4096
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mwakeUp(Lcom/android/server/input/InputManagerService;JILjava/lang/String;)V

    goto :goto_2

    .line 4068
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4069
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 4070
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mdeliverMultiFingerGesture(Lcom/android/server/input/InputManagerService;II)V

    goto :goto_2

    .line 4075
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4076
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Landroid/view/PointerIcon;

    if-eqz v1, :cond_6

    check-cast p1, Landroid/view/PointerIcon;

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 4077
    :goto_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mdeliverPointerIconChanged(Lcom/android/server/input/InputManagerService;ILandroid/view/PointerIcon;)V

    goto :goto_2

    .line 4060
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 4061
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v0, v0

    and-long/2addr v0, v5

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v2, v2

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 4062
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 4063
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mdeliverLidStateChanged(Lcom/android/server/input/InputManagerService;JZ)V

    goto :goto_2

    .line 4087
    :cond_7
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mhandlePointerDisplayIdChanged(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;)V

    goto :goto_2

    .line 4081
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 4082
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v0, v0

    and-long/2addr v0, v5

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v2, v2

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 4083
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 4084
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mdeliverTabletModeChanged(Lcom/android/server/input/InputManagerService;JZ)V

    goto :goto_2

    .line 4056
    :cond_9
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$mreloadDeviceAliases(Lcom/android/server/input/InputManagerService;)V

    goto :goto_2

    .line 4053
    :cond_a
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/view/InputDevice;

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mdeliverInputDevicesChanged(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
