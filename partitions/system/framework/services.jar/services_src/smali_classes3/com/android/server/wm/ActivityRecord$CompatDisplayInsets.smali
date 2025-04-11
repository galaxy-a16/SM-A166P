.class public Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# instance fields
.field public mCanRotationCompatMode:Z

.field public mConfigChangeNeeded:Z

.field public mCreatedByRotationCompat:Z

.field public mDisplayId:I

.field public final mHeight:I

.field public final mIsFloating:Z

.field public final mIsInFixedOrientationLetterbox:Z

.field public final mNonDecorInsets:[Landroid/graphics/Rect;

.field public final mOriginalRequestedOrientation:I

.field public final mOriginalRotation:I

.field public final mOverrideConfig:Landroid/content/res/Configuration;

.field public mParentScreenLayout:I

.field public final mStableInsets:[Landroid/graphics/Rect;

.field public mWaitingForVisibleRequested:Z

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V
    .locals 11

    .line 12396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Rect;

    .line 12386
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-array v1, v0, [Landroid/graphics/Rect;

    .line 12392
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 12565
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    .line 12568
    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mParentScreenLayout:I

    .line 12610
    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayId:I

    .line 12399
    iget v2, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayId:I

    .line 12401
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean v4, v2, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eqz v4, :cond_0

    .line 12403
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCreatedByRotationCompat:Z

    .line 12404
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    .line 12405
    iget-boolean v2, v2, Lcom/android/server/wm/BoundsCompatRecord;->mIsTaskOrientationMismatched:Z

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mConfigChangeNeeded:Z

    .line 12406
    iget-boolean v2, p2, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWaitingForVisibleRequested:Z

    .line 12409
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOriginalRotation:I

    .line 12410
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    .line 12411
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOriginalRequestedOrientation:I

    if-eqz v2, :cond_2

    .line 12413
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 12414
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 12415
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 12418
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_1

    .line 12420
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aput-object p1, p3, p2

    .line 12421
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aput-object p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12423
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsInFixedOrientationLetterbox:Z

    return-void

    .line 12427
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p3, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    .line 12429
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsInFixedOrientationLetterbox:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 12439
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    :goto_2
    if-eqz p2, :cond_6

    .line 12441
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p2

    goto :goto_3

    .line 12442
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p2

    .line 12443
    :goto_3
    invoke-static {p3, p2}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getRotationZeroDimensions(Landroid/graphics/Rect;I)Landroid/graphics/Point;

    move-result-object v2

    .line 12445
    iget v4, v2, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 12446
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 12450
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 12451
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    move v5, v1

    :goto_5
    if-ge v5, v0, :cond_d

    .line 12453
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aput-object v7, v6, v5

    .line 12454
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aput-object v7, v6, v5

    if-eq v5, v3, :cond_9

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    goto :goto_6

    :cond_8
    move v6, v1

    goto :goto_7

    :cond_9
    :goto_6
    move v6, v3

    :goto_7
    if-eqz v6, :cond_a

    .line 12456
    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_8

    :cond_a
    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_8
    if-eqz v6, :cond_b

    .line 12457
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_9

    :cond_b
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 12459
    :goto_9
    invoke-virtual {v4, v5, v7, v6}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v8

    .line 12460
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    iget-object v10, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12461
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    iget-object v8, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez v2, :cond_c

    goto :goto_a

    .line 12469
    :cond_c
    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12470
    invoke-virtual {p1, p2, v5, v2}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 12474
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    invoke-static {v2, v7, v6, v8}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 12475
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    invoke-static {v2, v7, v6, v8}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method public static getRotationZeroDimensions(Landroid/graphics/Rect;I)Landroid/graphics/Point;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 12486
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 12487
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eqz v0, :cond_2

    .line 12488
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    :goto_1
    return-object v0
.end method

.method public static updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 3

    .line 12497
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 12498
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 12499
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iget p1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 12500
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 12613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12614
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "CompatDisplayInsets:"

    .line 12615
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12616
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWidth="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12617
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mHeight="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12618
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mDisplayId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12619
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    if-eqz p2, :cond_0

    const-string p2, ", mIsFloating=true"

    .line 12620
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12622
    :cond_0
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsInFixedOrientationLetterbox:Z

    if-eqz p2, :cond_1

    const-string p2, ", mIsInFixedOrientationLetterbox=true"

    .line 12623
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12625
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 12636
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCreatedByRotationCompat:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mConfigChangeNeeded:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWaitingForVisibleRequested:Z

    if-eqz p2, :cond_5

    .line 12639
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCreatedByRotationCompat="

    .line 12640
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12641
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCreatedByRotationCompat:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, ", mCanRotationCompatMode="

    .line 12642
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12643
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 12644
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mConfigChangeNeeded:Z

    if-eqz p2, :cond_3

    const-string p2, ", mConfigChangeNeeded=true"

    .line 12645
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12647
    :cond_3
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWaitingForVisibleRequested:Z

    if-eqz p0, :cond_4

    const-string p0, ", mWaitingForVisibleRequested=true"

    .line 12648
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12650
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_5
    return-void
.end method

.method public getBoundsByRotation(Landroid/graphics/Rect;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 12505
    iget p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    :goto_1
    if-eqz v1, :cond_3

    .line 12506
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    goto :goto_2

    :cond_3
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 12507
    :goto_2
    invoke-virtual {p1, v0, v0, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .locals 6

    .line 12522
    invoke-virtual {p0, p2, p4}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getFrameByOrientation(Landroid/graphics/Rect;I)V

    .line 12523
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    if-eqz v0, :cond_0

    .line 12524
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 12528
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 12529
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 12530
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 12532
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    if-le v0, v1, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    if-eqz v4, :cond_5

    if-eqz p6, :cond_5

    if-eqz p5, :cond_5

    const/4 p5, 0x2

    if-ne p4, p5, :cond_4

    int-to-float p4, v0

    mul-float/2addr p4, p4

    int-to-float p5, v1

    div-float/2addr p4, p5

    float-to-int p4, p4

    .line 12538
    iput p4, p2, Landroid/graphics/Rect;->bottom:I

    .line 12539
    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 12541
    :cond_4
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, v1

    mul-float/2addr p4, p4

    int-to-float p5, v0

    div-float/2addr p4, p5

    float-to-int p4, p4

    .line 12542
    iput p4, p2, Landroid/graphics/Rect;->right:I

    .line 12544
    :goto_3
    iget p4, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p5

    invoke-static {p4, p5}, Lcom/android/server/wm/ActivityRecord;->-$$Nest$smgetCenterOffset(II)I

    move-result p4

    invoke-virtual {p2, p4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 12546
    :cond_5
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v4, :cond_6

    .line 12552
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object p0, p0, p3

    .line 12553
    iget p3, p0, Landroid/graphics/Rect;->left:I

    iget p4, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 12554
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    :cond_6
    const/4 p4, -0x1

    if-eq p3, p4, :cond_7

    .line 12557
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object p0, p0, p3

    invoke-static {p1, p2, p0}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public getFrameByOrientation(Landroid/graphics/Rect;I)V
    .locals 3

    .line 12511
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 12512
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    if-eqz p2, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p0

    :goto_1
    if-eqz p2, :cond_2

    move v0, p0

    .line 12514
    :cond_2
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
