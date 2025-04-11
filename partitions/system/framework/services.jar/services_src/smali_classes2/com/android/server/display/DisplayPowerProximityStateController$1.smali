.class public Lcom/android/server/display/DisplayPowerProximityStateController$1;
.super Ljava/lang/Object;
.source "DisplayPowerProximityStateController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerProximityStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerProximityStateController;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

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
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->-$$Nest$fgetmProximitySensorEnabled(Lcom/android/server/display/DisplayPowerProximityStateController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->-$$Nest$fgetmClock(Lcom/android/server/display/DisplayPowerProximityStateController;)Lcom/android/server/display/DisplayPowerProximityStateController$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/DisplayPowerProximityStateController$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 92
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerProximityStateController;->-$$Nest$fgetmProximityThreshold(Lcom/android/server/display/DisplayPowerProximityStateController;)F

    move-result v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_0

    const/4 v2, 0x1

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerProximityStateController;->-$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerProximityStateController;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] onSensorChanged: proximity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->-$$Nest$mhandleProximitySensorEvent(Lcom/android/server/display/DisplayPowerProximityStateController;JZ)V

    :cond_1
    return-void
.end method
