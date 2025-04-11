.class public Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;
.super Ljava/lang/Object;
.source "DisplayRotationCompatPolicy.java"


# instance fields
.field public final mCameraIdToPackageMap:Ljava/util/Map;

.field public final mPackageToCameraIdMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->mPackageToCameraIdMap:Ljava/util/Map;

    .line 567
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->mCameraIdToPackageMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;-><init>()V

    return-void
.end method


# virtual methods
.method public containsPackageName(Ljava/lang/String;)Z
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->mPackageToCameraIdMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCameraId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 588
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->mPackageToCameraIdMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSummaryForDisplayRotationHistoryRecord()Ljava/lang/String;
    .locals 2

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ mPackageToCameraIdMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->mPackageToCameraIdMap:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->mCameraIdToPackageMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->removePackageName(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->removeCameraId(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->mPackageToCameraIdMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->mCameraIdToPackageMap:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeCameraId(Ljava/lang/String;)V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->mCameraIdToPackageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->mPackageToCameraIdMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 597
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->mCameraIdToPackageMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final removePackageName(Ljava/lang/String;)V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->mPackageToCameraIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->mPackageToCameraIdMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 610
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$CameraIdPackageNameBiMap;->mCameraIdToPackageMap:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
