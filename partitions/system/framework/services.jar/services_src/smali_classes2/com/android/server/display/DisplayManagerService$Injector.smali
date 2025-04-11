.class Lcom/android/server/display/DisplayManagerService$Injector;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultDisplayDelayTimeout()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public getHdrOutputConversionSupport()Z
    .locals 0

    .line 4324
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputConversionSupport()Z

    move-result p0

    return p0
.end method

.method public getHdrOutputTypesWithLatency()[I
    .locals 0

    .line 4320
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputTypesWithLatency()[I

    move-result-object p0

    return-object p0
.end method

.method public getLocalDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)Lcom/android/server/display/LocalDisplayAdapter;
    .locals 0

    .line 4302
    new-instance p0, Lcom/android/server/display/LocalDisplayAdapter;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    return-object p0
.end method

.method public getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .locals 0

    const-string/jumbo p0, "media_projection"

    .line 4328
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 4329
    invoke-static {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedHdrOutputTypes()[I
    .locals 0

    .line 4316
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getSupportedHdrOutputTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public getVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)Lcom/android/server/display/VirtualDisplayAdapter;
    .locals 0

    .line 4297
    new-instance p0, Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    return-object p0
.end method

.method public setHdrConversionMode(II[I)I
    .locals 0

    .line 4311
    invoke-static {p1, p2, p3}, Lcom/android/server/display/DisplayControl;->setHdrConversionMode(II[I)I

    move-result p0

    return p0
.end method
