.class public Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;
.super Ljava/lang/Object;
.source "LowPowerStandbyController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableCustomPolicy()Z
    .locals 2

    const-string p0, "enable_policy"

    const/4 v0, 0x0

    const-string v1, "low_power_standby"

    .line 1372
    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public enableStandbyPorts()Z
    .locals 2

    const-string p0, "enable_standby_ports"

    const/4 v0, 0x0

    const-string v1, "low_power_standby"

    .line 1380
    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public registerPropertyUpdateListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 0

    const-string p0, "low_power_standby"

    .line 1389
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
