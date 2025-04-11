.class public Lcom/android/server/aod/AODSCoverController$2;
.super Ljava/lang/Object;
.source "AODSCoverController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/aod/AODSCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODSCoverController;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/server/aod/AODSCoverController$2;->this$0:Lcom/android/server/aod/AODSCoverController;

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
    .locals 2

    .line 101
    invoke-static {}, Lcom/android/server/aod/AODSCoverController;->-$$Nest$sfgetLUX_QUE()Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODSCoverController$2;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-static {p0}, Lcom/android/server/aod/AODSCoverController;->-$$Nest$fgetmCoverClosed(Lcom/android/server/aod/AODSCoverController;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 103
    invoke-static {}, Lcom/android/server/aod/AODSCoverController;->-$$Nest$sfgetLUX_QUE()Ljava/util/Queue;

    move-result-object p0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 104
    invoke-static {}, Lcom/android/server/aod/AODSCoverController;->-$$Nest$sfgetLUX_QUE()Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    const/16 p1, 0xf

    if-le p0, p1, :cond_0

    .line 105
    invoke-static {}, Lcom/android/server/aod/AODSCoverController;->-$$Nest$sfgetLUX_QUE()Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 108
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
