.class public Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;
.super Ljava/lang/Object;
.source "EyeComfortSolutionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

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

    .line 862
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 863
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 864
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    float-to-int p1, p1

    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetbopr_cumulative_value_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v3

    add-int/2addr p1, v3

    invoke-static {v2, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fputbopr_cumulative_value_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V

    .line 865
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetbopr_cumulative_count_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fputbopr_cumulative_count_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V

    .line 866
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetbopr_cumulative_value_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetbopr_cumulative_count_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {p1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fputbopr_average_value_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V

    goto :goto_0

    .line 868
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 869
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    float-to-int p1, p1

    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetbopr_cumulative_value_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v3

    add-int/2addr p1, v3

    invoke-static {v2, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fputbopr_cumulative_value_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V

    .line 870
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetbopr_cumulative_count_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fputbopr_cumulative_count_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V

    .line 871
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetbopr_cumulative_value_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetbopr_cumulative_count_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {p1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fputbopr_average_value_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V

    .line 873
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBoprSensorForBigDataListener(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 874
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 875
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result p0

    int-to-long v3, p0

    add-long/2addr v0, v3

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method
