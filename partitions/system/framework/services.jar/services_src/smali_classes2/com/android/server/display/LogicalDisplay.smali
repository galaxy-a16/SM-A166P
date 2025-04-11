.class public final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field public static final EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;


# instance fields
.field public final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field public mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

.field public mDevicePosition:I

.field public mDirty:Z

.field public mDisplayGroupId:I

.field public mDisplayGroupName:Ljava/lang/String;

.field public final mDisplayId:I

.field public mDisplayOffsetX:I

.field public mDisplayOffsetY:I

.field public final mDisplayPosition:Landroid/graphics/Point;

.field public mDisplayScalingDisabled:Z

.field public mDualSwitchApplied:Z

.field public mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field public mHasContent:Z

.field public final mInfo:Lcom/android/server/display/DisplayInfoProxy;

.field public mIsEnabled:Z

.field public mIsInTransition:Z

.field public final mLayerStack:I

.field public mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

.field public mLeadDisplayId:I

.field public mMaskingCutout:Z

.field public mNeedToUpdateBaseDisplayInfo:Z

.field public mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

.field public mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field public mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public mRequestedColorMode:I

.field public mRequestedMinimalPostProcessing:Z

.field public final mTempDisplayRect:Landroid/graphics/Rect;

.field public final mTempFrameRateOverride:Landroid/util/SparseArray;

.field public final mTempLayerStackRect:Landroid/graphics/Rect;

.field public mThermalBrightnessThrottlingDataId:Ljava/lang/String;

.field public mThermalRefreshRateThrottling:Landroid/util/SparseArray;

.field public mUserDisabledHdrTypes:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    sput-object v0, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    return-void
.end method

.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .locals 4

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v1, -0x1

    .line 92
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 94
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 108
    new-instance v2, Lcom/android/server/display/DisplayInfoProxy;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/display/DisplayInfoProxy;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v2, 0x0

    new-array v3, v2, [I

    .line 121
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 123
    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v3}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 133
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    .line 144
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 145
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 177
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 185
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 203
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 208
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 209
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 210
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 211
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 212
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    const/4 p1, 0x1

    .line 213
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 214
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    const-string p1, "default"

    .line 215
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 216
    iput-object p1, v0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    return-void
.end method

.method public static getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;
    .locals 1

    .line 663
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 664
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz p0, :cond_1

    .line 666
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 668
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method


# virtual methods
.method public clearPendingFrameRateOverrideUids()V
    .locals 1

    .line 298
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    return-void
.end method

.method public configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V
    .locals 12

    .line 703
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    move p3, v1

    :cond_0
    if-eqz p3, :cond_1

    const/4 p3, -0x1

    goto :goto_0

    .line 708
    :cond_1
    iget p3, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    :goto_0
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/server/display/DisplayDevice;->setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;II)V

    .line 713
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p3

    iget p3, p3, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    if-eqz p3, :cond_2

    move p3, v0

    goto :goto_1

    :cond_2
    move p3, v1

    .line 712
    :goto_1
    invoke-virtual {p2, p1, p3}, Lcom/android/server/display/DisplayDevice;->setDisplayFlagsLocked(Landroid/view/SurfaceControl$Transaction;I)V

    .line 718
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-ne p2, p3, :cond_3

    .line 719
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 720
    iget p3, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    goto :goto_2

    .line 723
    :cond_3
    new-instance p3, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {p3}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 725
    invoke-virtual {p2, v1}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    .line 728
    :goto_2
    iget-boolean p3, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayDevice;->setAutoLowLatencyModeLocked(Z)V

    .line 729
    iget-boolean p3, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayDevice;->setGameContentTypeLocked(Z)V

    .line 732
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p3

    .line 733
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    .line 738
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget v5, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 744
    iget v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 745
    iget v4, p3, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_3

    :cond_4
    move v4, v1

    .line 749
    :goto_3
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplay;->mDualSwitchApplied:Z

    if-eqz v6, :cond_5

    move v4, v0

    .line 755
    :cond_5
    iget v6, v3, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v4, v6

    rem-int/2addr v4, v2

    if-eq v4, v0, :cond_7

    const/4 v2, 0x3

    if-ne v4, v2, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    goto :goto_5

    :cond_7
    :goto_4
    move v2, v0

    :goto_5
    if-eqz v2, :cond_8

    .line 764
    iget v6, v3, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_6

    :cond_8
    iget v6, v3, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_6
    if-eqz v2, :cond_9

    .line 765
    iget v2, v3, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_7

    :cond_9
    iget v2, v3, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 767
    :goto_7
    invoke-static {v3}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v7

    .line 768
    invoke-static {v7, v4}, Lcom/android/server/wm/utils/InsetUtils;->rotateInsets(Landroid/graphics/Rect;I)V

    .line 770
    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    sub-int/2addr v6, v8

    .line 771
    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v2, v8

    .line 781
    iget v8, p3, Landroid/view/DisplayInfo;->flags:I

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v8, v9

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    if-eqz v8, :cond_a

    goto :goto_8

    .line 784
    :cond_a
    iget v8, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int v9, v6, v8

    iget v10, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int v11, v2, v10

    if-ge v9, v11, :cond_b

    mul-int/2addr v8, v6

    .line 788
    div-int/2addr v8, v10

    move v10, v6

    goto :goto_9

    :cond_b
    mul-int/2addr v10, v2

    .line 791
    div-int/2addr v10, v8

    move v8, v2

    goto :goto_9

    .line 782
    :cond_c
    :goto_8
    iget v10, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 783
    iget v8, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_9
    sub-int/2addr v2, v8

    .line 794
    div-int/2addr v2, v5

    sub-int/2addr v6, v10

    .line 795
    div-int/2addr v6, v5

    .line 796
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int/2addr v10, v6

    add-int/2addr v8, v2

    invoke-virtual {v9, v6, v2, v10, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 800
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v6, v7, Landroid/graphics/Rect;->left:I

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    if-nez v4, :cond_d

    .line 803
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    iget v5, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_a

    :cond_d
    if-ne v4, v0, :cond_e

    .line 805
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    iget v5, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_a

    :cond_e
    if-ne v4, v5, :cond_f

    .line 807
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v2, v2

    iget v5, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_a

    .line 809
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v2, v2

    iget v5, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 812
    :goto_a
    iget v0, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    if-eqz v0, :cond_10

    .line 813
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v2, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p3, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1, v1, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 816
    :cond_10
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 817
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v4, p3, p0}, Lcom/android/server/display/DisplayDevice;->setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsInTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDesiredDisplayModeSpecs={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayScalingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v1, :cond_0

    .line 1057
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1056
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedMinimalPostProcessing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFrameRateOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingFrameRateOverrideUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayGroupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mThermalBrightnessThrottlingDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLeadDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayoutLimitedRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mThermalRefreshRateThrottling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mDualSwitchApplied:Z

    if-eqz p0, :cond_1

    const-string/jumbo p0, "mDualSwitchApplied=true"

    .line 1070
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getDesiredDisplayModeSpecsLocked()Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 0

    .line 855
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    return-object p0
.end method

.method public getDisplayGroupNameLocked()Ljava/lang/String;
    .locals 0

    .line 1042
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayIdLocked()I
    .locals 0

    .line 235
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return p0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 256
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 257
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 258
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v1, :cond_0

    .line 259
    iget v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 260
    iget v2, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v2, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 261
    iget v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 262
    iget v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v2, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 263
    iget v2, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 264
    iget v2, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v2, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 265
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 266
    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 267
    iget v2, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v2, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 268
    iget v2, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v2, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 269
    iget v2, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v2, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 270
    iget-object v2, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v2, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 271
    iget v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 272
    iget-object v2, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v2, v0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 273
    iget-object v1, v1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iput-object v1, v0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 277
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayOffsetXLocked()I
    .locals 0

    .line 891
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    return p0
.end method

.method public getDisplayOffsetYLocked()I
    .locals 0

    .line 898
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return p0
.end method

.method public getDisplayPosition()Landroid/graphics/Point;
    .locals 1

    .line 679
    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    invoke-direct {v0, p0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getFrameRateOverrides()[Landroid/view/DisplayEventReceiver$FrameRateOverride;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    return-object p0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 0

    .line 656
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {p0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getLeadDisplayIdLocked()I
    .locals 0

    .line 1028
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    return p0
.end method

.method public getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, p0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public getPendingFrameRateOverrideUids()Landroid/util/ArraySet;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object p0
.end method

.method public getRequestedColorModeLocked()I
    .locals 0

    .line 884
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return p0
.end method

.method public getRequestedMinimalPostProcessingLocked()Z
    .locals 0

    .line 869
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    return p0
.end method

.method public hasContentLocked()Z
    .locals 0

    .line 831
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return p0
.end method

.method public isDirtyLocked()Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    return p0
.end method

.method public isDisplayScalingDisabled()Z
    .locals 0

    .line 914
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    return p0
.end method

.method public isEnabledLocked()Z
    .locals 0

    .line 971
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    return p0
.end method

.method public isInTransitionLocked()Z
    .locals 0

    .line 989
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    return p0
.end method

.method public isValidLocked()Z
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 0

    .line 848
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    return-void
.end method

.method public setDevicePositionLocked(I)V
    .locals 1

    .line 220
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    if-eq v0, p1, :cond_0

    .line 221
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    const/4 p1, 0x1

    .line 222
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_0
    return-void
.end method

.method public setDisplayGroupNameLocked(Ljava/lang/String;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 317
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v2, :cond_0

    .line 318
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 319
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return v0

    .line 321
    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 322
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 323
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return v0

    .line 326
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz p1, :cond_2

    .line 327
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 328
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setDisplayOffsetsLocked(II)V
    .locals 0

    .line 905
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 906
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return-void
.end method

.method public setDisplayScalingDisabledLocked(Z)V
    .locals 0

    .line 924
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    return-void
.end method

.method public setEnabledLocked(Z)V
    .locals 0

    .line 980
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    return-void
.end method

.method public setHasContentLocked(Z)V
    .locals 0

    .line 840
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return-void
.end method

.method public setIsInTransitionLocked(Z)V
    .locals 0

    .line 997
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    return-void
.end method

.method public setLeadDisplayLocked(I)V
    .locals 2

    .line 1022
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    .line 1023
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    :cond_0
    return-void
.end method

.method public setMaskingCutout(Z)V
    .locals 0

    .line 1087
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mMaskingCutout:Z

    const/4 p1, 0x1

    .line 1088
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mNeedToUpdateBaseDisplayInfo:Z

    return-void
.end method

.method public setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;
    .locals 3

    .line 954
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 955
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const/4 p1, 0x0

    .line 958
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 959
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 960
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return-object v0
.end method

.method public setRequestedColorModeLocked(I)V
    .locals 0

    .line 862
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return-void
.end method

.method public setRequestedMinimalPostProcessingLocked(Z)V
    .locals 0

    .line 879
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    return-void
.end method

.method public setThermalBrightnessThrottlingDataIdLocked(Ljava/lang/String;)V
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1007
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_0
    return-void
.end method

.method public setUserDisabledHdrTypes([I)V
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    if-eq v0, p1, :cond_0

    .line 929
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 930
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput-object p1, v0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 931
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    :cond_0
    return-void
.end method

.method public swapDisplaysLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 943
    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 944
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1077
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1078
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1079
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDisplayGroupIdLocked(I)V
    .locals 1

    .line 356
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    if-eq p1, v0, :cond_0

    .line 357
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    const/4 p1, 0x1

    .line 358
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_0
    return-void
.end method

.method public final updateFrameRateOverrides(Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 8

    .line 622
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 623
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 625
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 626
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v6, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v4, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 627
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 626
    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 630
    :cond_0
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    if-eqz p1, :cond_3

    .line 633
    array-length v0, p1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 634
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v5, v4, v6

    if-eqz v5, :cond_2

    .line 635
    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 639
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v3, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_3

    .line 636
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v3, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 637
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 636
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 643
    :cond_3
    :goto_4
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 644
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public updateLayoutLimitedRefreshRateLocked(Landroid/view/SurfaceControl$RefreshRateRange;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    const/4 p1, 0x1

    .line 371
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_0
    return-void
.end method

.method public updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V
    .locals 11

    .line 399
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayDeviceRepository;->containsLocked(Lcom/android/server/display/DisplayDevice;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 405
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 415
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    if-nez v2, :cond_2

    goto/16 :goto_6

    .line 428
    :cond_2
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_WIRELESS:Z

    const/4 v3, 0x2

    const/high16 v4, 0x20000000

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-ne v2, v3, :cond_4

    .line 430
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceRepository;->hasDisplayDeviceForWirelessDexLocked()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 431
    iget p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const v2, -0x20000001

    and-int/2addr p1, v2

    iput p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_0

    .line 433
    :cond_3
    iget p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr p1, v4

    iput p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 437
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v2, p1, Landroid/view/DisplayInfo;->layerStack:I

    const/4 v2, 0x0

    .line 438
    iput v2, p1, Landroid/view/DisplayInfo;->flags:I

    .line 440
    iput v2, p1, Landroid/view/DisplayInfo;->removeMode:I

    .line 441
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v6, v5, 0x8

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    or-int/2addr v6, v7

    .line 442
    iput v6, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_5
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_6

    .line 445
    iget v6, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v3, v6

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_6
    and-int/lit8 v3, v5, 0x10

    if-eqz v3, :cond_7

    .line 448
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    .line 450
    iput v7, p1, Landroid/view/DisplayInfo;->removeMode:I

    :cond_7
    and-int/lit16 v3, v5, 0x400

    if-eqz v3, :cond_8

    .line 453
    iput v7, p1, Landroid/view/DisplayInfo;->removeMode:I

    .line 456
    :cond_8
    iget v3, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    if-ne v3, v7, :cond_a

    .line 463
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    goto :goto_1

    :cond_a
    and-int/lit8 v3, v5, 0x40

    if-eqz v3, :cond_b

    .line 467
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_b
    :goto_1
    and-int/lit16 v3, v5, 0x100

    if-eqz v3, :cond_c

    .line 470
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_c
    and-int/lit16 v3, v5, 0x200

    if-eqz v3, :cond_d

    .line 473
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_d
    and-int/lit16 v3, v5, 0x1000

    if-eqz v3, :cond_e

    .line 476
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_e
    and-int/lit16 v3, v5, 0x2000

    if-eqz v3, :cond_f

    .line 479
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_f
    and-int/lit16 v3, v5, 0x4000

    if-eqz v3, :cond_10

    .line 482
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_10
    const v3, 0x8000

    and-int v6, v5, v3

    if-eqz v6, :cond_11

    .line 485
    iget v6, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_11
    const/high16 v6, 0x10000

    and-int/2addr v6, v5

    if-eqz v6, :cond_12

    .line 488
    iget v6, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_12
    const/high16 v6, 0x20000

    and-int/2addr v6, v5

    if-eqz v6, :cond_13

    .line 491
    iget v6, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_13
    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_14

    .line 494
    iget v5, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p1, Landroid/view/DisplayInfo;->flags:I

    .line 496
    :cond_14
    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object p1

    .line 497
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v8

    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v8

    .line 498
    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v9, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, p1

    .line 500
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v9, p1, Landroid/view/DisplayInfo;->type:I

    .line 501
    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iput-object v9, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 502
    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v9, p1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 503
    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v9, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 504
    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v9, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 505
    iput v5, p1, Landroid/view/DisplayInfo;->appWidth:I

    .line 506
    iput v8, p1, Landroid/view/DisplayInfo;->appHeight:I

    .line 507
    iput v5, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 508
    iput v8, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 509
    iput v2, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 510
    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v9, p1, Landroid/view/DisplayInfo;->modeId:I

    .line 511
    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    iput v9, p1, Landroid/view/DisplayInfo;->renderFrameRate:F

    .line 512
    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v9, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 513
    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v10, v9

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/view/Display$Mode;

    iput-object v9, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 515
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iput v9, p1, Landroid/view/DisplayInfo;->colorMode:I

    .line 516
    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    array-length v10, v9

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    iput-object v9, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 519
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v9, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 520
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    iput-object v9, p1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 521
    iget-boolean v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    if-nez v9, :cond_16

    iget-boolean v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    if-eqz v9, :cond_15

    goto :goto_2

    :cond_15
    move v9, v2

    goto :goto_3

    :cond_16
    :goto_2
    move v9, v7

    :goto_3
    iput-boolean v9, p1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    .line 523
    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v9, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 524
    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v9, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 525
    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v9, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 526
    iget-wide v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v9, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 527
    iget-wide v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v9, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 528
    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v9, p1, Landroid/view/DisplayInfo;->state:I

    .line 529
    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    iput v9, p1, Landroid/view/DisplayInfo;->committedState:I

    .line 530
    iput v5, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 531
    iput v8, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 532
    iput v5, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 533
    iput v8, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 534
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v5, p1, Landroid/view/DisplayInfo;->ownerUid:I

    .line 535
    iget-object v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v5, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 536
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_17

    move v5, v7

    goto :goto_4

    :cond_17
    move v5, v2

    :goto_4
    if-eqz v5, :cond_18

    move-object v5, v1

    goto :goto_5

    .line 538
    :cond_18
    iget-object v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_5
    iput-object v5, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 539
    iget v5, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iput v5, p1, Landroid/view/DisplayInfo;->displayId:I

    .line 540
    iget v5, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    iput v5, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 541
    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplay;->updateFrameRateOverrides(Lcom/android/server/display/DisplayDeviceInfo;)V

    .line 542
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    iput v5, p1, Landroid/view/DisplayInfo;->brightnessMinimum:F

    .line 543
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    iput v5, p1, Landroid/view/DisplayInfo;->brightnessMaximum:F

    .line 544
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    iput v5, p1, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 545
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    iput v5, p1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 546
    iget-object v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v5, p1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 547
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    iput v5, p1, Landroid/view/DisplayInfo;->installOrientation:I

    .line 548
    iget-object v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    iput-object v5, p1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 550
    iget v5, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    if-ne v5, v7, :cond_19

    .line 556
    iget v5, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v5, v5, 0x2000

    or-int/lit8 v5, v5, 0x8

    .line 557
    iput v5, p1, Landroid/view/DisplayInfo;->flags:I

    .line 558
    iput v7, p1, Landroid/view/DisplayInfo;->removeMode:I

    .line 561
    :cond_19
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iput-object v5, p1, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 562
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    iput-object v5, p1, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 563
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    iput-object v5, p1, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 565
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 566
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p1, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 567
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 570
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz p1, :cond_1a

    iget p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr p1, v1

    if-eqz p1, :cond_1a

    .line 572
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/DisplayInfo;->flags:I

    .line 580
    :cond_1a
    iget p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1b

    .line 582
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v3, v6

    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    :cond_1b
    const/high16 v1, 0x1000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1c

    .line 586
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v1, Landroid/view/DisplayInfo;->flags:I

    const/high16 v5, 0x40000

    or-int/2addr v3, v5

    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    .line 591
    :cond_1c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v1, :cond_1d

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1d

    .line 593
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v1, Landroid/view/DisplayInfo;->flags:I

    const/high16 v5, 0x100000

    or-int/2addr v3, v5

    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    :cond_1d
    const/high16 v1, 0x400000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1e

    .line 599
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    :cond_1e
    const/high16 v1, 0x10000000

    and-int v3, p1, v1

    if-eqz v3, :cond_21

    .line 602
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v1, v5

    iput v1, v3, Landroid/view/DisplayInfo;->flags:I

    .line 603
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    if-eq v0, v7, :cond_1f

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    .line 604
    :cond_1f
    iput v7, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 606
    :cond_20
    iput v2, v3, Landroid/view/DisplayInfo;->refreshRateMode:I

    :cond_21
    and-int v0, p1, v4

    if-eqz v0, :cond_22

    .line 609
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v1, v4

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    :cond_22
    const/high16 v0, 0x8000000

    and-int v1, p1, v0

    if-eqz v1, :cond_23

    .line 612
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v0, v2

    iput v0, v1, Landroid/view/DisplayInfo;->flags:I

    :cond_23
    const/high16 v0, 0x4000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_24

    .line 615
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget p1, p0, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/DisplayInfo;->flags:I

    :cond_24
    :goto_6
    return-void
.end method

.method public updateThermalRefreshRateThrottling(Landroid/util/SparseArray;)V
    .locals 1

    if-nez p1, :cond_0

    .line 382
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    const/4 p1, 0x1

    .line 386
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_1
    return-void
.end method
