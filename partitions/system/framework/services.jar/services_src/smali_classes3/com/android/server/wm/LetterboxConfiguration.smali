.class public final Lcom/android/server/wm/LetterboxConfiguration;
.super Ljava/lang/Object;
.source "LetterboxConfiguration.java"


# instance fields
.field public mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mContext:Landroid/content/Context;

.field public mDefaultMinAspectRatioForUnresizableApps:F

.field public mDefaultPositionForHorizontalReachability:I

.field public mDefaultPositionForVerticalReachability:I

.field public final mDeviceConfig:Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;

.field public mFixedOrientationLetterboxAspectRatio:F

.field public mGlobalLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

.field public mIsAutomaticReachabilityInBookModeEnabled:Z

.field public mIsCameraCompatRefreshCycleThroughStopEnabled:Z

.field public final mIsCameraCompatSplitScreenAspectRatioEnabled:Z

.field public final mIsCameraCompatTreatmentEnabled:Z

.field public mIsCameraCompatTreatmentRefreshEnabled:Z

.field public mIsCompatFakeFocusEnabled:Z

.field public mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

.field public final mIsDisplayRotationImmersiveAppCompatPolicyEnabled:Z

.field public mIsEducationEnabled:Z

.field public mIsHorizontalReachabilityEnabled:Z

.field public final mIsPolicyForIgnoringRequestedOrientationEnabled:Z

.field public mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

.field public mIsVerticalReachabilityEnabled:Z

.field public mLetterboxActivityCornersRadius:I

.field public mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

.field public mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

.field public mLetterboxBackgroundType:I

.field public mLetterboxBackgroundWallpaperBlurRadius:I

.field public mLetterboxBackgroundWallpaperDarkScrimAlpha:F

.field public mLetterboxBookModePositionMultiplier:F

.field public final mLetterboxConfigurationPersister:Lcom/android/server/wm/LetterboxConfigurationPersister;

.field public mLetterboxHorizontalPositionMultiplier:F

.field public mLetterboxTabletopModePositionMultiplier:F

.field public mLetterboxVerticalPositionMultiplier:F

.field public mTranslucentLetterboxingEnabled:Z

.field public mTranslucentLetterboxingOverrideEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$-qq9AiciHNT8y7974fWl50bBdrM(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/LetterboxConfiguration;->lambda$movePositionForVerticalReachabilityToNextBottomStop$6(ZLjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1j_u2BZqZY6nVH-MbdPeBa8ZfpU(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/LetterboxConfiguration;->lambda$movePositionForHorizontalReachabilityToNextLeftStop$5(ZLjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DtFsR0XfjpMiBChTgTfSAt6NKGs(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/server/wm/LetterboxConfiguration;->lambda$new$3(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EDCzaUqEe3oOBp2lR3nGMFH9VFA(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/server/wm/LetterboxConfiguration;->lambda$new$0(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MlAIbu8wDVBQdFkWt50zPM3Jtgg(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/server/wm/LetterboxConfiguration;->lambda$new$2(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Q-VDjuS4jI6OrvoGc4Xr-j65rys(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/LetterboxConfiguration;->lambda$movePositionForVerticalReachabilityToNextTopStop$7(ZLjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R0UAlsHBTv6bE_1Uqnn1CGyinfk(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/server/wm/LetterboxConfiguration;->lambda$new$1(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zNHh7It6GacjslU_Dt9C6-4kszw(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/LetterboxConfiguration;->lambda$movePositionForHorizontalReachabilityToNextRightStop$4(ZLjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    new-instance v6, Lcom/android/server/wm/LetterboxConfigurationPersister;

    new-instance v2, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v4, p1}, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v5, p1}, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/LetterboxConfigurationPersister;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/LetterboxConfiguration;-><init>(Landroid/content/Context;Lcom/android/server/wm/LetterboxConfigurationPersister;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/LetterboxConfigurationPersister;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    iput-object p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDeviceConfig:Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    invoke-static {p1}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundType:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxVerticalPositionMultiplier:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBookModePositionMultiplier:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxTabletopModePositionMultiplier:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsHorizontalReachabilityEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsVerticalReachabilityEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111019f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForHorizontalReachability:I

    invoke-static {p1, v2}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForVerticalReachability:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsEducationEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/LetterboxConfiguration;->setDefaultMinAspectRatioForUnresizableApps(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/LetterboxConfiguration;->mTranslucentLetterboxingEnabled:Z

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_CAMERA_COMPAT:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110197

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v0

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCameraCompatTreatmentEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110196

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCameraCompatSplitScreenAspectRatioEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110192

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCompatFakeFocusEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsPolicyForIgnoringRequestedOrientationEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x11101a1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsDisplayRotationImmersiveAppCompatPolicyEnabled:Z

    const-string v3, "enable_compat_camera_treatment"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->updateFlagActiveStatus(ZLjava/lang/String;)V

    const-string v2, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->updateFlagActiveStatus(ZLjava/lang/String;)V

    const-string p1, "allow_ignore_orientation_request"

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->updateFlagActiveStatus(ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCompatFakeFocusEnabled:Z

    const-string v0, "enable_compat_fake_focus"

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->updateFlagActiveStatus(ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mTranslucentLetterboxingEnabled:Z

    const-string v0, "enable_letterbox_translucent_activity"

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->updateFlagActiveStatus(ZLjava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxConfigurationPersister:Lcom/android/server/wm/LetterboxConfigurationPersister;

    invoke-virtual {p2}, Lcom/android/server/wm/LetterboxConfigurationPersister;->start()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/LetterboxConfiguration;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxConfigurationPersister:Lcom/android/server/wm/LetterboxConfigurationPersister;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/LetterboxConfiguration;-><init>(Landroid/content/Context;Lcom/android/server/wm/LetterboxConfigurationPersister;)V

    iput-object p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mGlobalLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    iput-object p2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public static synthetic lambda$movePositionForHorizontalReachabilityToNextLeftStop$5(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    sub-int/2addr p1, p0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$movePositionForHorizontalReachabilityToNextRightStop$4(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    add-int/2addr p1, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$movePositionForVerticalReachabilityToNextBottomStop$6(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    add-int/2addr p1, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$movePositionForVerticalReachabilityToNextTopStop$7(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    sub-int/2addr p1, p0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$new$0(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$new$1(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$new$2(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$new$3(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static letterboxBackgroundTypeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "LETTERBOX_BACKGROUND_WALLPAPER"

    return-object p0

    :cond_1
    const-string p0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND_FLOATING"

    return-object p0

    :cond_2
    const-string p0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND"

    return-object p0

    :cond_3
    const-string p0, "LETTERBOX_BACKGROUND_SOLID_COLOR"

    return-object p0
.end method

.method public static letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_RIGHT"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_CENTER"

    return-object p0

    :cond_2
    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_LEFT"

    return-object p0
.end method

.method public static letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_BOTTOM"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_CENTER"

    return-object p0

    :cond_2
    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_TOP"

    return-object p0
.end method

.method public static readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00ac

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public static readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x10e00ad

    goto :goto_0

    :cond_0
    const p1, 0x10e00ae

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move p0, p1

    :cond_2
    :goto_1
    return p0
.end method

.method public static readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x10e00af

    goto :goto_0

    :cond_0
    const p1, 0x10e00b0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move p0, p1

    :cond_2
    :goto_1
    return p0
.end method


# virtual methods
.method public getDefaultMinAspectRatioForUnresizableApps()F
    .locals 0

    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    return p0
.end method

.method public getDefaultPositionForHorizontalReachability()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForHorizontalReachability:I

    return p0
.end method

.method public getDefaultPositionForVerticalReachability()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForVerticalReachability:I

    return p0
.end method

.method public getFixedOrientationLetterboxAspectRatio()F
    .locals 0

    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return p0
.end method

.method public getHorizontalMultiplierForReachability(Z)F
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxConfigurationPersister:Lcom/android/server/wm/LetterboxConfigurationPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected letterbox position type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getIsAutomaticReachabilityInBookModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    return p0
.end method

.method public getIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    return p0
.end method

.method public getIsEducationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsEducationEnabled:Z

    return p0
.end method

.method public getIsHorizontalReachabilityEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsHorizontalReachabilityEnabled:Z

    return p0
.end method

.method public getIsSplitScreenAspectRatioForUnresizableAppsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    return p0
.end method

.method public getIsVerticalReachabilityEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsVerticalReachabilityEnabled:Z

    return p0
.end method

.method public getLetterboxActivityCornersRadius()I
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getCustomLetterboxActivityCornersRadius(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mGlobalLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxActivityCornersRadius()I

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    return p0
.end method

.method public getLetterboxBackgroundColor()Landroid/graphics/Color;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getCustomLetterboxBackgroundColor(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Color;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mGlobalLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    const v0, 0x1060200

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method public getLetterboxBackgroundType()I
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getCustomLetterboxBackgroundType(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundType()I

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundType:I

    return p0
.end method

.method public getLetterboxBackgroundWallpaperBlurRadius()I
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getCustomLetterboxBackgroundWallpaperBlurRadius(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mGlobalLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundWallpaperBlurRadius()I

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    return p0
.end method

.method public getLetterboxBackgroundWallpaperDarkScrimAlpha()F
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getCustomLetterboxBackgroundWallpaperDarkScrimAlpha(Lcom/android/server/wm/ActivityRecord;)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mGlobalLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundWallpaperDarkScrimAlpha()F

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return p0
.end method

.method public getLetterboxHorizontalPositionMultiplier(Z)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "ActivityTaskManager"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBookModePositionMultiplier:F

    cmpg-float v3, p1, v2

    if-ltz v3, :cond_1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLetterboxBookModePositionMultiplier out of bounds (isInBookMode=true): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBookModePositionMultiplier:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    return p1

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLetterboxBookModePositionMultiplier out of bounds (isInBookMode=false):"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBookModePositionMultiplier:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public getLetterboxPositionForHorizontalReachability(Z)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxConfigurationPersister:Lcom/android/server/wm/LetterboxConfigurationPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result p0

    return p0
.end method

.method public getLetterboxPositionForVerticalReachability(Z)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxConfigurationPersister:Lcom/android/server/wm/LetterboxConfigurationPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result p0

    return p0
.end method

.method public getLetterboxVerticalPositionMultiplier(Z)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxTabletopModePositionMultiplier:F

    cmpg-float p1, p0, v1

    if-ltz p1, :cond_1

    cmpl-float p1, p0, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxVerticalPositionMultiplier:F

    cmpg-float p1, p0, v1

    if-ltz p1, :cond_3

    cmpl-float p1, p0, v0

    if-lez p1, :cond_4

    :cond_3
    const/high16 p0, 0x3f000000    # 0.5f

    :cond_4
    return p0
.end method

.method public getMultiWindowLetterboxBackgroundColor()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerColorForMultiWindow(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getVerticalMultiplierForReachability(Z)F
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxConfigurationPersister:Lcom/android/server/wm/LetterboxConfigurationPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected letterbox position type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isCameraCompatRefreshCycleThroughStopEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    return p0
.end method

.method public isCameraCompatRefreshEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    return p0
.end method

.method public isCameraCompatSplitScreenAspectRatioEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCameraCompatSplitScreenAspectRatioEnabled:Z

    return p0
.end method

.method public isCameraCompatTreatmentEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCameraCompatTreatmentEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDeviceConfig:Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;

    const-string p1, "enable_compat_camera_treatment"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->getFlag(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCompatFakeFocusEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCompatFakeFocusEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDeviceConfig:Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;

    const-string v0, "enable_compat_fake_focus"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->getFlag(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisplayRotationImmersiveAppCompatPolicyEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsDisplayRotationImmersiveAppCompatPolicyEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDeviceConfig:Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;

    const-string p1, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->getFlag(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIgnoreOrientationRequestAllowed()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDeviceConfig:Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;

    const-string v0, "allow_ignore_orientation_request"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->getFlag(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isLetterboxActivityCornersRounded()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxActivityCornersRadius()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPolicyForIgnoringRequestedOrientationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsPolicyForIgnoringRequestedOrientationEnabled:Z

    return p0
.end method

.method public isTranslucentLetterboxingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mTranslucentLetterboxingEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDeviceConfig:Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;

    const-string v0, "enable_letterbox_translucent_activity"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxConfigurationDeviceConfig;->getFlag(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public movePositionForHorizontalReachabilityToNextLeftStop(Z)V
    .locals 1

    new-instance v0, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda4;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LetterboxConfiguration;->updatePositionForHorizontalReachability(ZLjava/util/function/Function;)V

    return-void
.end method

.method public movePositionForHorizontalReachabilityToNextRightStop(Z)V
    .locals 1

    new-instance v0, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda6;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LetterboxConfiguration;->updatePositionForHorizontalReachability(ZLjava/util/function/Function;)V

    return-void
.end method

.method public movePositionForVerticalReachabilityToNextBottomStop(Z)V
    .locals 1

    new-instance v0, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda7;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LetterboxConfiguration;->updatePositionForVerticalReachability(ZLjava/util/function/Function;)V

    return-void
.end method

.method public movePositionForVerticalReachabilityToNextTopStop(Z)V
    .locals 1

    new-instance v0, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/wm/LetterboxConfiguration$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LetterboxConfiguration;->updatePositionForVerticalReachability(ZLjava/util/function/Function;)V

    return-void
.end method

.method public resetCameraCompatRefreshCycleThroughStopEnabled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    return-void
.end method

.method public resetCameraCompatRefreshEnabled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    return-void
.end method

.method public resetDefaultMinAspectRatioForUnresizableApps()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxConfiguration;->setDefaultMinAspectRatioForUnresizableApps(F)V

    return-void
.end method

.method public resetDefaultPositionForHorizontalReachability()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForHorizontalReachability:I

    return-void
.end method

.method public resetDefaultPositionForVerticalReachability()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForVerticalReachability:I

    return-void
.end method

.method public resetEnabledAutomaticReachabilityInBookMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    return-void
.end method

.method public resetFixedOrientationLetterboxAspectRatio()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return-void
.end method

.method public resetIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    return-void
.end method

.method public resetIsEducationEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsEducationEnabled:Z

    return-void
.end method

.method public resetIsHorizontalReachabilityEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsHorizontalReachabilityEnabled:Z

    return-void
.end method

.method public resetIsSplitScreenAspectRatioForUnresizableAppsEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    return-void
.end method

.method public resetIsVerticalReachabilityEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsVerticalReachabilityEnabled:Z

    return-void
.end method

.method public resetLetterboxActivityCornersRadius()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    return-void
.end method

.method public resetLetterboxBackgroundColor()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    iput-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    return-void
.end method

.method public resetLetterboxBackgroundType()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundType:I

    return-void
.end method

.method public resetLetterboxBackgroundWallpaperBlurRadius()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    return-void
.end method

.method public resetLetterboxBackgroundWallpaperDarkScrimAlpha()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return-void
.end method

.method public resetLetterboxHorizontalPositionMultiplier()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    return-void
.end method

.method public resetLetterboxVerticalPositionMultiplier()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxVerticalPositionMultiplier:F

    return-void
.end method

.method public resetTranslucentLetterboxingEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxConfiguration;->setTranslucentLetterboxingEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxConfiguration;->setTranslucentLetterboxingOverrideEnabled(Z)V

    return-void
.end method

.method public setCameraCompatRefreshCycleThroughStopEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    return-void
.end method

.method public setCameraCompatRefreshEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    return-void
.end method

.method public setDefaultMinAspectRatioForUnresizableApps(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    return-void
.end method

.method public setDefaultPositionForHorizontalReachability(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForHorizontalReachability:I

    return-void
.end method

.method public setDefaultPositionForVerticalReachability(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForVerticalReachability:I

    return-void
.end method

.method public setFixedOrientationLetterboxAspectRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return-void
.end method

.method public setIsAutomaticReachabilityInBookModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    return-void
.end method

.method public setIsCompatFakeFocusEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsCompatFakeFocusEnabled:Z

    return-void
.end method

.method public setIsDisplayAspectRatioEnabledForFixedOrientationLetterbox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    return-void
.end method

.method public setIsEducationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsEducationEnabled:Z

    return-void
.end method

.method public setIsHorizontalReachabilityEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsHorizontalReachabilityEnabled:Z

    return-void
.end method

.method public setIsSplitScreenAspectRatioForUnresizableAppsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    return-void
.end method

.method public setIsVerticalReachabilityEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsVerticalReachabilityEnabled:Z

    return-void
.end method

.method public setLetterboxActivityCornersRadius(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    return-void
.end method

.method public setLetterboxBackgroundColor(Landroid/graphics/Color;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    return-void
.end method

.method public setLetterboxBackgroundColorResourceId(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    return-void
.end method

.method public setLetterboxBackgroundType(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundType:I

    return-void
.end method

.method public setLetterboxBackgroundWallpaperBlurRadius(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    return-void
.end method

.method public setLetterboxBackgroundWallpaperDarkScrimAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return-void
.end method

.method public setLetterboxHorizontalPositionMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    return-void
.end method

.method public setLetterboxVerticalPositionMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxVerticalPositionMultiplier:F

    return-void
.end method

.method public setTranslucentLetterboxingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mTranslucentLetterboxingEnabled:Z

    return-void
.end method

.method public setTranslucentLetterboxingOverrideEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxConfiguration;->setTranslucentLetterboxingEnabled(Z)V

    return-void
.end method

.method public final updatePositionForHorizontalReachability(ZLjava/util/function/Function;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxConfigurationPersister:Lcom/android/server/wm/LetterboxConfigurationPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LetterboxConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxConfigurationPersister:Lcom/android/server/wm/LetterboxConfigurationPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LetterboxConfigurationPersister;->setLetterboxPositionForHorizontalReachability(ZI)V

    return-void
.end method

.method public final updatePositionForVerticalReachability(ZLjava/util/function/Function;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxConfigurationPersister:Lcom/android/server/wm/LetterboxConfigurationPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LetterboxConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxConfigurationPersister:Lcom/android/server/wm/LetterboxConfigurationPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LetterboxConfigurationPersister;->setLetterboxPositionForVerticalReachability(ZI)V

    return-void
.end method
