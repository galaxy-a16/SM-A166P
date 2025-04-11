.class public Landroid/hardware/health/IHealth$Default;
.super Ljava/lang/Object;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/IHealth;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCapacity()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getChargeCounterUah()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getChargeStatus()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getChargingPolicy()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentAverageMicroamps()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentNowMicroamps()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getEnergyCounterNwh()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHealthInfo()Landroid/hardware/health/HealthInfo;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public update()V
    .locals 0

    .line 0
    return-void
.end method
