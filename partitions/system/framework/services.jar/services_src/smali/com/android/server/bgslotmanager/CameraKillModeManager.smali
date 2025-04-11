.class public Lcom/android/server/bgslotmanager/CameraKillModeManager;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "CameraKillModeManager.java"


# static fields
.field public static CAMERA_DHA_VER:I


# instance fields
.field public dha_camera_map:Ljava/util/LinkedHashMap;

.field public dha_cameraclientexcept_map:Ljava/util/HashMap;

.field public isOriginBG:Z

.field public isUsingCamera:Z

.field public mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

.field public mCamKillStartTime:I

.field public mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

.field public mMinFreeMax:F

.field public mSzDHAThresholdRate:F


# direct methods
.method public static bridge synthetic -$$Nest$fgetisOriginBG(Lcom/android/server/bgslotmanager/CameraKillModeManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isOriginBG:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBGSlotManager(Lcom/android/server/bgslotmanager/CameraKillModeManager;)Lcom/android/server/bgslotmanager/BGSlotManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/bgslotmanager/CameraKillModeManager;)Lcom/android/server/am/DynamicHiddenApp;
    .locals 0

    iget-object p0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInfo(Lcom/android/server/bgslotmanager/CameraKillModeManager;)Lcom/android/server/bgslotmanager/MemInfoGetter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMinFreeMax(Lcom/android/server/bgslotmanager/CameraKillModeManager;)F
    .locals 0

    iget p0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mMinFreeMax:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSzDHAThresholdRate(Lcom/android/server/bgslotmanager/CameraKillModeManager;)F
    .locals 0

    iget p0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mSzDHAThresholdRate:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputisOriginBG(Lcom/android/server/bgslotmanager/CameraKillModeManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isOriginBG:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisUsingCamera(Lcom/android/server/bgslotmanager/CameraKillModeManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isUsingCamera:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "cam_dha_ver"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isUsingCamera:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isOriginBG:Z

    const-string v0, "cam_kill_start_tm"

    const-string v1, "120000"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCamKillStartTime:I

    const-string v0, "dha_th_rate"

    const-string v1, "2.0"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mSzDHAThresholdRate:F

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_cameraclientexcept_map:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    new-instance v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    invoke-direct {v0, p0}, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;-><init>(Lcom/android/server/bgslotmanager/CameraKillModeManager;)V

    iput-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/bgslotmanager/CameraKillModeManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/bgslotmanager/CameraKillModeManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/bgslotmanager/CameraKillModeManager;
    .locals 1

    sget-object v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;->INSTANCE:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    return-object v0
.end method


# virtual methods
.method public addCamListIfIsCameraProcess(Ljava/lang/String;I)V
    .locals 2

    sget v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public doLmkdCameraKillMode(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_cameraclientexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "vendor."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "client."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->setState(IZ)V

    iget-object p0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->runLmkdCameraKillMode(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public doReduceBackgroundCached(ILjava/lang/String;)V
    .locals 1

    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->setState(IZ)V

    iget-object p0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->runReduceBackgroundCached()V

    return-void
.end method

.method public initCameraKillModeManager(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/DynamicHiddenApp;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;->isinitClass:Z

    if-nez v0, :cond_4

    iput-object p3, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {p3}, Lcom/android/server/am/DynamicHiddenApp;->getMemInfoGetterInstance()Lcom/android/server/bgslotmanager/MemInfoGetter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    invoke-virtual {p3}, Lcom/android/server/am/DynamicHiddenApp;->getBGSlotManagerInstance()Lcom/android/server/bgslotmanager/BGSlotManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    sget v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    if-lez v0, :cond_0

    const/16 v0, 0x3e7

    invoke-virtual {p3, v0}, Lcom/android/server/am/DynamicHiddenApp;->getMemLevel(I)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mMinFreeMax:F

    :cond_0
    sget v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/16 v0, 0x63

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v2}, Lcom/android/server/am/DynamicHiddenApp;->setLmkdCameraKillBoost(III)V

    :goto_0
    sget-object p3, Lcom/android/server/am/BGProtectManager;->LMKD_CAM_CLIENT_EXCEPT_ARRAY:[Ljava/lang/String;

    array-length v0, p3

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_cameraclientexcept_map:Ljava/util/HashMap;

    aget-object p3, p3, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    const-string v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p3, "camera"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraManager;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    iget-object p1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    :cond_3
    sput-boolean v1, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;->isinitClass:Z

    :cond_4
    return-void
.end method

.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    sget v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera Callback on DHA [id] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [faceing] "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " [newState] "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " [clientName] "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DynamicHiddenApp_CameraKillModeManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/32 p1, 0x927c0

    cmp-long p1, v0, p1

    if-ltz p1, :cond_3

    sget p1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p3, p4}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->doReduceBackgroundCached(ILjava/lang/String;)V

    :cond_3
    iget p1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCamKillStartTime:I

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_4

    sget p1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    invoke-virtual {p0, p3, p4}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->doLmkdCameraKillMode(ILjava/lang/String;)V

    :cond_4
    return-void
.end method
