.class public Lcom/android/server/input/InputManagerService$11;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .line 5788
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$11;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 5792
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 5794
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$11;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/android/server/input/InputManagerService;->-$$Nest$sfgetmLowHysteresis()[F

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$11;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result v3

    aget v1, v1, v3

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 5796
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$11;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fputmFoldingState(Lcom/android/server/input/InputManagerService;I)V

    move v0, v2

    goto :goto_0

    .line 5799
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$11;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    invoke-static {}, Lcom/android/server/input/InputManagerService;->-$$Nest$sfgetmHighHysteresis()[F

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$11;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result v3

    aget v1, v1, v3

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 5801
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$11;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fputmFoldingState(Lcom/android/server/input/InputManagerService;I)V

    move v0, v2

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 5805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFoldingAngleListener: state changed, angle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", state = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/input/InputManagerService$11;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5807
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$11;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$11;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setFoldingState(I)V

    :cond_2
    return-void
.end method
