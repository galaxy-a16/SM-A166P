.class public Lvendor/samsung/hardware/light/ISehLights$Default;
.super Ljava/lang/Object;
.source "ISehLights.java"

# interfaces
.implements Lvendor/samsung/hardware/light/ISehLights;


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

.method public getLights()[Lvendor/samsung/hardware/light/SehHwLight;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setLightState(ILandroid/hardware/light/HwLightState;I)V
    .locals 0

    .line 0
    return-void
.end method
