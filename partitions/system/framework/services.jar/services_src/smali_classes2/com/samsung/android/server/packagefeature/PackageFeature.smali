.class public final enum Lcom/samsung/android/server/packagefeature/PackageFeature;
.super Ljava/lang/Enum;
.source "PackageFeature.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum ALLOW_MULTI_WINDOW:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum ALLOW_NO_WAIT_ROTATION_FOR_4_1:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum BROADCAST_RECEIVER_ALLOW_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum COVER_LAUNCHER_WIDGET:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum COVER_LAUNCHER_WIDGET_CHN:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum DEX_LAUNCH_B:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum DEX_LAUNCH_RESTART:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FIXED_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FLEX_MODE_APP:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FLEX_PANEL_DEFAULT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum HIGH_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum NAVIGATION_LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum SPLIT_ACTIVITY:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum TABLET_APP_ROTATION_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum TABLET_MIN_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum TEST_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeature;


# instance fields
.field private mController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

.field public final mDebugCommand:Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

.field public mEnabled:Z

.field public final mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public final mName:Ljava/lang/String;

.field private mTmpCallbacks:Ljava/util/List;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/server/packagefeature/PackageFeature;
    .locals 21

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->FIXED_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v2, Lcom/samsung/android/server/packagefeature/PackageFeature;->TABLET_MIN_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v3, Lcom/samsung/android/server/packagefeature/PackageFeature;->TABLET_APP_ROTATION_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v4, Lcom/samsung/android/server/packagefeature/PackageFeature;->FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v5, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v6, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v7, Lcom/samsung/android/server/packagefeature/PackageFeature;->FLEX_MODE_APP:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v8, Lcom/samsung/android/server/packagefeature/PackageFeature;->FLEX_PANEL_DEFAULT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v9, Lcom/samsung/android/server/packagefeature/PackageFeature;->ALLOW_MULTI_WINDOW:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v10, Lcom/samsung/android/server/packagefeature/PackageFeature;->SPLIT_ACTIVITY:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v11, Lcom/samsung/android/server/packagefeature/PackageFeature;->ALLOW_NO_WAIT_ROTATION_FOR_4_1:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v12, Lcom/samsung/android/server/packagefeature/PackageFeature;->DEX_LAUNCH_B:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v13, Lcom/samsung/android/server/packagefeature/PackageFeature;->DEX_LAUNCH_RESTART:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v14, Lcom/samsung/android/server/packagefeature/PackageFeature;->COVER_LAUNCHER_WIDGET:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v15, Lcom/samsung/android/server/packagefeature/PackageFeature;->COVER_LAUNCHER_WIDGET_CHN:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v16, Lcom/samsung/android/server/packagefeature/PackageFeature;->LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v17, Lcom/samsung/android/server/packagefeature/PackageFeature;->HIGH_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v18, Lcom/samsung/android/server/packagefeature/PackageFeature;->NAVIGATION_LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v19, Lcom/samsung/android/server/packagefeature/PackageFeature;->BROADCAST_RECEIVER_ALLOW_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v20, Lcom/samsung/android/server/packagefeature/PackageFeature;->TEST_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    filled-new-array/range {v0 .. v20}, [Lcom/samsung/android/server/packagefeature/PackageFeature;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 19

    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v1, "DISPLAY_COMPAT"

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DISPLAY_COMPAT_POLICIES:Z

    const/4 v3, 0x1

    sget-object v15, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const-string v5, "displayCompat"

    new-instance v6, Lcom/samsung/android/server/packagefeature/DisplayCompatDebugCommand;

    invoke-direct {v6}, Lcom/samsung/android/server/packagefeature/DisplayCompatDebugCommand;-><init>()V

    move-object v0, v7

    move-object v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v7, Lcom/samsung/android/server/packagefeature/PackageFeature;->DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "FIXED_ASPECT_RATIO"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v13, "fixedAspectRatio"

    new-instance v14, Lcom/samsung/android/server/packagefeature/FoldMinAspectRatioDebugCommand;

    invoke-direct {v14}, Lcom/samsung/android/server/packagefeature/FoldMinAspectRatioDebugCommand;-><init>()V

    move-object v8, v0

    move-object v12, v15

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->FIXED_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "TABLET_MIN_ASPECT_RATIO"

    const/4 v10, 0x2

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_TABLET_MIN_ASPECT_RATIO_MODE:Z

    const-string/jumbo v13, "tabletMinAspectRatio"

    new-instance v14, Lcom/samsung/android/server/packagefeature/TabletMinAspectRatioDebugCommand;

    invoke-direct {v14}, Lcom/samsung/android/server/packagefeature/TabletMinAspectRatioDebugCommand;-><init>()V

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->TABLET_MIN_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "TABLET_APP_ROTATION_COMPAT"

    const/4 v10, 0x3

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_TABLET_ROTATION_COMPAT_LIST:Z

    const-string/jumbo v13, "tabletAppRotationCompat"

    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v1, "-setTabletAppRotationCompat"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->TABLET_APP_ROTATION_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "FULL_SCREEN"

    const/4 v10, 0x4

    const/4 v11, 0x1

    const-string v13, "fullScreen"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "IGNORE_APP_ROTATION"

    const/4 v10, 0x5

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_IGNORE_APP_ROTATION_LIST:Z

    const-string v13, "ignoreAppRotation"

    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v1, "-setIgnoreAppRotation"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "IGNORE_APP_ROTATION_DISABLED"

    const/4 v10, 0x6

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_IGNORE_APP_ROTATION_DISABLED_LIST:Z

    const-string v13, "ignoreAppRotationDisabled"

    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v1, "-setIgnoreAppRotationDisabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "FLEX_MODE_APP"

    const/4 v10, 0x7

    const/4 v11, 0x0

    const-string v13, "flexModeApp"

    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v1, "-setFlexModeApp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->FLEX_MODE_APP:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "FLEX_PANEL_DEFAULT"

    const/16 v10, 0x8

    const-string v13, "flexPanelDefault"

    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v1, "-setFlexPanelDefault"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->FLEX_PANEL_DEFAULT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "ALLOW_MULTI_WINDOW"

    const/16 v10, 0x9

    const/4 v11, 0x1

    const-string v13, "allowMultiWindow"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->ALLOW_MULTI_WINDOW:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "SPLIT_ACTIVITY"

    const/16 v10, 0xa

    const/4 v11, 0x0

    const-string/jumbo v13, "splitActivity"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->SPLIT_ACTIVITY:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "ALLOW_NO_WAIT_ROTATION_FOR_4_1"

    const/16 v10, 0xb

    const-string v13, "allowNoWaitRotationFor_4_1"

    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v1, "-setAllowNoWaitRotation"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->ALLOW_NO_WAIT_ROTATION_FOR_4_1:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "DEX_LAUNCH_B"

    const/16 v10, 0xc

    const-string v13, "dexLaunchBlock"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->DEX_LAUNCH_B:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "DEX_LAUNCH_RESTART"

    const/16 v10, 0xd

    const-string v13, "dexLaunchRestart"

    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v1, "-setDexRestart"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->DEX_LAUNCH_RESTART:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "COVER_LAUNCHER_WIDGET"

    const/16 v10, 0xe

    const-string v13, "coverLauncherWidget"

    new-instance v14, Lcom/samsung/android/server/packagefeature/CoverLauncherWidgetDebugCommand;

    invoke-direct {v14}, Lcom/samsung/android/server/packagefeature/CoverLauncherWidgetDebugCommand;-><init>()V

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->COVER_LAUNCHER_WIDGET:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v9, "COVER_LAUNCHER_WIDGET_CHN"

    const/16 v10, 0xf

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_LAUNCHER_WIDGET_POLICY_CHN:Z

    const-string v13, "coverLauncherWidgetChn"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->COVER_LAUNCHER_WIDGET_CHN:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v2, "LOW_REFRESH_RATE"

    const/16 v3, 0x10

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    sget-object v12, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->REFRESH_RATE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const-string v6, "lowRefreshRate"

    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v1, "-setLowRefreshRate"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    move-object v1, v0

    move-object v5, v12

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v6, "HIGH_REFRESH_RATE"

    const/16 v7, 0x11

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    const-string v10, "highRefreshRate"

    new-instance v11, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v1, "-setHighRefreshRate"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    move-object v5, v0

    move-object v9, v12

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->HIGH_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v6, "NAVIGATION_LOW_REFRESH_RATE"

    const/16 v7, 0x12

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_VRR_NAVIGATION_LOW_REFRESH_RATE:Z

    const-string/jumbo v10, "naviAppLowRefreshRate"

    new-instance v11, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v1, "-setNaviAppLowRefreshRate"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->NAVIGATION_LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v14, "BROADCAST_RECEIVER_ALLOW_LIST"

    const/16 v15, 0x13

    const/16 v16, 0x1

    sget-object v17, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->BROADCAST_RECEIVER_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const-string v18, "BroadcastReceiverAllowList"

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->BROADCAST_RECEIVER_ALLOW_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string v2, "TEST_PACKAGE_FEATURE"

    const/16 v3, 0x14

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sget-object v5, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->TEST_PACKAGE_FEATURE_GROUP:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const-string/jumbo v6, "testPackageFeature"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->TEST_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeature;->$values()[Lcom/samsung/android/server/packagefeature/PackageFeature;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mTmpCallbacks:Ljava/util/List;

    iput-boolean p3, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mEnabled:Z

    iput-object p4, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iput-object p5, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mDebugCommand:Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeature;
    .locals 1

    const-class v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/packagefeature/PackageFeature;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-virtual {v0}, [Lcom/samsung/android/server/packagefeature/PackageFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/packagefeature/PackageFeature;

    return-object v0
.end method


# virtual methods
.method public registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mTmpCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mTmpCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setPackageFeatureController(Lcom/samsung/android/server/packagefeature/PackageFeatureController;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mTmpCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mTmpCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;

    invoke-interface {p1, p0, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mTmpCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
