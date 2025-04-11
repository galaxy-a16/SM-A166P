.class public abstract Lcom/android/server/wm/PopOverBoundsCalculator;
.super Ljava/lang/Object;
.source "PopOverBoundsCalculator.java"


# direct methods
.method public static synthetic $r8$lambda$gxRRYLhbTUEF60FpSvK04lSmmT4(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/PopOverBoundsCalculator;->lambda$getBounds$0(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static applyDefaultMargin(FLandroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->top:I

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v1, p0

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr p0, v2

    float-to-int p0, p0

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iget p0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v1

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public static applyHeight(IILandroid/graphics/Rect;ILandroid/graphics/Rect;)V
    .locals 1

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p3, 0x4

    if-eq p0, p3, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/2addr p2, v0

    add-int/2addr p0, p2

    div-int/lit8 p2, p1, 0x2

    sub-int/2addr p0, p2

    iput p0, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    iput p0, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p3

    iput p0, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    iput p0, p4, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    if-ge p0, p2, :cond_3

    add-int/2addr p1, p2

    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    iput p2, p4, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_2
    iget p0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p3

    iput p0, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    iput p0, p4, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ge p2, p0, :cond_3

    sub-int p0, p2, p1

    iput p0, p4, Landroid/graphics/Rect;->top:I

    iput p2, p4, Landroid/graphics/Rect;->bottom:I

    :cond_3
    :goto_0
    return-void
.end method

.method public static applyInsets(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;ILandroid/graphics/Rect;)V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_1
    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v5

    invoke-virtual {v5, p2, v3, v2}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    invoke-direct {v4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v2, v4, Landroid/graphics/Rect;->top:I

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget p0, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getCaptionHeight()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p3, Landroid/graphics/Rect;->top:I

    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isConfigurationNeededInUdcCutout()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p1

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_OVERLAPPING_WITH_CUTOUT_AS_DEFAULT:Z

    if-eqz p2, :cond_6

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_6
    iget p0, p3, Landroid/graphics/Rect;->top:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p3, Landroid/graphics/Rect;->top:I

    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v1

    sub-int/2addr p0, p2

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p3, Landroid/graphics/Rect;->left:I

    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget p2, v0, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p0, p1

    iput p0, p3, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public static applyWidth(IILandroid/graphics/Rect;ILandroid/graphics/Rect;)V
    .locals 1

    and-int/lit8 p0, p0, 0x70

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 p3, 0x40

    if-eq p0, p3, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p0, p2

    div-int/lit8 p2, p1, 0x2

    sub-int/2addr p0, p2

    iput p0, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    iput p0, p4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p3

    iput p0, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    iput p0, p4, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    if-ge p0, p2, :cond_3

    add-int/2addr p1, p2

    iput p1, p4, Landroid/graphics/Rect;->right:I

    iput p2, p4, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    iget p0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p3

    iput p0, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    iput p0, p4, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-ge p2, p0, :cond_3

    sub-int p0, p2, p1

    iput p0, p4, Landroid/graphics/Rect;->left:I

    iput p2, p4, Landroid/graphics/Rect;->right:I

    :cond_3
    :goto_0
    return-void
.end method

.method public static getAvailableArea(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;IFLcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .locals 1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    goto :goto_0

    :cond_0
    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    invoke-static {p1, p0, p2, p4}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyInsets(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;ILandroid/graphics/Rect;)V

    invoke-static {p3, p4}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyDefaultMargin(FLandroid/graphics/Rect;)V

    return-object p4
.end method

.method public static getBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/PopOverBoundsCalculator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/PopOverBoundsCalculator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p0, v1, v3, v5, v2}, Lcom/android/server/wm/PopOverBoundsCalculator;->getAvailableArea(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;IFLcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {v0, v4, v5}, Lcom/android/server/wm/PopOverBoundsCalculator;->getRequestedWidth(Landroid/app/ActivityOptions;IF)I

    move-result v1

    invoke-static {v0, v4, v5}, Lcom/android/server/wm/PopOverBoundsCalculator;->getRequestedHeight(Landroid/app/ActivityOptions;IF)I

    move-result v2

    iget-object v3, v0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    aget v3, v3, v4

    iget-object v0, v0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    aget-object v0, v0, v4

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v3, v1, p0, v4, v5}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyWidth(IILandroid/graphics/Rect;ILandroid/graphics/Rect;)V

    invoke-static {v3, v2, p0, v0, v5}, Lcom/android/server/wm/PopOverBoundsCalculator;->applyHeight(IILandroid/graphics/Rect;ILandroid/graphics/Rect;)V

    invoke-virtual {v5, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    return-object v5
.end method

.method public static getPopOverShadow(Landroid/content/res/Resources;)I
    .locals 2

    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v1, v0, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getRequestedHeight(Landroid/app/ActivityOptions;IF)I
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    aget p0, p0, p1

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    return p0
.end method

.method public static getRequestedWidth(Landroid/app/ActivityOptions;IF)I
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    aget p0, p0, p1

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    return p0
.end method

.method public static synthetic lambda$getBounds$0(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    if-eq p2, p0, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
