.class Lcom/android/server/wm/Transition$ChangeInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# instance fields
.field public final mAbsoluteBounds:Landroid/graphics/Rect;

.field public mAffordanceTargetFreeformTask:Z

.field public mChangeLeash:Landroid/view/SurfaceControl;

.field public mChangeTransitFlags:I

.field public mChangeTransitMode:I

.field public mCommonAncestor:Lcom/android/server/wm/WindowContainer;

.field public final mContainer:Lcom/android/server/wm/WindowContainer;

.field public mCornerRadius:F

.field public mDisplayId:I

.field public mEndParent:Lcom/android/server/wm/WindowContainer;

.field public mExistenceChanged:Z

.field public mFlags:I

.field public mForceChangeSplitTask:Z

.field public mForceChanged:Z

.field public mForceHidingTransit:I

.field public final mFreezeOutsets:Landroid/graphics/Rect;

.field public mHideWhileTwoHandDragging:Z

.field public mKnownConfigChanges:I

.field public mMinimizeAnimState:I

.field public final mMinimizePoint:Landroid/graphics/PointF;

.field public mNeedRemoteWallpaperAnim:Z

.field public mReadyFlags:I

.field public mReadyMode:I

.field public mResumedAffordance:Z

.field public mRotation:I

.field public mShowWallpaper:Z

.field public mSnapshot:Landroid/view/SurfaceControl;

.field public mSnapshotLuma:F

.field public mStartParent:Lcom/android/server/wm/WindowContainer;

.field public mVisible:Z

.field public mWindowingMode:I


# direct methods
.method public static bridge synthetic -$$Nest$fputmNeedRemoteWallpaperAnim(Lcom/android/server/wm/Transition$ChangeInfo;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mNeedRemoteWallpaperAnim:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 3

    .line 3818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3739
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 3743
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    const/4 v2, -0x1

    .line 3745
    iput v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 3746
    iput v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    .line 3750
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    const/4 v2, 0x0

    .line 3769
    iput-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 3770
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 3777
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFreezeOutsets:Landroid/graphics/Rect;

    .line 3781
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChanged:Z

    .line 3785
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizeAnimState:I

    .line 3786
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizePoint:Landroid/graphics/PointF;

    .line 3790
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    .line 3794
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAffordanceTargetFreeformTask:Z

    const/4 v2, 0x0

    .line 3798
    iput v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mCornerRadius:F

    .line 3806
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    .line 3811
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChangeSplitTask:Z

    .line 3815
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mNeedRemoteWallpaperAnim:Z

    .line 3819
    iput-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3820
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 3821
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 3822
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3823
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    .line 3824
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 3825
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 3826
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smgetDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;ZZ)V
    .locals 0

    .line 3831
    invoke-direct {p0, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 3832
    iput-boolean p2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 3833
    iput-boolean p3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    const/4 p1, 0x0

    .line 3834
    iput-boolean p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    return-void
.end method


# virtual methods
.method public getChangeFlags(Lcom/android/server/wm/WindowContainer;)I
    .locals 7

    .line 3924
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3927
    :goto_1
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisTranslucent(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    .line 3930
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/BackNavigationController;->isMonitorTransitionTarget(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    const/high16 v2, 0x20000

    if-eqz v1, :cond_3

    or-int/2addr v0, v2

    .line 3933
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/high16 v3, 0x4000000

    if-eqz v1, :cond_8

    .line 3935
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 3937
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_4

    .line 3938
    invoke-virtual {v5}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    move-result v5

    if-eqz v5, :cond_4

    or-int/lit16 v0, v0, 0x800

    .line 3941
    :cond_4
    iget-boolean v5, v4, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_5

    const-string v5, "Transition"

    const-string v6, "Unexpected launch-task-behind operation in shell transition"

    .line 3942
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v5, 0x80000

    or-int/2addr v0, v5

    .line 3947
    :cond_5
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_LATE_TRANSIENT_LAUNCH:Z

    if-eqz v5, :cond_6

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mIsLateTransientLaunch:Z

    if-eqz v4, :cond_6

    or-int/2addr v0, v3

    .line 3952
    :cond_6
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_7

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v0, v4

    .line 3958
    :cond_7
    iget-object v4, v1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_8

    or-int/lit8 v0, v0, 0x10

    .line 3963
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 3965
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 3966
    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v6, :cond_9

    or-int/lit8 v0, v0, 0x10

    .line 3969
    :cond_9
    iget v6, v4, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    or-int/2addr v0, v6

    .line 3971
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v6, :cond_a

    const/high16 v6, 0x800000

    or-int/2addr v0, v6

    .line 3975
    :cond_a
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_LATE_TRANSIENT_LAUNCH:Z

    if-eqz v6, :cond_c

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mIsLateTransientLaunch:Z

    if-eqz v4, :cond_c

    or-int/2addr v0, v3

    goto :goto_2

    :cond_b
    const/4 v5, 0x0

    .line 3981
    :cond_c
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_d

    if-nez v1, :cond_d

    .line 3983
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    :cond_d
    const/high16 v1, 0x10000

    if-eqz v5, :cond_10

    .line 3986
    new-instance v3, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda32;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda32;-><init>()V

    invoke-virtual {v5, v3}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_e

    or-int/lit16 v0, v0, 0x200

    .line 3990
    :cond_e
    new-instance v3, Lcom/android/server/wm/Transition$ChangeInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/wm/Transition$ChangeInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_f

    or-int/lit16 v0, v0, 0x4000

    .line 3994
    :cond_f
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/Transition$ChangeInfo;->isWindowFillingTask(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_14

    or-int/lit16 v0, v0, 0x400

    goto :goto_3

    .line 3999
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_11

    or-int/lit8 v0, v0, 0x20

    .line 4002
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    move-result v3

    if-eqz v3, :cond_14

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    .line 4005
    :cond_11
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_12

    or-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 4007
    :cond_12
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisInputMethod(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_13

    or-int/lit16 v0, v0, 0x100

    goto :goto_3

    .line 4011
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    move-result v3

    const/16 v4, 0x7d0

    if-lt v3, v4, :cond_14

    const/16 v4, 0xbb7

    if-gt v3, v4, :cond_14

    or-int/2addr v0, v1

    .line 4018
    :cond_14
    :goto_3
    iget p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v3, p0, 0x8

    if-eqz v3, :cond_15

    and-int/lit8 v3, p0, 0x10

    if-nez v3, :cond_15

    const/high16 v3, 0x40000

    or-int/2addr v0, v3

    :cond_15
    and-int/lit8 v3, p0, 0x20

    if-eqz v3, :cond_16

    const/high16 v3, 0x100000

    or-int/2addr v0, v3

    .line 4026
    :cond_16
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v3, :cond_18

    and-int/2addr v1, p0

    if-eqz v1, :cond_17

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    :cond_17
    and-int/2addr p0, v2

    if-eqz p0, :cond_18

    const/high16 p0, 0x20000000

    or-int/2addr v0, p0

    .line 4034
    :cond_18
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz p0, :cond_19

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    if-eqz p0, :cond_19

    const/high16 p0, 0x1000000

    or-int/2addr v0, p0

    .line 4038
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->allowEdgeExtension()Z

    move-result p0

    if-nez p0, :cond_1a

    const/high16 p0, 0x2000000

    or-int/2addr v0, p0

    .line 4042
    :cond_1a
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz p0, :cond_1b

    .line 4043
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisTransientLaunchOverlay(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/high16 p0, 0x8000000

    or-int/2addr v0, p0

    :cond_1b
    return v0
.end method

.method public getTransitMode(Lcom/android/server/wm/WindowContainer;)I
    .locals 7

    .line 3883
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x6

    if-eqz v0, :cond_4

    .line 3889
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3890
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3891
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 3892
    iget-object v6, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v6, v6, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    .line 3893
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 3894
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3895
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-ne v0, p1, :cond_0

    return v5

    .line 3898
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    .line 3903
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz p0, :cond_3

    move v1, v4

    :cond_3
    return v1

    .line 3906
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mHideWhileTwoHandDragging:Z

    if-eqz v0, :cond_5

    return v1

    .line 3910
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    .line 3911
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-ne p1, v0, :cond_6

    return v5

    .line 3914
    :cond_6
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz p0, :cond_8

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    move v2, v4

    :goto_1
    return v2

    :cond_8
    if-eqz p1, :cond_9

    move v1, v3

    :cond_9
    return v1
.end method

.method public hasChanged()Z
    .locals 4

    .line 3844
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_8

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 3850
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ChangeInfo;->needChangeForSplitTask()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 3853
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mNeedRemoteWallpaperAnim:Z

    if-eqz v0, :cond_2

    return v1

    .line 3860
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    .line 3861
    iget-boolean v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-ne v0, v3, :cond_3

    if-nez v3, :cond_3

    return v1

    :cond_3
    if-ne v0, v3, :cond_8

    .line 3862
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3866
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iget v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-ne v0, v3, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3867
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3868
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3869
    invoke-static {v3}, Lcom/android/server/wm/Transition;->-$$Nest$smgetDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v3

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_8

    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChanged:Z

    if-nez v0, :cond_8

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mHideWhileTwoHandDragging:Z

    if-nez v0, :cond_8

    iget p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    move v2, v1

    :cond_8
    :goto_0
    return v2
.end method

.method public final isWindowFillingTask(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;)Z
    .locals 5

    .line 4052
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 4053
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 4054
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 4055
    iget-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 4056
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4058
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_1

    .line 4059
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-ne v0, p0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v4

    .line 4060
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4061
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-ne v0, p1, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v4

    :goto_3
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    move v3, v4

    :cond_4
    return v3
.end method

.method public needChangeForSplitTask()Z
    .locals 1

    .line 4079
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4082
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChangeSplitTask:Z

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldFreezeByChangeTransition()Z
    .locals 1

    .line 4073
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 3839
    iget-object p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateForceChangeSplitTask(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 4087
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChangeSplitTask:Z

    goto :goto_1

    :cond_0
    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4089
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChangeSplitTask:Z

    :goto_1
    return-void
.end method
