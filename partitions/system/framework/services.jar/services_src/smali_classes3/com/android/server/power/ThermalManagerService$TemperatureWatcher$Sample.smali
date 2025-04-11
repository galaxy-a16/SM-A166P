.class Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# instance fields
.field public temperature:F

.field public final synthetic this$1:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

.field public time:J


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;JF)V
    .locals 0

    .line 1542
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->this$1:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1543
    iput-wide p2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    .line 1544
    iput p4, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    return-void
.end method
