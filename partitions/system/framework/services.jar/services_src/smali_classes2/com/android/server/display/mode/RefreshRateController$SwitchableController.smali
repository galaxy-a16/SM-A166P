.class public Lcom/android/server/display/mode/RefreshRateController$SwitchableController;
.super Lcom/android/server/display/mode/RefreshRateController;
.source "RefreshRateController.java"


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    .line 603
    invoke-direct {p0, p1, v0}, Lcom/android/server/display/mode/RefreshRateController;-><init>(Landroid/os/IBinder;Lcom/android/server/display/mode/RefreshRateController-IA;)V

    return-void
.end method


# virtual methods
.method public getControllerType()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "SwitchableController"

    return-object p0
.end method

.method public getSwitchingType()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBrightnessChangedLocked(Z)V
    .locals 0

    .line 0
    return-void
.end method
