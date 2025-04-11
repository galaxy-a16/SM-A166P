.class public Lcom/android/server/wm/OrientationController;
.super Lcom/android/server/wm/PackagesChangeAsTask;
.source "OrientationController.java"

# interfaces
.implements Lcom/android/server/wm/BoundsCompatController;


# instance fields
.field public final mDefaultDisabledList:Ljava/util/List;

.field public mDefaultEnabled:Z

.field public final mDefaultEnabledList:Ljava/util/List;

.field public mDisallowWhenLandscapeFixedApp:Z

.field public final mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

.field public mRotationCompatPolicy:I

.field public final mTabletRotationCompatList:Ljava/util/List;

.field public mTmpRect:Landroid/graphics/Rect;

.field public final mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;


# direct methods
.method public static synthetic $r8$lambda$Qc8LvIwXf3uJmAbt8qUFwjknFj4(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/OrientationController;->lambda$onUpdateValueToTask$1(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kVkXDQ0JOezTYXwRn0BSm_fqvaY(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/OrientationController;->lambda$new$0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 7

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChangeAsTask;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 92
    new-instance v4, Lcom/android/server/wm/OrientationController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/wm/OrientationController$$ExternalSyntheticLambda0;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/OrientationController;->mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

    .line 94
    new-instance p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const/16 v1, 0x40

    sget-object v2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    const-string v3, "OrientationControlPackageMap"

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    const/4 v6, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;Z)V

    iput-object p1, p0, Lcom/android/server/wm/OrientationController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 112
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_DEFAULT_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/server/wm/OrientationController;->mDefaultEnabled:Z

    .line 113
    iput-boolean v6, p0, Lcom/android/server/wm/OrientationController;->mDisallowWhenLandscapeFixedApp:Z

    const/4 v0, 0x2

    .line 600
    iput v0, p0, Lcom/android/server/wm/OrientationController;->mRotationCompatPolicy:I

    .line 117
    filled-new-array {p1}, [Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackagesChange;->setUserChanges([Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    .line 118
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_IGNORE_APP_ROTATION_LIST:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 119
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {p1, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/android/server/wm/OrientationController;->mDefaultEnabledList:Ljava/util/List;

    .line 120
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_IGNORE_APP_ROTATION_DISABLED_LIST:Z

    if-eqz p1, :cond_2

    .line 121
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {p1, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    goto :goto_2

    :cond_2
    move-object p1, v0

    .line 122
    :goto_2
    iput-object p1, p0, Lcom/android/server/wm/OrientationController;->mDefaultDisabledList:Ljava/util/List;

    .line 123
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_TABLET_ROTATION_COMPAT_LIST:Z

    if-eqz p1, :cond_3

    .line 124
    new-instance v0, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->TABLET_APP_ROTATION_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 125
    :cond_3
    iput-object v0, p0, Lcom/android/server/wm/OrientationController;->mTabletRotationCompatList:Ljava/util/List;

    return-void
.end method

.method public static getRotationCompatReasonFromSizeChangesSupported(IZ)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p0, 0xcf

    goto :goto_0

    :cond_1
    const/16 p0, 0xcd

    :goto_0
    return p0

    :cond_2
    if-eqz p1, :cond_3

    const/16 p0, 0xce

    goto :goto_1

    :cond_3
    const/16 p0, 0xcc

    :goto_1
    return p0

    :cond_4
    if-eqz p1, :cond_5

    const/16 p0, 0x66

    goto :goto_2

    :cond_5
    const/16 p0, 0x65

    :goto_2
    return p0
.end method

.method public static isEnabled(Lcom/android/server/wm/Task;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 571
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsFullScreen:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsAspectRatio:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$new$0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 93
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onUpdateValueToTask$1(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 426
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    return-void
.end method

.method public static orientationToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 580
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "land"

    return-object p0

    :cond_1
    const-string/jumbo p0, "port"

    return-object p0
.end method

.method public static policyToString(Lcom/android/server/wm/Task;)Ljava/lang/String;
    .locals 1

    .line 584
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsFullScreen:Z

    if-eqz v0, :cond_0

    const-string p0, "ENABLED_AS_FULL_SCREEN"

    return-object p0

    .line 587
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsAspectRatio:Z

    if-eqz p0, :cond_1

    const-string p0, "ENABLED_AS_ASPECT_RATIO"

    return-object p0

    :cond_1
    const-string p0, "DISABLED"

    return-object p0
.end method

.method public static rotationCompatPolicyToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 762
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "AUTO"

    return-object p0

    :cond_1
    const-string p0, "ALWAYS_ENABLED"

    return-object p0

    :cond_2
    const-string p0, "ALWAYS_DISABLED"

    return-object p0
.end method

.method public static rotationCompatReasonToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x69

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 808
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "IN_DESKTOP_MODE"

    return-object p0

    :pswitch_1
    const-string p0, "IN_SPLIT_ACTIVITY_MODE"

    return-object p0

    :pswitch_2
    const-string p0, "FIXED_ORIENTATION_LANDSCAPE"

    return-object p0

    :pswitch_3
    const-string p0, "UNFIXED_ORIENTATION"

    return-object p0

    :pswitch_4
    const-string p0, "IN_ACTIVITY_EMBEDDED"

    return-object p0

    :pswitch_5
    const-string p0, "NON_DEFAULT_DISPLAY"

    return-object p0

    :pswitch_6
    const-string p0, "RESIZABLE_ACTIVITY"

    return-object p0

    :pswitch_7
    const-string p0, "DISPLAY_COMPAT_POLICY_SUPPORTED_OVERRIDE"

    return-object p0

    :pswitch_8
    const-string p0, "DISPLAY_COMPAT_POLICY_SUPPORTED_METADATA"

    return-object p0

    :pswitch_9
    const-string p0, "SIZE_CHANGES_SUPPORTED_OVERRIDE"

    return-object p0

    :pswitch_a
    const-string p0, "SIZE_CHANGES_SUPPORTED_METADATA"

    return-object p0

    :pswitch_b
    const-string p0, "POLICY_DISABLED"

    return-object p0

    :pswitch_c
    const-string p0, "DISPLAY_FOLDED"

    return-object p0

    :pswitch_d
    const-string p0, "IN_MULTI_WINDOW_MODE"

    return-object p0

    :pswitch_e
    const-string p0, "ROTATION_COMPAT_MODE_DISABLED"

    return-object p0

    :pswitch_f
    const-string p0, "UNRESIZABLE_ACTIVITY"

    return-object p0

    :pswitch_10
    const-string p0, "DISPLAY_COMPAT_POLICY_UNSUPPORTED_OVERRIDE"

    return-object p0

    :pswitch_11
    const-string p0, "SIZE_CHANGES_UNSUPPORTED_OVERRIDE"

    return-object p0

    :pswitch_12
    const-string p0, "ROTATION_COMPAT_MODE_ENABLED"

    return-object p0

    :cond_0
    const-string p0, "RESIZABLE_ACTIVITY_UNSUPPORTED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public adjustBounds(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .locals 1

    .line 834
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->canHaveSizeCompatBounds(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    invoke-interface {p0}, Lcom/android/server/wm/BoundsCompatController;->getBoundsCompatUtils()Lcom/android/server/wm/BoundsCompatUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BoundsCompatUtils;->adjustBoundsAsSizeCompatMode(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V

    return-void

    .line 838
    :cond_0
    invoke-interface {p0}, Lcom/android/server/wm/BoundsCompatController;->getBoundsCompatUtils()Lcom/android/server/wm/BoundsCompatUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BoundsCompatUtils;->adjustBoundsAsMinAspectRatio(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final assertBooleanOptionsRequires(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    .line 499
    array-length p0, p2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    aget-object p2, p2, p0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 501
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " options requires: [true/false]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public canHaveSizeCompatBounds(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 829
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->shouldUseSizeCompatMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsTaskOrientationMismatched:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canRotationCompatMode(I)Z
    .locals 0

    .line 0
    const/16 p0, 0x64

    if-lt p1, p0, :cond_0

    const/16 p0, 0xc8

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final canSetOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .locals 2

    .line 321
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsAspectRatio:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p1

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->isAllowedScreenOrientation(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne p2, v1, :cond_2

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->isDisallowWhenLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public clearRotationCompatMode(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 2

    .line 711
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 715
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCreatedByRotationCompat:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 716
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    return-void

    :cond_1
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 720
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mConfigChangeNeeded:Z

    .line 721
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iput-object p0, p2, Lcom/android/server/wm/BoundsCompatRecord;->mPendingCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 724
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 725
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    .line 729
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->clearSizeCompatMode(ZZ)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 444
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultEnabled="

    .line 445
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    iget-boolean v0, p0, Lcom/android/server/wm/OrientationController;->mDefaultEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ", mDisallowWhenLandscapeFixedApp="

    .line 447
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    iget-boolean v0, p0, Lcom/android/server/wm/OrientationController;->mDisallowWhenLandscapeFixedApp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 449
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 450
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v0, :cond_0

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mRotationCompatPolicy="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OrientationController;->mRotationCompatPolicy:I

    .line 452
    invoke-static {p0}, Lcom/android/server/wm/OrientationController;->rotationCompatPolicyToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 451
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    return-void
.end method

.method public executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 3

    .line 459
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "-setOrientationControlDefault"

    .line 462
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 463
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/OrientationController;->assertBooleanOptionsRequires(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 465
    :try_start_0
    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/OrientationController;->mDefaultEnabled:Z

    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mDefaultEnabled="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/OrientationController;->mDefaultEnabled:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_2
    const-string v0, "-setDisallowWhenLandscapeFixedApp"

    .line 470
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 471
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/OrientationController;->assertBooleanOptionsRequires(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 473
    :try_start_2
    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/OrientationController;->mDisallowWhenLandscapeFixedApp:Z

    .line 474
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mDisallowWhenLandscapeFixedApp="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/OrientationController;->mDisallowWhenLandscapeFixedApp:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 479
    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v0, :cond_6

    const-string v0, "-setRotationCompatPolicy"

    .line 480
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 482
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/OrientationController;->setRotationCompatPolicy([Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 484
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [RotationCompatPolicy]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "RotationCompatPolicyList"

    .line 485
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 486
    filled-new-array {v1, v2, p0}, [I

    move-result-object p0

    :goto_0
    const/4 p1, 0x3

    if-ge v1, p1, :cond_5

    .line 488
    aget p1, p0, v1

    .line 489
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wm/OrientationController;->rotationCompatPolicyToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v2

    :cond_6
    return v1
.end method

.method public final getAdjustedOrientation(I)I
    .locals 1

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->isDisallowWhenLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0

    :cond_1
    const/4 p0, 0x4

    const/16 v0, 0xa

    if-eq p1, p0, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0xd

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public getAdjustedOrientation(Lcom/android/server/wm/ActivityRecord;IZ)I
    .locals 1

    const/4 v0, -0x2

    .line 218
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/OrientationController;->getAdjustedOrientation(Lcom/android/server/wm/ActivityRecord;IZI)I

    move-result p0

    return p0
.end method

.method public getAdjustedOrientation(Lcom/android/server/wm/ActivityRecord;IZI)I
    .locals 3

    const/4 v0, -0x2

    if-eqz p1, :cond_7

    .line 224
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v1

    .line 229
    invoke-virtual {p0, v1}, Lcom/android/server/wm/OrientationController;->isAllowedScreenOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x3

    if-eqz p3, :cond_3

    if-ne v1, v2, :cond_2

    return v0

    .line 237
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/OrientationController;->getAdjustedOrientation(I)I

    move-result p0

    return p0

    :cond_3
    if-lez p2, :cond_4

    if-ne v1, v2, :cond_4

    return v0

    :cond_4
    if-ne p4, v2, :cond_5

    .line 248
    invoke-virtual {p0, v1}, Lcom/android/server/wm/OrientationController;->getAdjustedOrientation(I)I

    move-result p0

    return p0

    .line 254
    :cond_5
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 255
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 256
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/wm/OrientationController;->getAdjustedOrientation(I)I

    move-result p0

    return p0

    :cond_7
    :goto_0
    return v0
.end method

.method public final getDefaultEnabledPolicy(ILjava/lang/String;Ljava/lang/Integer;)I
    .locals 7

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/OrientationController;->mDefaultDisabledList:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, -0x1

    const/16 v4, 0x40

    const/16 v5, 0x80

    if-eqz p3, :cond_5

    .line 169
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v2

    .line 170
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v4, :cond_2

    move p3, v1

    goto :goto_2

    :cond_2
    move p3, v2

    :goto_2
    if-nez v6, :cond_3

    if-nez p3, :cond_3

    return v3

    :cond_3
    if-eq v0, v6, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_4

    .line 178
    :cond_5
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PackagesChange;->getLauncherActivities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 179
    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    if-nez v1, :cond_8

    return v3

    :cond_8
    :goto_4
    if-eqz v1, :cond_a

    if-eqz v0, :cond_9

    move v4, v5

    .line 190
    :cond_9
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wm/OrientationController;->setPolicyInternal(ILjava/lang/String;I)V

    :cond_a
    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    const/16 v2, 0x1f

    :goto_5
    return v2
.end method

.method public getPolicy(ILjava/lang/String;)I
    .locals 3

    .line 138
    invoke-virtual {p0, p2}, Lcom/android/server/wm/OrientationController;->isExcludedPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 141
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/PackagesChange;->getAdjustedUserIdIfNeeded(I)I

    move-result p1

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/OrientationController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 143
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_DEFAULT_ENABLED:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/OrientationController;->mDefaultEnabled:Z

    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/OrientationController;->getDefaultEnabledPolicy(ILjava/lang/String;Ljava/lang/Integer;)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    return p1

    :cond_1
    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->getPolicyFromLegacyFlag(I)I

    move-result p0

    return p0

    .line 152
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/OrientationController;->mDefaultEnabledList:Ljava/util/List;

    if-eqz p0, :cond_3

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x1f

    return p0

    :cond_3
    return v1
.end method

.method public final getPolicyFromLegacyFlag(I)I
    .locals 2

    .line 0
    and-int/lit16 p0, p1, -0xc1

    if-eqz p0, :cond_2

    const/4 p1, 0x7

    if-eq p0, p1, :cond_2

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_2

    const/16 v1, 0x20

    if-eq p0, v1, :cond_2

    and-int/lit8 v1, p0, 0x7

    if-eqz v1, :cond_1

    and-int/lit8 p0, p0, 0x18

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    :cond_2
    return p0
.end method

.method public getPreferredConfigurationOrientation(Lcom/android/server/wm/ActivityRecord;I)I
    .locals 6

    .line 377
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 378
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v1

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->useBehindOrientation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 382
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/OrientationController;->getPreferredConfigurationOrientation(Lcom/android/server/wm/ActivityRecord;I)I

    move-result p0

    return p0

    :cond_1
    return p2

    .line 390
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p0

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    const/4 v4, -0x1

    const/4 v5, -0x2

    if-eq v1, v4, :cond_5

    if-ne v1, v5, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    .line 394
    :cond_5
    :goto_1
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget v4, v2, Lcom/android/server/wm/BoundsCompatRecord;->mScreenOrientationInMultiWindow:I

    if-eq v4, v5, :cond_6

    if-ne v4, v1, :cond_6

    .line 396
    iget p0, v2, Lcom/android/server/wm/BoundsCompatRecord;->mPreferredOrientation:I

    return p0

    :cond_6
    if-eqz v3, :cond_7

    return p0

    :cond_7
    if-eqz v0, :cond_8

    .line 402
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 403
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPreferredOrientation:I

    return p0

    :cond_8
    return p2
.end method

.method public getRotationCompatReason(Lcom/android/server/wm/ActivityRecord;)I
    .locals 3

    .line 631
    iget v0, p0, Lcom/android/server/wm/OrientationController;->mRotationCompatPolicy:I

    if-nez v0, :cond_0

    const/16 p0, 0xc8

    return p0

    .line 634
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT_FOR_FOLD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 635
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0xca

    return p0

    .line 638
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0xd1

    return p0

    .line 641
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 646
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v1

    .line 647
    invoke-virtual {p0, v1}, Lcom/android/server/wm/OrientationController;->isAllowedScreenOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 p0, 0xd7

    return p0

    .line 650
    :cond_3
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 651
    iget-boolean v1, p0, Lcom/android/server/wm/OrientationController;->mDisallowWhenLandscapeFixedApp:Z

    if-eqz v1, :cond_5

    const/16 p0, 0xd4

    return p0

    .line 654
    :cond_4
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 664
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/OrientationController;->mTabletRotationCompatList:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v2, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_6

    .line 665
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 p0, 0x69

    return p0

    .line 668
    :cond_6
    iget p0, p0, Lcom/android/server/wm/OrientationController;->mRotationCompatPolicy:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_7

    const/16 p0, 0x64

    return p0

    .line 672
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->supportsSizeChanges()I

    move-result p0

    const/4 v2, 0x0

    .line 671
    invoke-static {p0, v2}, Lcom/android/server/wm/OrientationController;->getRotationCompatReasonFromSizeChangesSupported(IZ)I

    move-result p0

    if-eqz p0, :cond_8

    return p0

    .line 676
    :cond_8
    iget-object p0, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_9

    .line 678
    invoke-static {}, Lcom/samsung/android/server/util/DisplayCompatPolicies;->getDisplayCompatPolicies()Lcom/samsung/android/server/util/DisplayCompatPolicies;

    move-result-object p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/util/DisplayCompatPolicies;->getPolicy(Ljava/lang/String;)I

    move-result p0

    .line 677
    invoke-static {p0}, Lcom/samsung/android/server/util/DisplayCompatPolicies;->getSizeChangesSupported(I)I

    move-result p0

    .line 679
    invoke-static {p0, v1}, Lcom/android/server/wm/OrientationController;->getRotationCompatReasonFromSizeChangesSupported(IZ)I

    move-result p0

    if-eqz p0, :cond_9

    return p0

    .line 685
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result p0

    if-eqz p0, :cond_a

    const/16 p0, 0xd0

    goto :goto_0

    :cond_a
    const/16 p0, 0x67

    :goto_0
    return p0

    .line 656
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->useBehindOrientation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 657
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 658
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eqz p0, :cond_c

    const/16 p0, 0x68

    return p0

    :cond_c
    const/16 p0, 0xd3

    return p0
.end method

.method public interceptSetOrientationIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 277
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 286
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mScreenOrientationInMultiWindow:I

    return v0

    .line 290
    :cond_2
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    const/4 v3, -0x2

    iput v3, v2, Lcom/android/server/wm/BoundsCompatRecord;->mScreenOrientationInMultiWindow:I

    .line 292
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/OrientationController;->canSetOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 293
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 295
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v4, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v0

    :goto_0
    if-nez v4, :cond_4

    if-nez v2, :cond_6

    .line 296
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean v2, v2, Lcom/android/server/wm/BoundsCompatRecord;->mIsTaskOrientationMismatched:Z

    if-eqz v2, :cond_6

    .line 300
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/OrientationController;->mTmpRect:Landroid/graphics/Rect;

    if-nez v2, :cond_5

    .line 301
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/OrientationController;->mTmpRect:Landroid/graphics/Rect;

    .line 303
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/OrientationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 307
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 308
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/OrientationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget-object p0, p0, Lcom/android/server/wm/OrientationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/ChangeTransitionController;->handleActivityBoundsChanged(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    :cond_6
    return v3

    :cond_7
    :goto_1
    return v0
.end method

.method public final isAllowedScreenOrientation(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/16 p0, 0xd

    if-eq p1, p0, :cond_0

    const/16 p0, 0xe

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isDisallowWhenLandscape(I)Z
    .locals 0

    .line 350
    iget-boolean p0, p0, Lcom/android/server/wm/OrientationController;->mDisallowWhenLandscapeFixedApp:Z

    if-eqz p0, :cond_0

    .line 351
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExcludedPackage(Ljava/lang/String;)Z
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackagesChange;->isSettingsPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isIgnoreOrientationRequest(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 355
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 358
    :cond_0
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_CAMERA_COMPAT:Z

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    .line 359
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->isOverrideRespectRequestedOrientationEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 362
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result p0

    invoke-static {p0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 363
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    if-nez p0, :cond_2

    .line 364
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public logInRotationForOrientation(Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 528
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mLastOrientationControlSource:Lcom/android/server/wm/WindowContainer;

    .line 529
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rotationForOrientation, Orientation has been adjusted"

    .line 533
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p0, v0, :cond_0

    const-string p0, ", OriginalOrientation="

    .line 535
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result p0

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p0

    .line 535
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_0
    const-string v0, ", OrientationControlSource="

    .line 538
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_5

    .line 541
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 542
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OrientationController;->isEnabled(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 545
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rotationForOrientation, Orientation is not adjusted"

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    if-eqz v1, :cond_3

    const-string v1, ", mOrientation="

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result v1

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", containsClosing="

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", containsOpening="

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isVisibleRequested="

    .line 552
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p1, ", inMultiWindowMode="

    .line 554
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", inSizeCompatMode="

    .line 562
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :goto_0
    move-object p1, v0

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    const-string p0, "OrientationController"

    .line 566
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public onDumpInTask(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 433
    invoke-static {p3}, Lcom/android/server/wm/OrientationController;->isEnabled(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 436
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "mOrientationControlPolicy="

    .line 437
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    invoke-static {p3}, Lcom/android/server/wm/OrientationController;->policyToString(Lcom/android/server/wm/Task;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public onUpdateValueToTask(Lcom/android/server/wm/Task;Ljava/lang/String;Z)V
    .locals 5

    .line 417
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsFullScreen:Z

    .line 418
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsAspectRatio:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 420
    iget v3, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/OrientationController;->getPolicy(ILjava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    const/4 p2, 0x7

    const/4 v3, 0x1

    if-ne p0, p2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v2

    .line 421
    :goto_1
    iput-boolean p2, p1, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsFullScreen:Z

    const/16 v4, 0x1f

    if-ne p0, v4, :cond_2

    move v2, v3

    .line 422
    :cond_2
    iput-boolean v2, p1, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsAspectRatio:Z

    if-eqz p3, :cond_4

    if-ne p2, v0, :cond_3

    if-eq v2, v1, :cond_4

    .line 425
    :cond_3
    new-instance p0, Lcom/android/server/wm/OrientationController$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/wm/OrientationController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_4
    return-void
.end method

.method public setPolicy(ILjava/lang/String;I)V
    .locals 0

    .line 130
    invoke-virtual {p0, p3}, Lcom/android/server/wm/OrientationController;->getPolicyFromLegacyFlag(I)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/OrientationController;->setPolicyInternal(ILjava/lang/String;I)V

    return-void
.end method

.method public final setPolicyInternal(ILjava/lang/String;I)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/server/wm/OrientationController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setRotationCompatPolicy([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 508
    :try_start_0
    iget v1, p0, Lcom/android/server/wm/OrientationController;->mRotationCompatPolicy:I

    const/4 v2, 0x0

    .line 509
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-ne v1, p1, :cond_2

    .line 516
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wm/OrientationController;->rotationCompatPolicyToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already set"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 519
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/android/server/wm/OrientationController;->mRotationCompatPolicy:I

    .line 520
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RotationCompatPolicy is changed "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-static {v1}, Lcom/android/server/wm/OrientationController;->rotationCompatPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-static {p1}, Lcom/android/server/wm/OrientationController;->rotationCompatPolicyToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 520
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public shouldCreateCompatDisplayInsets(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    .line 733
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 736
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 742
    :cond_1
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRotationCompatModeInherited:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    return v1

    .line 745
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p0

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public shouldUseSandboxDisplay(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 819
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->canHaveSizeCompatBounds(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public shouldUseSandboxViewBoundsAndMotionEvent(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 824
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->canHaveSizeCompatBounds(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public shouldUseSizeCompatMode(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 813
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final useBehindOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 409
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 412
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->providesOrientation()Z

    move-result p0

    if-nez p0, :cond_0

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
