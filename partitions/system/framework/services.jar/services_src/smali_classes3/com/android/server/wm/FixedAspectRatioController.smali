.class public Lcom/android/server/wm/FixedAspectRatioController;
.super Lcom/android/server/wm/PackagesChange;
.source "FixedAspectRatioController.java"

# interfaces
.implements Lcom/android/server/wm/BoundsCompatController;


# instance fields
.field public final mSystemChange:Lcom/android/server/wm/FixedAspectRatioController$SystemChange;

.field public final mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    new-instance p1, Lcom/android/server/wm/FixedAspectRatioController$SystemChange;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/wm/FixedAspectRatioController$SystemChange;-><init>(Lcom/android/server/wm/FixedAspectRatioController$SystemChange-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/FixedAspectRatioController;->mSystemChange:Lcom/android/server/wm/FixedAspectRatioController$SystemChange;

    new-instance p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->CONVENTIONAL_MODE_DIRECTORY:Ljava/lang/String;

    const-string v1, "FixedAspectRatioPackageMap"

    const/16 v2, 0x8

    invoke-direct {p1, v2, v0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/FixedAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    filled-new-array {p1}, [Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackagesChange;->setUserChanges([Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    return-void
.end method


# virtual methods
.method public adjustBounds(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/server/wm/BoundsCompatController;->getBoundsCompatUtils()Lcom/android/server/wm/BoundsCompatUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BoundsCompatUtils;->adjustBoundsAsMinAspectRatio(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public computeConfigResourceOverridesIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 0

    iget p0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    iget p0, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-nez p1, :cond_1

    iget p0, p4, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    :cond_1
    const p1, 0x3bcccccd    # 0.00625f

    mul-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_2
    return-void
.end method

.method public getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/FixedAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public getFixedAspectRatio(Lcom/android/server/wm/ActivityRecord;)F
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/FixedAspectRatioController;->getMergedChange(ILjava/lang/String;)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getMergedChange(ILjava/lang/String;)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/FixedAspectRatioController;->getUserChangeWithLegacy(ILjava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/FixedAspectRatioController;->getSystemChange(Ljava/lang/String;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public getSystemChange(Ljava/lang/String;)F
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/FixedAspectRatioController;->mSystemChange:Lcom/android/server/wm/FixedAspectRatioController$SystemChange;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FixedAspectRatioController$SystemChange;->getAspectRatio(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getUserChange(ILjava/lang/String;)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/FixedAspectRatioController;->getUserChangeWithLegacy(ILjava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    return p0
.end method

.method public final getUserChangeWithLegacy(ILjava/lang/String;)Ljava/lang/Float;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/server/wm/PackagesChange;->isExcludedPackage(Ljava/lang/String;)Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/FixedAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    return-object p0
.end method

.method public requestToSave(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/FixedAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->requestToSave(I)V

    return-void
.end method
