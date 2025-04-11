.class public interface abstract Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.super Ljava/lang/Object;
.source "ParsingPackage.java"


# virtual methods
.method public abstract addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract getActivities()Ljava/util/List;
.end method

.method public abstract getAttributions()Ljava/util/List;
.end method

.method public abstract getBaseApkPath()Ljava/lang/String;
.end method

.method public abstract getClassLoaderName()Ljava/lang/String;
.end method

.method public abstract getInstrumentations()Ljava/util/List;
.end method

.method public abstract getKeySetMapping()Ljava/util/Map;
.end method

.method public abstract getLibraryNames()Ljava/util/List;
.end method

.method public abstract getMaxAspectRatio()F
.end method

.method public abstract getMetaData()Landroid/os/Bundle;
.end method

.method public abstract getMinAspectRatio()F
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPermission()Ljava/lang/String;
.end method

.method public abstract getPermissions()Ljava/util/List;
.end method

.method public abstract getProcessName()Ljava/lang/String;
.end method

.method public abstract getProviders()Ljava/util/List;
.end method

.method public abstract getReceivers()Ljava/util/List;
.end method

.method public abstract getRequestedPermissions()Ljava/util/List;
.end method

.method public abstract getResizeableActivity()Ljava/lang/Boolean;
.end method

.method public abstract getSdkLibraryName()Ljava/lang/String;
.end method

.method public abstract getServices()Ljava/util/List;
.end method

.method public abstract getSharedUserId()Ljava/lang/String;
.end method

.method public abstract getSplitCodePaths()[Ljava/lang/String;
.end method

.method public abstract getSplitNames()[Ljava/lang/String;
.end method

.method public abstract getStaticSharedLibraryName()Ljava/lang/String;
.end method

.method public abstract getTargetSdkVersion()I
.end method

.method public abstract getTaskAffinity()Ljava/lang/String;
.end method

.method public abstract getUiOptions()I
.end method

.method public abstract getUsesLibraries()Ljava/util/List;
.end method

.method public abstract getUsesNativeLibraries()Ljava/util/List;
.end method

.method public abstract getUsesPermissions()Ljava/util/List;
.end method

.method public abstract getUsesSdkLibraries()Ljava/util/List;
.end method

.method public abstract getUsesStaticLibraries()Ljava/util/List;
.end method

.method public abstract hideAsParsed()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract isAnyDensity()Z
.end method

.method public abstract isBackupAllowed()Z
.end method

.method public abstract isExtraLargeScreensSupported()Z
.end method

.method public abstract isHardwareAccelerated()Z
.end method

.method public abstract isLargeScreensSupported()Z
.end method

.method public abstract isNormalScreensSupported()Z
.end method

.method public abstract isProfileable()Z
.end method

.method public abstract isProfileableByShell()Z
.end method

.method public abstract isResizeable()Z
.end method

.method public abstract isResizeableActivityViaSdkVersion()Z
.end method

.method public abstract isSaveStateDisallowed()Z
.end method

.method public abstract isSmallScreensSupported()Z
.end method

.method public abstract isStaticSharedLibrary()Z
.end method

.method public abstract isTaskReparentingAllowed()Z
.end method

.method public abstract removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract set32BitAbiPreferred(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setApplicationClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAttributionsAreUserVisible(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setBackupAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setBannerResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setClearUserDataAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setCleartextTrafficAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setDataExtractionRulesResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setDeclaredHavingCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setDescriptionResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setExtraLargeScreensSupported(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setExtractNativeLibrariesRequested(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setFullBackupContentResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setIconResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setKillAfterRestoreAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setLabelResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setLargeScreensSupported(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setLeavingSharedUser(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setLocaleConfigResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setLogoResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setNetworkSecurityConfigResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setNonSdkApiRequested(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setNormalScreensSupported(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setOnBackInvokedCallbackEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setPartiallyDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setResourceOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRoundIconResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRtlSupported(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSaveStateDisallowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSdkLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSharedUserLabelResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSmallScreensSupported(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setStaticSharedLibraryVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setTaskReparentingAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setThemeResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setUserDataFragile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method
