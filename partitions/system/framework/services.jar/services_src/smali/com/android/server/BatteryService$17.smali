.class public Lcom/android/server/BatteryService$17;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 1780
    iput-object p1, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1783
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1784
    sget-object v0, Lcom/att/iqi/lib/metrics/hw/HW12;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {p0, v0}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1785
    new-instance v0, Lcom/att/iqi/lib/metrics/hw/HW12;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/hw/HW12;-><init>()V

    const/4 v1, 0x0

    .line 1786
    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/hw/HW12;->setCause(B)Lcom/att/iqi/lib/metrics/hw/HW12;

    .line 1787
    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/hw/HW12;->setProcessor(B)Lcom/att/iqi/lib/metrics/hw/HW12;

    .line 1788
    invoke-virtual {p0, v0}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    const-string p0, "eng"

    .line 1789
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "submit HW12"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
