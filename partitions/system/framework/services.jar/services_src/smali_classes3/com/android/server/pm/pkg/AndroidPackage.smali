.class public interface abstract Lcom/android/server/pm/pkg/AndroidPackage;
.super Ljava/lang/Object;
.source "AndroidPackage.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# virtual methods
.method public abstract getActivities()Ljava/util/List;
.end method

.method public abstract getAdoptPermissions()Ljava/util/List;
.end method

.method public abstract getApexSystemServices()Ljava/util/List;
.end method

.method public abstract getAppComponentFactory()Ljava/lang/String;
.end method

.method public abstract getApplicationClassName()Ljava/lang/String;
.end method

.method public abstract getAttributions()Ljava/util/List;
.end method

.method public abstract getAutoRevokePermissions()I
.end method

.method public abstract getBackupAgentName()Ljava/lang/String;
.end method

.method public abstract getBannerResourceId()I
.end method

.method public abstract getBaseApkPath()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBaseRevisionCode()I
.end method

.method public abstract getCategory()I
.end method

.method public abstract getClassLoaderName()Ljava/lang/String;
.end method

.method public abstract getCompatibleWidthLimitDp()I
.end method

.method public abstract getCompileSdkVersion()I
.end method

.method public abstract getCompileSdkVersionCodeName()Ljava/lang/String;
.end method

.method public abstract getConfigPreferences()Ljava/util/List;
.end method

.method public abstract getDataExtractionRulesResourceId()I
.end method

.method public abstract getDescriptionResourceId()I
.end method

.method public abstract getFeatureGroups()Ljava/util/List;
.end method

.method public abstract getFullBackupContentResourceId()I
.end method

.method public abstract getGwpAsanMode()I
.end method

.method public abstract getIconResourceId()I
.end method

.method public abstract getImplicitPermissions()Ljava/util/List;
.end method

.method public abstract getInstallLocation()I
.end method

.method public abstract getInstrumentations()Ljava/util/List;
.end method

.method public abstract getKeySetMapping()Ljava/util/Map;
.end method

.method public abstract getKnownActivityEmbeddingCerts()Ljava/util/Set;
.end method

.method public abstract getLabelResourceId()I
.end method

.method public abstract getLargestWidthLimitDp()I
.end method

.method public abstract getLibraryNames()Ljava/util/List;
.end method

.method public abstract getLocaleConfigResourceId()I
.end method

.method public abstract getLogoResourceId()I
.end method

.method public abstract getLongVersionCode()J
.end method

.method public abstract getManageSpaceActivityName()Ljava/lang/String;
.end method

.method public abstract getManifestPackageName()Ljava/lang/String;
.end method

.method public abstract getMaxAspectRatio()F
.end method

.method public abstract getMaxSdkVersion()I
.end method

.method public abstract getMemtagMode()I
.end method

.method public abstract getMetaData()Landroid/os/Bundle;
.end method

.method public abstract getMimeGroups()Ljava/util/Set;
.end method

.method public abstract getMinAspectRatio()F
.end method

.method public abstract getMinExtensionVersions()Landroid/util/SparseIntArray;
.end method

.method public abstract getMinSdkVersion()I
.end method

.method public abstract getNativeHeapZeroInitialized()I
.end method

.method public abstract getNativeLibraryDir()Ljava/lang/String;
.end method

.method public abstract getNativeLibraryRootDir()Ljava/lang/String;
.end method

.method public abstract getNetworkSecurityConfigResourceId()I
.end method

.method public abstract getNonLocalizedLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getOriginalPackages()Ljava/util/List;
.end method

.method public abstract getOverlayCategory()Ljava/lang/String;
.end method

.method public abstract getOverlayPriority()I
.end method

.method public abstract getOverlayTarget()Ljava/lang/String;
.end method

.method public abstract getOverlayTargetOverlayableName()Ljava/lang/String;
.end method

.method public abstract getOverlayables()Ljava/util/Map;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPermission()Ljava/lang/String;
.end method

.method public abstract getPermissionGroups()Ljava/util/List;
.end method

.method public abstract getPermissions()Ljava/util/List;
.end method

.method public abstract getPreferredActivityFilters()Ljava/util/List;
.end method

.method public abstract getProcessName()Ljava/lang/String;
.end method

.method public abstract getProcesses()Ljava/util/Map;
.end method

.method public abstract getProperties()Ljava/util/Map;
.end method

.method public abstract getProtectedBroadcasts()Ljava/util/List;
.end method

.method public abstract getProviders()Ljava/util/List;
.end method

.method public abstract getQueriesIntents()Ljava/util/List;
.end method

.method public abstract getQueriesPackages()Ljava/util/List;
.end method

.method public abstract getQueriesProviders()Ljava/util/Set;
.end method

.method public abstract getReceivers()Ljava/util/List;
.end method

.method public abstract getRequestedFeatures()Ljava/util/List;
.end method

.method public abstract getRequestedPermissions()Ljava/util/List;
.end method

.method public abstract getRequiredAccountType()Ljava/lang/String;
.end method

.method public abstract getRequiresSmallestWidthDp()I
.end method

.method public abstract getResizeableActivity()Ljava/lang/Boolean;
.end method

.method public abstract getRestrictUpdateHash()[B
.end method

.method public abstract getRestrictedAccountType()Ljava/lang/String;
.end method

.method public abstract getRoundIconResourceId()I
.end method

.method public abstract getSdkLibVersionMajor()I
.end method

.method public abstract getSdkLibraryName()Ljava/lang/String;
.end method

.method public abstract getSecondaryNativeLibraryDir()Ljava/lang/String;
.end method

.method public abstract getServices()Ljava/util/List;
.end method

.method public abstract getSharedUserId()Ljava/lang/String;
.end method

.method public abstract getSharedUserLabelResourceId()I
.end method

.method public abstract getSigningDetails()Landroid/content/pm/SigningDetails;
.end method

.method public abstract getSplitClassLoaderNames()[Ljava/lang/String;
.end method

.method public abstract getSplitCodePaths()[Ljava/lang/String;
.end method

.method public abstract getSplitDependencies()Landroid/util/SparseArray;
.end method

.method public abstract getSplitFlags()[I
.end method

.method public abstract getSplitNames()[Ljava/lang/String;
.end method

.method public abstract getSplitRevisionCodes()[I
.end method

.method public abstract getSplits()Ljava/util/List;
.end method

.method public abstract getStaticSharedLibraryName()Ljava/lang/String;
.end method

.method public abstract getStaticSharedLibraryVersion()J
.end method

.method public abstract getStorageUuid()Ljava/util/UUID;
.end method

.method public abstract getTargetSandboxVersion()I
.end method

.method public abstract getTargetSdkVersion()I
.end method

.method public abstract getTaskAffinity()Ljava/lang/String;
.end method

.method public abstract getThemeResourceId()I
.end method

.method public abstract getUiOptions()I
.end method

.method public abstract getUid()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUpgradeKeySets()Ljava/util/Set;
.end method

.method public abstract getUsesLibraries()Ljava/util/List;
.end method

.method public abstract getUsesNativeLibraries()Ljava/util/List;
.end method

.method public abstract getUsesOptionalLibraries()Ljava/util/List;
.end method

.method public abstract getUsesOptionalNativeLibraries()Ljava/util/List;
.end method

.method public abstract getUsesPermissions()Ljava/util/List;
.end method

.method public abstract getUsesSdkLibraries()Ljava/util/List;
.end method

.method public abstract getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;
.end method

.method public abstract getUsesSdkLibrariesVersionsMajor()[J
.end method

.method public abstract getUsesStaticLibraries()Ljava/util/List;
.end method

.method public abstract getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
.end method

.method public abstract getUsesStaticLibrariesVersions()[J
.end method

.method public abstract getVersionName()Ljava/lang/String;
.end method

.method public abstract getVolumeUuid()Ljava/lang/String;
.end method

.method public abstract getZygotePreloadName()Ljava/lang/String;
.end method

.method public abstract hasPreserveLegacyExternalStorage()Z
.end method

.method public abstract hasRequestForegroundServiceExemption()Z
.end method

.method public abstract hasRequestRawExternalStorageAccess()Ljava/lang/Boolean;
.end method

.method public abstract is32BitAbiPreferred()Z
.end method

.method public abstract isAllowAudioPlaybackCapture()Z
.end method

.method public abstract isAllowNativeHeapPointerTagging()Z
.end method

.method public abstract isAnyDensity()Z
.end method

.method public abstract isApex()Z
.end method

.method public abstract isAttributionsUserVisible()Z
.end method

.method public abstract isBackupAllowed()Z
.end method

.method public abstract isBackupInForeground()Z
.end method

.method public abstract isClearUserDataAllowed()Z
.end method

.method public abstract isClearUserDataOnFailedRestoreAllowed()Z
.end method

.method public abstract isCleartextTrafficAllowed()Z
.end method

.method public abstract isCoreApp()Z
.end method

.method public abstract isCrossProfile()Z
.end method

.method public abstract isDebuggable()Z
.end method

.method public abstract isDeclaredHavingCode()Z
.end method

.method public abstract isDefaultToDeviceProtectedStorage()Z
.end method

.method public abstract isDirectBootAware()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isExternalStorage()Z
.end method

.method public abstract isExtraLargeScreensSupported()Z
.end method

.method public abstract isExtractNativeLibrariesRequested()Z
.end method

.method public abstract isFactoryTest()Z
.end method

.method public abstract isForceQueryable()Z
.end method

.method public abstract isFullBackupOnly()Z
.end method

.method public abstract isGame()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isHardwareAccelerated()Z
.end method

.method public abstract isHasDomainUrls()Z
.end method

.method public abstract isIsolatedSplitLoading()Z
.end method

.method public abstract isKillAfterRestoreAllowed()Z
.end method

.method public abstract isLargeHeap()Z
.end method

.method public abstract isLargeScreensSupported()Z
.end method

.method public abstract isLeavingSharedUser()Z
.end method

.method public abstract isMultiArch()Z
.end method

.method public abstract isNativeLibraryRootRequiresIsa()Z
.end method

.method public abstract isNonSdkApiRequested()Z
.end method

.method public abstract isNormalScreensSupported()Z
.end method

.method public abstract isOnBackInvokedCallbackEnabled()Z
.end method

.method public abstract isOverlayIsStatic()Z
.end method

.method public abstract isPartiallyDirectBootAware()Z
.end method

.method public abstract isPersistent()Z
.end method

.method public abstract isProfileable()Z
.end method

.method public abstract isProfileableByShell()Z
.end method

.method public abstract isRequestLegacyExternalStorage()Z
.end method

.method public abstract isRequiredForAllUsers()Z
.end method

.method public abstract isResetEnabledSettingsOnAppDataCleared()Z
.end method

.method public abstract isResizeable()Z
.end method

.method public abstract isResizeableActivityViaSdkVersion()Z
.end method

.method public abstract isResourceOverlay()Z
.end method

.method public abstract isRestoreAnyVersion()Z
.end method

.method public abstract isRtlSupported()Z
.end method

.method public abstract isSaveStateDisallowed()Z
.end method

.method public abstract isSdkLibrary()Z
.end method

.method public abstract isSignedWithPlatformKey()Z
.end method

.method public abstract isSmallScreensSupported()Z
.end method

.method public abstract isStaticSharedLibrary()Z
.end method

.method public abstract isStub()Z
.end method

.method public abstract isTaskReparentingAllowed()Z
.end method

.method public abstract isTestOnly()Z
.end method

.method public abstract isUseEmbeddedDex()Z
.end method

.method public abstract isUserDataFragile()Z
.end method

.method public abstract isVisibleToInstantApps()Z
.end method

.method public abstract isVmSafeMode()Z
.end method
