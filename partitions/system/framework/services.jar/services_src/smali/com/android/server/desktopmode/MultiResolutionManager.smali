.class public Lcom/android/server/desktopmode/MultiResolutionManager;
.super Ljava/lang/Object;
.source "MultiResolutionManager.java"


# static fields
.field public static final DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final FHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final HD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final RESOLUTION_TABLE:Ljava/util/Map;

.field public static final TAG:Ljava/lang/String;

.field public static final UHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final UWFHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final UWQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final WQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final WQXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final WUXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;


# instance fields
.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

.field public mDisplayRemovedOnEnablingDesktopMode:Z

.field public final mDualModeDensityChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public mIsForcedSupportAllResolution:Z

.field public mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public final mResolver:Landroid/content/ContentResolver;

.field public mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

.field public final mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field public final mStandaloneModeDensityChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public final mUserSettingResolutionChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCustomDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayRemovedOnEnablingDesktopMode(Lcom/android/server/desktopmode/MultiResolutionManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDualModeDensityChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDualModeDensityChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/server/desktopmode/MultiResolutionManager;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStandaloneModeDensityChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDensityChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStandaloneModeDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/IStateManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserSettingResolutionChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolutionChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayRemovedOnEnablingDesktopMode(Lcom/android/server/desktopmode/MultiResolutionManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleReconnection(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->handleReconnection(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowUserSettingIsNotSupportedToast(Lcom/android/server/desktopmode/MultiResolutionManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->showUserSettingIsNotSupportedToast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDisplayResolutionUnsupported(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/DisplayInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateDisplayResolutionUnsupported(Lcom/android/server/desktopmode/DisplayInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetRESOLUTION_TABLE()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    new-instance v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const/16 v2, 0xf00

    const/16 v3, 0x870

    const-string v4, "UHD"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->UHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v3, "UWQHD"

    const/16 v4, 0xd70

    const/16 v5, 0x5a0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->UWQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v4, "WQXGA"

    const/16 v6, 0xa00

    const/16 v7, 0x640

    invoke-direct {v3, v4, v6, v7}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/desktopmode/MultiResolutionManager;->WQXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v4, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v8, "WQHD"

    invoke-direct {v4, v8, v6, v5}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/desktopmode/MultiResolutionManager;->WQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v5, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v8, "UWFHD"

    const/16 v9, 0x438

    invoke-direct {v5, v8, v6, v9}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/desktopmode/MultiResolutionManager;->UWFHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v6, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const/16 v8, 0x4b0

    const-string v10, "WUXGA"

    const/16 v11, 0x780

    invoke-direct {v6, v10, v11, v8}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/desktopmode/MultiResolutionManager;->WUXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v8, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v10, "FHD"

    invoke-direct {v8, v10, v11, v9}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/server/desktopmode/MultiResolutionManager;->FHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v9, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v10, "HD"

    const/16 v11, 0x384

    invoke-direct {v9, v10, v7, v11}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/server/desktopmode/MultiResolutionManager;->HD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sput-object v8, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sput-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sput-object v9, Lcom/android/server/desktopmode/MultiResolutionManager;->LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v7, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v4, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v5, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$1;

    const-string/jumbo v1, "resolution_user_setting"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$1;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolutionChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$2;

    const-string v1, "dual_mode_screen_zoom"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$2;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDualModeDensityChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$3;

    const-string/jumbo v1, "standalone_mode_screen_zoom"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$3;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDensityChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$4;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p2, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    iput-object p4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p6, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iput-object p3, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    new-instance p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    sget-object p2, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const/16 p3, 0xa0

    invoke-direct {p1, p2, p3}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    iput-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    :cond_0
    return-void
.end method


# virtual methods
.method public final calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object p0

    return-object p0
.end method

.method public final calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .locals 3

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getRealSize()Landroid/graphics/Point;

    move-result-object p0

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateMaxSupportedResolution(), displayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getRotation()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    iget p1, p0, Landroid/graphics/Point;->y:I

    iget v0, p0, Landroid/graphics/Point;->x:I

    if-le p1, v0, :cond_2

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Point;->set(II)V

    :cond_2
    sget-object p1, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    if-lt v1, v2, :cond_3

    iget v1, p0, Landroid/graphics/Point;->y:I

    iget v2, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    if-lt v1, v2, :cond_3

    return-object v0

    :cond_4
    return-object p2

    :cond_5
    sget-object p0, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-object p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsForcedSupportAllResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayRemovedOnEnablingDesktopMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mStandaloneModeDisplayMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCustomDisplayMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserSettingResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMaxSupportedResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSelectedDisplayMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastDualModeMaxSupportedResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getCustomDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    return-object p0
.end method

.method public final getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    :goto_0
    return-object v0
.end method

.method public getStandaloneModeDensity()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    return p0
.end method

.method public getStandaloneModeOriginalDensity(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->-$$Nest$mgetOriginalDisplaySizeDensity(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;I)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    return p0
.end method

.method public final handleReconnection(Lcom/android/server/desktopmode/State;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->isResolutionChangeNeeded(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "No need to change resolution"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final isResolutionChangeNeeded(Lcom/android/server/desktopmode/State;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr v1, p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string p1, "This display does not support current resolution."

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isResolutionChangeNeeded: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method public onUserChanged(Z)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserChanged(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateUserSettingDisplayMetrics()V

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->-$$Nest$mupdateDesktopModeDensity(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    :cond_2
    return-void
.end method

.method public setCustomResolutionFromAdbCommand(Ljava/io/PrintWriter;III)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    new-instance v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v2, "ADB"

    invoke-direct {v1, v2, p2, p3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    invoke-direct {v0, v1, p4}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    const-string p2, "Successfully set custom resolution"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    const-string p0, "Failed to set custom resolution. Width, height, and density must be greater than 0. Custom resolution is removed."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDualDisplayResolutionDensity(Z)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateUserSettingDisplayMetrics()V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateDualDisplayMetrics()V

    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enableDexDisplay(III)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->disableDexDisplay()I

    move-result p0

    return p0
.end method

.method public final setSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelectedDisplayMetrics: resolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-direct {v0, p1, p2}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changed to: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/android/server/wm/WindowManagerInternal;->setDisplaySizeAndDensityInDex(IIII)V

    :cond_2
    return-void
.end method

.method public setSupportAllResolution(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    return-void
.end method

.method public final showUserSettingIsNotSupportedToast()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isDexOnPcOrWirelessDexConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showToastResolutionChanged()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Utils;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p0

    const v0, 0x104043c

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateDisplayResolutionUnsupported(Lcom/android/server/desktopmode/DisplayInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->setDisplayResolutionUnsupported(Z)V

    return-void
.end method

.method public final updateDualDisplayMetrics()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isDexOnPcOrWirelessDexConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    :goto_1
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->setResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    goto :goto_3

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateSupportAllResolution()V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->setResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    :goto_3
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSelectedDisplayMetrics= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public final updateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    return-void
.end method

.method public final updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMaxSupportedResolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "resolution_max"

    iget-object p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateSupportAllResolution()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->setResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "resolution_max"

    const-string v1, "ADB"

    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateUserSettingDisplayMetrics()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUserSettingDisplayMetrics()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "resolution_user_setting"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "dual_mode_screen_zoom"

    const/16 v2, 0xa0

    invoke-static {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->setDensity(I)V

    return-void
.end method
