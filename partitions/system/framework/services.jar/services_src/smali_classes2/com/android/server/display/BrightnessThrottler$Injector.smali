.class public Lcom/android/server/display/BrightnessThrottler$Injector;
.super Ljava/lang/Object;
.source "BrightnessThrottler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceConfig()Landroid/provider/DeviceConfigInterface;
    .locals 0

    .line 520
    sget-object p0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    return-object p0
.end method

.method public getThermalService()Landroid/os/IThermalService;
    .locals 0

    const-string/jumbo p0, "thermalservice"

    .line 515
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 514
    invoke-static {p0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p0

    return-object p0
.end method
