.class public Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;
.super Ljava/lang/Object;
.source "BluetoothPowerCalculator.java"


# instance fields
.field public durationMs:J

.field public keys:[Landroid/os/BatteryConsumer$Key;

.field public powerMah:D

.field public powerPerKeyMah:[D

.field public totalDurationMs:J

.field public totalPowerMah:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;-><init>()V

    return-void
.end method
