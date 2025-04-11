.class public Landroid/hardware/oemlock/IOemLock$Default;
.super Ljava/lang/Object;
.source "IOemLock.java"

# interfaces
.implements Landroid/hardware/oemlock/IOemLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isOemUnlockAllowedByCarrier()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOemUnlockAllowedByDevice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setOemUnlockAllowedByCarrier(Z[B)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setOemUnlockAllowedByDevice(Z)V
    .locals 0

    return-void
.end method
