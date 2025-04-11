.class public Lcom/android/server/wm/BoundsCompatRecord;
.super Ljava/lang/Object;
.source "BoundsCompatRecord.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mAspectRatioPolicy:I

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mCanRotationCompatMode:Z

.field public mCandidateController:Lcom/android/server/wm/BoundsCompatController;

.field public mContainingRatio:F

.field public mController:Lcom/android/server/wm/BoundsCompatController;

.field public mDesiredAspectRatio:F

.field public mDesiredAspectRatioAsCompat:F

.field public mFixedAspectRatio:F

.field public mIsIgnoreOrientationRequest:Z

.field public mIsTaskOrientationMismatched:Z

.field public mPendingCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

.field public mPreferredOrientation:I

.field public mRestrictedBounds:Z

.field public mRotationCompatModeInherited:Z

.field public mRotationCompatReason:I

.field public mScreenOrientationInMultiWindow:I

.field public mShouldPlayMoveAnimation:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPreferredOrientation:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mScreenOrientationInMultiWindow:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatioAsCompat:F

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public static hasDefinedAspectRatio(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final applyPolicyIfNeeded()V
    .locals 12

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    invoke-static {}, Lcom/android/server/wm/BoundsCompatUtils;->get()Lcom/android/server/wm/BoundsCompatUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/BoundsCompatUtils;->shouldApplyMinAspectRatio(Lcom/android/server/wm/DisplayContent;)Z

    move-result v1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_FIXED_ASPECT_RATIO_MODE:Z

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFixedAspectRatioController:Lcom/android/server/wm/FixedAspectRatioController;

    iget-object v4, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/FixedAspectRatioController;->getFixedAspectRatio(Lcom/android/server/wm/ActivityRecord;)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    iget-object v5, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/OrientationController;->isEnabled(Lcom/android/server/wm/Task;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    iget-boolean v9, v5, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsAspectRatio:Z

    if-eqz v9, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/OrientationController;->isIgnoreOrientationRequest(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-boolean v8, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iget-object v10, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v10, v6}, Lcom/android/server/wm/OrientationController;->getPreferredConfigurationOrientation(Lcom/android/server/wm/ActivityRecord;I)I

    move-result v10

    iput v10, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPreferredOrientation:I

    if-ne v10, v8, :cond_2

    :goto_2
    move v11, v8

    goto :goto_3

    :cond_2
    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    iget-boolean v11, v4, Lcom/android/server/wm/OrientationController;->mDisallowWhenLandscapeFixedApp:Z

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    move v11, v7

    :goto_3
    if-eqz v11, :cond_4

    if-eq v10, v6, :cond_4

    iput-boolean v8, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsTaskOrientationMismatched:Z

    :cond_4
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v6, :cond_9

    if-eqz v9, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/OrientationController;->getRotationCompatReason(Lcom/android/server/wm/ActivityRecord;)I

    move-result v6

    goto :goto_4

    :cond_5
    const/16 v6, 0xcb

    :goto_4
    iput v6, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRotationCompatReason:I

    const/16 v10, 0x68

    if-ne v6, v10, :cond_6

    iput-boolean v8, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRotationCompatModeInherited:Z

    :cond_6
    invoke-virtual {v4, v6}, Lcom/android/server/wm/OrientationController;->canRotationCompatMode(I)Z

    move-result v6

    iget-boolean v10, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eq v6, v10, :cond_9

    iput-boolean v6, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "canRotationCompatMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", reason="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRotationCompatReason:I

    invoke-static {v11}, Lcom/android/server/wm/OrientationController;->rotationCompatReasonToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", r="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "BoundsCompat"

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object v6

    iput-boolean v8, v6, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    goto :goto_5

    :cond_7
    iget-object v6, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT_FOR_FOLD:Z

    if-eqz v10, :cond_8

    iget v10, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRotationCompatReason:I

    const/16 v11, 0xca

    if-ne v10, v11, :cond_8

    move v7, v8

    :cond_8
    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/OrientationController;->clearRotationCompatMode(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_9
    :goto_5
    iget-boolean v6, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsTaskOrientationMismatched:Z

    if-eqz v6, :cond_e

    iput-object v4, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCandidateController:Lcom/android/server/wm/BoundsCompatController;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ASPECT_RATIO:Z

    if-eqz v1, :cond_d

    if-nez v9, :cond_a

    goto :goto_7

    :cond_a
    cmpl-float v1, v2, v3

    if-eqz v1, :cond_b

    move v3, v2

    goto :goto_6

    :cond_b
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v3

    :goto_6
    iput v3, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eqz v3, :cond_d

    if-eqz v1, :cond_c

    move v0, v2

    :cond_c
    iput v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatioAsCompat:F

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0, v4}, Lcom/android/server/wm/BoundsCompatRecord;->setController(Lcom/android/server/wm/BoundsCompatController;)V

    :cond_d
    :goto_7
    return-void

    :cond_e
    if-eqz v1, :cond_f

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FIXED_ASPECT_RATIO_MODE:Z

    if-eqz v0, :cond_10

    iput v2, p0, Lcom/android/server/wm/BoundsCompatRecord;->mFixedAspectRatio:F

    invoke-static {v2}, Lcom/android/server/wm/BoundsCompatRecord;->hasDefinedAspectRatio(F)Z

    move-result v0

    if-eqz v0, :cond_10

    iput v2, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFixedAspectRatioController:Lcom/android/server/wm/FixedAspectRatioController;

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCandidateController:Lcom/android/server/wm/BoundsCompatController;

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCustomAspectRatioController:Lcom/android/server/wm/CustomAspectRatioController;

    iget-object v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/CustomAspectRatioController;->getMaxAspectRatioPolicy(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAspectRatioPolicy:I

    invoke-static {v0}, Lcom/android/server/wm/CustomAspectRatioController;->isFullScreenMode(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCustomAspectRatioController:Lcom/android/server/wm/CustomAspectRatioController;

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCandidateController:Lcom/android/server/wm/BoundsCompatController;

    :cond_10
    :goto_8
    return-void
.end method

.method public final clearPolicy(I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    iput v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mContainingRatio:F

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mScreenOrientationInMultiWindow:I

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT_FOR_FOLD:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPendingCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    const/16 p1, 0xd5

    goto :goto_0

    :cond_3
    const/16 p1, 0xd1

    goto :goto_0

    :cond_4
    const/16 p1, 0xc9

    goto :goto_0

    :cond_5
    const/16 p1, 0xd2

    goto :goto_0

    :cond_6
    const/16 p1, 0xc8

    :goto_0
    iput p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRotationCompatReason:I

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    iget-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/OrientationController;->clearRotationCompatMode(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_7
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatRecord;->isCompatModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/rune/CoreRune;->isSamsungLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BoundsCompatInfo: mController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/android/server/wm/BoundsCompatUtils;->isSupportsBoundsCompat()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSupportsBoundsCompat=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mContainingRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mContainingRatio="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/BoundsCompatRecord;->mContainingRatio:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDesiredAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_DISPLAY_CENTER_ALIGNMENT:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRestrictedBounds:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRestrictedBounds=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAspectRatioPolicy:I

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAspectRatioPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAspectRatioPolicy:I

    invoke-static {v1}, Lcom/android/server/wm/CustomAspectRatioController;->policyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FIXED_ASPECT_RATIO_MODE:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mFixedAspectRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFixedAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mFixedAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OrientationController;->isEnabled(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsIgnoreOrientationRequest="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ", mIsTaskOrientationMismatched="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsTaskOrientationMismatched:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPreferredOrientation:I

    if-eqz v0, :cond_7

    const-string v0, ", mPreferredOrientation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPreferredOrientation:I

    invoke-static {v0}, Lcom/android/server/wm/OrientationController;->orientationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mScreenOrientationInMultiWindow:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_8

    const-string v0, ", mScreenOrientationInMultiWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mScreenOrientationInMultiWindow:I

    invoke-static {v0}, Lcom/android/server/wm/OrientationController;->orientationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    if-eqz v0, :cond_9

    const-string v1, ", RequestedConfigurationOrientation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/wm/OrientationController;->orientationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRotationCompatReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRotationCompatReason:I

    invoke-static {v1}, Lcom/android/server/wm/OrientationController;->rotationCompatReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eqz v0, :cond_a

    const-string v0, ", mCanRotationCompatMode=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT_FOR_FOLD:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPendingCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPendingCompatDisplayInsets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPendingCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public getController()Lcom/android/server/wm/BoundsCompatController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    return-object p0
.end method

.method public getDesiredAspectRatio()F
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatioAsCompat:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsTaskOrientationMismatched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatioAsCompat:F

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    return p0
.end method

.method public isAboveEmbeddedTaskFragment()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFullscreenEmbedded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isCompatModeEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/BoundsCompatUtils;->isSupportsBoundsCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFixedAspectRatioController(Lcom/android/server/wm/BoundsCompatController;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FIXED_ASPECT_RATIO_MODE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFixedAspectRatioController:Lcom/android/server/wm/FixedAspectRatioController;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFixedAspectRatioModeEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FIXED_ASPECT_RATIO_MODE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatRecord;->isCompatModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/BoundsCompatRecord;->isFixedAspectRatioController(Lcom/android/server/wm/BoundsCompatController;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullScreen()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/BoundsCompatUtils;->isSupportsBoundsCompat()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCandidateController:Lcom/android/server/wm/BoundsCompatController;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatRecord;->getDesiredAspectRatio()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSizeCompatModeEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatRecord;->isCompatModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v0, p0}, Lcom/android/server/wm/BoundsCompatController;->shouldUseSizeCompatMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplyAspectRatio(Lcom/android/server/wm/BoundsCompatController;FFLandroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BoundsCompatRecord;->setController(Lcom/android/server/wm/BoundsCompatController;)V

    iput p2, p0, Lcom/android/server/wm/BoundsCompatRecord;->mContainingRatio:F

    iput p3, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_DISPLAY_CENTER_ALIGNMENT:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/wm/BoundsCompatUtils;->get()Lcom/android/server/wm/BoundsCompatUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p2, p4}, Lcom/android/server/wm/BoundsCompatUtils;->restrictToBoundsForMinAspectRatioIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRestrictedBounds:Z

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCandidateController:Lcom/android/server/wm/BoundsCompatController;

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_DISPLAY_CENTER_ALIGNMENT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRestrictedBounds:Z

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsTaskOrientationMismatched:Z

    iput-boolean v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRotationCompatModeInherited:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatioAsCompat:F

    :cond_2
    invoke-static {}, Lcom/android/server/wm/BoundsCompatUtils;->isSupportsBoundsCompat()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/BoundsCompatRecord;->clearPolicy(I)V

    return-void

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/server/wm/BoundsCompatRecord;->clearPolicy(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/BoundsCompatRecord;->clearPolicy(I)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/BoundsCompatRecord;->clearPolicy(I)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatRecord;->applyPolicyIfNeeded()V

    return-void
.end method

.method public resolve(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatRecord;->isCompatModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/BoundsCompatController;->adjustBounds(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setController(Lcom/android/server/wm/BoundsCompatController;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/BoundsCompatUtils;->isSupportsBoundsCompat()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    return-void
.end method
