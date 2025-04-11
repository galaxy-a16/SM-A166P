.class public Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;
.super Ljava/lang/Object;
.source "CameraInFgsFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public mCameraUsingList:Ljava/util/Set;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCameraUsingList(Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraUsingList:Ljava/util/Set;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraUsingList:Ljava/util/Set;

    .line 62
    new-instance v0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;
    .locals 1

    .line 27
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$CameraInFgsFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    .line 41
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    :cond_0
    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .locals 0

    .line 47
    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 48
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/server/am/MARsPolicyManager;->isForegroundServicePkg(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->isUsingCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1d

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_0

    const-string v0, "camera"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public isUsingCamera(Ljava/lang/String;)Z
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraUsingList:Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
