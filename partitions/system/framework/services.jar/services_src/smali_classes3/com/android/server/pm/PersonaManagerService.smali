.class public Lcom/android/server/pm/PersonaManagerService;
.super Lcom/samsung/android/knox/ISemPersonaManager$Stub;
.source "PersonaManagerService.java"


# static fields
.field public static final DEBUG:Z

.field public static final DEVICE_SUPPORT_KNOX:Z

.field public static final USER_INFO_DIR:Ljava/lang/String;

.field public static cachedTime:Ljava/util/HashMap;

.field public static containerCriticalApps:Ljava/util/List;

.field public static mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

.field public static mDeviceOwnerPackage:Ljava/lang/String;

.field static mSeparationConfiginCache:Landroid/os/Bundle;

.field public static sInstance:Lcom/android/server/pm/PersonaManagerService;

.field public static workTabSupportLauncherUids:Ljava/util/ArrayList;


# instance fields
.field public final APP_SEPARATION_ACTION_STATUS:Ljava/lang/String;

.field public final APP_SEPARATION_ACTION_TYPE:Ljava/lang/String;

.field public final APP_SEPARATION_ACTION_TYPE_ACTIVATE:Ljava/lang/String;

.field public final APP_SEPARATION_ACTION_TYPE_DEACTIVATE:Ljava/lang/String;

.field public final APP_SEPARATION_DEFAULT_NAME:Ljava/lang/String;

.field public final APP_SEPARATION_MIGRATION_COMPLETED:Ljava/lang/String;

.field public final APP_SEPARATION_WL_RETURN_EXTRA:Ljava/lang/String;

.field public final INTENT_APP_SEPARATION_ACTION_RETURN:Ljava/lang/String;

.field public final INTENT_APP_SEPARATION_ALLOWEDLIST_RETURN:Ljava/lang/String;

.field public final KEY_USER_REMOVED:Ljava/lang/String;

.field public LOG_FS_TAG:Ljava/lang/String;

.field public final MDM_ENTERPRISE_APP_SEPARATION_PERMISSION:Ljava/lang/String;

.field public final UNKNOWN_USER_ID:I

.field public analyticsObserver:Landroid/database/ContentObserver;

.field containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

.field public containerNames:Ljava/util/HashSet;

.field public edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public handlerThread:Landroid/os/HandlerThread;

.field public isFotaUpgradeVersionChanged:Z

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

.field public final mBaseUserPath:Ljava/io/File;

.field public final mContext:Landroid/content/Context;

.field public mCorePackageUid:Ljava/util/List;

.field public mDeviceEmergencyModeLock:Ljava/lang/Object;

.field public mDeviceInteractive:Z

.field public final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mFingerPrintReceiver:Landroid/content/BroadcastReceiver;

.field public mFirmwareVersion:Ljava/lang/String;

.field public final mFocusLauncherLock:Ljava/lang/Object;

.field public final mFocusLock:Ljava/lang/Object;

.field public mFocusedLauncherId:I

.field public mFocusedUserId:I

.field public mImeSet:Ljava/util/Set;

.field public final mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

.field public mIsFOTAUpgrade:Z

.field public mKALockscreenTimeoutAdminFlag:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

.field public mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

.field public final mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mPackageReceiver:Landroid/content/BroadcastReceiver;

.field public final mPersonaCacheFile:Ljava/io/File;

.field public final mPersonaCacheLock:Ljava/lang/Object;

.field public final mPersonaCacheMap:Ljava/util/HashMap;

.field public final mPersonaDbLock:Ljava/lang/Object;

.field public final mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

.field public final mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

.field public mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mSeamLessSwitchHandler:Lcom/android/server/knox/SeamLessSwitchHandler;

.field public mSecureFolderId:I

.field public mSetupWizardCompleteReceiver:Landroid/content/BroadcastReceiver;

.field public mTrustManager:Landroid/app/trust/ITrustManager;

.field public final mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

.field public final mUserListFile:Ljava/io/File;

.field public mUserManager:Landroid/os/UserManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mUserReceiver:Landroid/content/BroadcastReceiver;

.field public mUserSwitchObserver:Landroid/app/UserSwitchObserver;

.field public final mUsersDir:Ljava/io/File;

.field public packageFilter:Landroid/content/IntentFilter;

.field public personaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public requiredApps:Ljava/util/List;

.field public xmlnotParsedforFOTA:Z


# direct methods
.method public static synthetic $r8$lambda$KHKMHTWZussw6KeVSbPwOMjaE7M(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->lambda$getWorkProfileName$0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetanalyticsObserver(Lcom/android/server/pm/PersonaManagerService;)Landroid/database/ContentObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetcontainerNames(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->containerNames:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAnalyticsReceiver(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFocusedUserId(Lcom/android/server/pm/PersonaManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImeSet(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyguardManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKnoxAnalyticsContainer(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/KnoxAnalyticsContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersonaCacheMap(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersonaHandler(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSeamLessSwitchHandler(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/SeamLessSwitchHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mSeamLessSwitchHandler:Lcom/android/server/knox/SeamLessSwitchHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserHasBeenShutdownBefore(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserListFile(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsersDir(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputedm(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/EnterpriseDeviceManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmImeSet(Lcom/android/server/pm/PersonaManagerService;Ljava/util/Set;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmKALockscreenTimeoutAdminFlag(Lcom/android/server/pm/PersonaManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputrequiredApps(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->requiredApps:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerPermissionFor(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckForesightUpdate(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->checkForesightUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeletePkg(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->deletePkg(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menableMyFilesLauncherActivity(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->enableMyFilesLauncherActivity(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceAppSeparationAllowListUpdateInternal(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->enforceAppSeparationAllowListUpdateInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceAppSeparationCoexistenceAllowListUpdateInternal(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->enforceAppSeparationCoexistenceAllowListUpdateInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceAppSeparationDeletionInternal(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->enforceAppSeparationDeletionInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceSeparatedAppsRemoveInternal(Lcom/android/server/pm/PersonaManagerService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->enforceSeparatedAppsRemoveInternal()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetActivityManagerInternal(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetIMEPackages(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetIPackageManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/pm/IPackageManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPersonaManager(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRequiredApps(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getRequiredApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetWorkTabSupportLauncherUids(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getWorkTabSupportLauncherUids()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleFOTAInstallToPackages(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->handleFOTAInstallToPackages()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleFotaResetSecureFolderAdmin(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->handleFotaResetSecureFolderAdmin()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minstallExistingPackageForPersona(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misBiometricsEnabledAfterFota(Lcom/android/server/pm/PersonaManagerService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isBiometricsEnabledAfterFota(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misOneLockOngoing(Lcom/android/server/pm/PersonaManagerService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isOneLockOngoing()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misPackageInstalledAsUser(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misStubApp(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->isStubApp(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogUserRemoval(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->logUserRemoval(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmigrateAppSeparationIfNeeded(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->migrateAppSeparationIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmigrateKnoxFingerprintPlusValueIfNeeded(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->migrateKnoxFingerprintPlusValueIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmigrateKnoxLockTimeoutValueIfNeeded(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->migrateKnoxLockTimeoutValueIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmigrateRCPSyncToProfilePolicyIfNeeded(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->migrateRCPSyncToProfilePolicyIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyStatusToKspAgent(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessAppSeparationCreation(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrecoverContainerInfo(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->recoverContainerInfo()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterPackageReceiver(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->registerPackageReceiver()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveDisallowedSFpackages(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->removeDisallowedSFpackages()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendMessageAndLockTimeout(Lcom/android/server/pm/PersonaManagerService;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->sendMessageAndLockTimeout(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDpmScreenTimeoutFlag(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->setDpmScreenTimeoutFlag(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwritePersonaCacheLocked(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEVICE_SUPPORT_KNOX()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEVICE_SUPPORT_KNOX:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfputworkTabSupportLauncherUids(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/server/pm/PersonaManagerService;->workTabSupportLauncherUids:Ljava/util/ArrayList;

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 6

    const-string/jumbo v0, "ro.build.type"

    .line 176
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.knox.appsupdateagent"

    const-string v2, "com.android.bbc.fileprovider"

    const-string v3, "com.samsung.knox.securefolder"

    const-string v4, "com.samsung.android.knox.containercore"

    const-string v5, "com.sec.knox.bluetooth"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    const/4 v0, 0x0

    .line 337
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 338
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    const-string v0, ""

    .line 339
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mDeviceOwnerPackage:Ljava/lang/String;

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->cachedTime:Ljava/util/HashMap;

    .line 356
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->isKnoxSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEVICE_SUPPORT_KNOX:Z

    .line 4948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->workTabSupportLauncherUids:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;)V
    .locals 6

    .line 383
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    .line 384
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 383
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PersonaManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .locals 18

    .line 392
    new-instance v15, Lcom/android/server/pm/PersonaManagerService$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v17, v15

    move/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/android/server/pm/PersonaManagerService$Injector;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;Lcom/android/server/knox/ContainerDependencyWrapper;Lcom/samsung/android/knox/PersonaManagerInternal;Landroid/app/admin/DevicePolicyManager;Ljava/util/ArrayList;Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lcom/android/server/knox/PersonaPolicyManagerService;Landroid/content/pm/IPackageManager;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaManagerService;-><init>(Lcom/android/server/pm/PersonaManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService$Injector;)V
    .locals 6

    .line 397
    invoke-direct {p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;-><init>()V

    const-string v0, "com.samsung.android.knox.intent.action.SEPARATION_ALLOWEDLIST_RETURN"

    .line 221
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->INTENT_APP_SEPARATION_ALLOWEDLIST_RETURN:Ljava/lang/String;

    const-string v0, "com.samsung.android.knox.intent.action.SEPARATION_ACTION_RETURN"

    .line 222
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->INTENT_APP_SEPARATION_ACTION_RETURN:Ljava/lang/String;

    const-string v0, "SeparationWhiteListReturn"

    .line 223
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->APP_SEPARATION_WL_RETURN_EXTRA:Ljava/lang/String;

    const-string/jumbo v0, "type"

    .line 224
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->APP_SEPARATION_ACTION_TYPE:Ljava/lang/String;

    const-string v0, "deactivate"

    .line 225
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->APP_SEPARATION_ACTION_TYPE_DEACTIVATE:Ljava/lang/String;

    const-string v0, "activate"

    .line 226
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->APP_SEPARATION_ACTION_TYPE_ACTIVATE:Ljava/lang/String;

    const-string/jumbo v0, "status"

    .line 227
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->APP_SEPARATION_ACTION_STATUS:Ljava/lang/String;

    const-string v0, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

    .line 228
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->MDM_ENTERPRISE_APP_SEPARATION_PERMISSION:Ljava/lang/String;

    const-string v0, "Separated Apps"

    .line 229
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->APP_SEPARATION_DEFAULT_NAME:Ljava/lang/String;

    const-string/jumbo v0, "persist.sys.knox.appseparation_migration"

    .line 230
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->APP_SEPARATION_MIGRATION_COMPLETED:Ljava/lang/String;

    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    .line 234
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    .line 235
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    .line 236
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 247
    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->UNKNOWN_USER_ID:I

    .line 255
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 268
    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    .line 300
    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    const/4 v3, 0x0

    .line 302
    iput v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    .line 303
    iput v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    .line 305
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceEmergencyModeLock:Ljava/lang/Object;

    .line 307
    iput-boolean v3, p0, Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z

    .line 308
    iput-boolean v3, p0, Lcom/android/server/pm/PersonaManagerService;->isFotaUpgradeVersionChanged:Z

    const/4 v4, 0x1

    .line 314
    iput-boolean v4, p0, Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z

    .line 316
    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    .line 334
    iput-boolean v3, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    .line 349
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    .line 351
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    .line 694
    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1080
    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    .line 1681
    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->requiredApps:Ljava/util/List;

    .line 2437
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 2439
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 2462
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->containerNames:Ljava/util/HashSet;

    .line 2463
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaManagerService$3;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 2601
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaManagerService$4;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mSetupWizardCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 2609
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaManagerService$5;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFingerPrintReceiver:Landroid/content/BroadcastReceiver;

    .line 2619
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaManagerService$6;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 2742
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaManagerService$7;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

    .line 2975
    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 3408
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$8;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v3}, Lcom/android/server/pm/PersonaManagerService$8;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Landroid/database/ContentObserver;

    const-string v1, "USER-REMOVED"

    .line 4822
    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->KEY_USER_REMOVED:Ljava/lang/String;

    const-string v1, "PersonaManagerService:KnoxForesight"

    .line 4987
    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    .line 398
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 400
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 401
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 402
    sput-object p0, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    .line 404
    new-instance v4, Lcom/android/server/knox/KnoxAnalyticsContainer;

    new-instance v5, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    invoke-direct {v5, v1, v3, p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PersonaManagerService;)V

    invoke-direct {v4, v1, v5}, Lcom/android/server/knox/KnoxAnalyticsContainer;-><init>(Landroid/content/Context;Lcom/android/server/knox/IKnoxAnalyticsContainer;)V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 405
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getContainerDependencyWrapper()Lcom/android/server/knox/ContainerDependencyWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 407
    monitor-enter v0

    .line 408
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getDataDir()Ljava/io/File;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    .line 409
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getBaseUserPath()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    .line 411
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "userwithpersonalist.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    .line 412
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PersonaManagerService"

    const-string v4, "No need to create user persona list file from Knox 3.0"

    .line 413
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v3, "PersonaManagerService"

    const-string v4, "<init> adding PersonaPolicyManagerService"

    .line 416
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPersonaPolicyManagerService()Lcom/android/server/knox/PersonaPolicyManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 419
    new-instance p1, Landroid/os/HandlerThread;

    const-string v3, "PersonaManagerService"

    const/16 v4, 0xa

    invoke-direct {p1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 421
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 422
    new-instance p1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 423
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 426
    new-instance p1, Ljava/io/File;

    const-string/jumbo v0, "persona_cache.xml"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    .line 427
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 429
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "PersonaManagerService"

    const-string v0, "PMS cache file created "

    .line 430
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "PersonaManagerService"

    const-string v0, "Error Creating PMS cache file!!!! "

    .line 432
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 436
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 440
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter p1

    .line 441
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->readPersonaCacheLocked()V

    .line 442
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    new-instance p1, Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-direct {p1, p0, v2}, Lcom/android/server/pm/PersonaManagerService$LocalService;-><init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$LocalService-IA;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    .line 446
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->isTestingMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 447
    const-class p0, Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_1

    .line 449
    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 450
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getCorePackageUid()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 442
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 423
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static deactivateSecureFolderAdmin(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0

    .line 1746
    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->deactivateSecureFolderAdmin(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 2095
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 2096
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 2099
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2100
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 2102
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2103
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_1
    const/4 v2, 0x1

    if-gtz v0, :cond_3

    move v0, v2

    :cond_3
    if-gtz v1, :cond_4

    move v1, v2

    .line 2106
    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2105
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2108
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2109
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2110
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getContainerCriticalApps()Ljava/util/List;
    .locals 1

    .line 1970
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/pm/PersonaManagerService;
    .locals 2

    .line 371
    const-class v0, Lcom/android/server/pm/PersonaManagerService;

    monitor-enter v0

    .line 372
    :try_start_0
    sget-object v1, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 373
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isKnoxSupported()Z
    .locals 2

    .line 359
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "version"

    .line 360
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "v00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static synthetic lambda$getWorkProfileName$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x1040fb5

    .line 2049
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resetSecureFolderAdmin(Landroid/content/Context;)V
    .locals 3

    .line 1750
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.knox.securefolder"

    const-string v2, "com.samsung.knox.securefolder.containeragent.detector.KnoxDeviceAdminReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    invoke-static {p0, v0}, Lcom/android/server/knox/ContainerDependencyWrapper;->isSecureFolderAdminActive(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PersonaManagerService:FOTA"

    const-string/jumbo v2, "resetSecureFolderAdmin called"

    .line 1753
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    invoke-static {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->deactivateSecureFolderAdmin(Landroid/content/Context;Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public CMFALock(I)V
    .locals 2

    const-string v0, "CMFALock"

    .line 3550
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3551
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaManagerService$LocalService;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMFALock userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getTrustManager()Landroid/app/trust/ITrustManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/app/trust/ITrustManager;->setDeviceLockedForUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3556
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3559
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

    if-eqz p0, :cond_0

    .line 3560
    invoke-virtual {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->callOnCMFALocked(I)V

    :cond_0
    return-void
.end method

.method public CMFAUnLock(I)V
    .locals 0

    const-string p1, "CMFAUnLock"

    .line 3567
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string p0, "PersonaManagerService"

    const-string p1, "CMFAUnLock not support yet."

    .line 3586
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addAppPackageNameToAllowList(ILjava/util/List;)V
    .locals 3

    .line 1648
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    invoke-interface {v0, v2, v1}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PersonaManagerService"

    const-string p1, "addAppPackageNameToAllowList failed."

    .line 1649
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1656
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 1658
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->addAppPackageNameToAllowList(Landroid/content/Context;ILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1660
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 1661
    throw p1

    :catch_0
    move-exception p0

    .line 1653
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public appSeparationFotaMigrationTask()V
    .locals 12

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.knox.appseparation_migration"

    const-string v2, "PersonaManagerService:FOTA"

    .line 1412
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    const-string v5, "appSeparationFotaMigrationTask"

    .line 1414
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "APP_SEPARATION_OUTSIDE"

    const/4 v7, 0x0

    .line 1416
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1417
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1418
    new-instance v9, Ljava/util/HashSet;

    const-string v10, "APP_SEPARATION_APP_LIST"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1419
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 1420
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v10, 0x40

    invoke-virtual {v5, v10, v7}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v5

    .line 1422
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 1423
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1424
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appSeparationFotaMigrationTask packageName "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    if-nez v6, :cond_2

    :cond_1
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1426
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-nez v6, :cond_0

    .line 1427
    :cond_2
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1431
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1432
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 1435
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enable Package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->enableAppInOwner(Ljava/lang/String;)V

    .line 1437
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suspend Package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    .line 1438
    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_1
    const-string v6, "Error in FotaMigration for AppSeparation"

    .line 1442
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1446
    :cond_5
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    .line 1446
    :goto_2
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 1448
    throw v2
.end method

.method public appliedPasswordPolicy(I)Z
    .locals 5

    .line 2205
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 2206
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    .line 2207
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2209
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 2213
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2214
    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isPwdChangeRequested(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2215
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isOneLockOngoing()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v4, 0x1

    .line 2217
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    :cond_3
    :goto_0
    return v4
.end method

.method public final applyDefaultPolicyForAppSeparation(I)V
    .locals 0

    .line 3600
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->applyDefaultPolicyForAppSeparation(Landroid/content/Context;I)V

    return-void
.end method

.method public final atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V
    .locals 3

    .line 2149
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2150
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2151
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".crt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2150
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2153
    :cond_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p4

    const/4 v12, 0x0

    .line 2295
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    invoke-interface {v2, v4, v3}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "PersonaManagerService"

    const-string v1, "bindCoreServiceAsUser() failed to bind."

    .line 2296
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return v12

    .line 2303
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxCorePackageName()Ljava/lang/String;

    move-result-object v2

    .line 2306
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v13

    move/from16 v11, p7

    .line 2310
    :try_start_1
    invoke-virtual {p0, v0, v2, v11}, Lcom/android/server/pm/PersonaManagerService;->createCrossUserServiceIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 2325
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v12

    .line 2317
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2319
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    move/from16 v3, p6

    int-to-long v8, v3

    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2320
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move/from16 v11, p7

    .line 2317
    invoke-interface/range {v2 .. v11}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2325
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1, v13, v14}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 2326
    throw v0

    .line 2325
    :catch_0
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v12

    :catch_1
    move-exception v0

    .line 2300
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v12
.end method

.method public broadcastIntentThroughPersona(Landroid/content/Intent;I)Z
    .locals 5

    const-string v0, "PersonaManagerService"

    const-string v1, "broadcastIntentThroughPersona"

    .line 2182
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2184
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v1

    .line 2186
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastIntentThroughPersona Intent ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2191
    :cond_0
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2193
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    .line 2188
    :cond_1
    :goto_0
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastIntentThroughPersona is canceled by mContext = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " or intent = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2193
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 2194
    throw p1
.end method

.method public final checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 1

    const-string v0, "PersonaManagerService"

    .line 367
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final checkForesightUpdate()V
    .locals 3

    const-string/jumbo v0, "persist.sys.knox.foresight.version"

    .line 4974
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 4975
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4976
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isVersionCheckNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4978
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.containercore.action.FORESIGHT_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.containercore"

    const-string v2, "com.samsung.android.knox.containercore.KnoxForesightCommandReceiver"

    .line 4979
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "check"

    .line 4980
    invoke-virtual {v0, v1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4981
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4982
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public final varargs checkNullParameter([Ljava/lang/Object;)Z
    .locals 5

    .line 4500
    array-length p0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    aget-object v4, p1, v2

    if-nez v4, :cond_0

    .line 4502
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Parameter("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is null."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public clearAttributes(II)Z
    .locals 1

    const-string v0, "clearAttributes"

    .line 2816
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2817
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2819
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "user not found "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2823
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->clearAttributes(Lcom/android/server/pm/UserManagerInternal;II)Z

    move-result p0

    return p0
.end method

.method public final clearHomeCrossProfileFilter(Ljava/lang/String;)Z
    .locals 6

    .line 3047
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 3048
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 3050
    :try_start_0
    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3055
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "PersonaManagerService:FOTA"

    .line 3052
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearCrossProfileIntentFilters Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3055
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v3

    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 3056
    throw p1
.end method

.method public clearStorageForUser(I)V
    .locals 2

    const-string p0, "PersonaManagerService"

    .line 4722
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearStorageForUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4723
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 4724
    invoke-static {v0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->clearStorageForUser(Lcom/android/internal/widget/LockSettingsInternal;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "clearStorageForUser err."

    .line 4727
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4728
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final createCrossUserServiceIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 6

    .line 2263
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2265
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-object v1, p1

    move v5, p3

    .line 2263
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 2268
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2273
    :cond_0
    iget-object p3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 2277
    iget-object p2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean p3, p2, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz p3, :cond_2

    const-string p3, "android.permission.BIND_DEVICE_ADMIN"

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 2278
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Service must be protected by BIND_DEVICE_ADMIN permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2284
    :cond_2
    :goto_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1

    .line 2274
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Only allow to bind service in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2269
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fail to look up the service: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not running"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final deletePackageAsUser(ILjava/lang/String;I)Z
    .locals 8

    const-string v0, "PersonaManagerService"

    .line 3624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePackageAsUser request for userid -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and pkg-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    new-instance v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;-><init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver-IA;)V

    :try_start_0
    const-string/jumbo p0, "package"

    .line 3628
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, -0x1

    move-object v3, p2

    move-object v5, v0

    move v6, p1

    move v7, p3

    .line 3629
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    .line 3630
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3631
    :catch_0
    :goto_0
    :try_start_1
    iget-boolean p0, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    :try_start_2
    const-string p0, "PersonaManagerService"

    .line 3633
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Waiting in while loop -"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;->finished:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3638
    :cond_0
    :try_start_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    const-string p1, "PersonaManagerService"

    .line 3640
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deletePackage exception -"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    :goto_1
    iget-boolean p0, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;->result:Z

    return p0
.end method

.method public final deletePackageForAppSeparation(ILandroid/content/pm/PackageInfo;)Z
    .locals 1

    .line 4639
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;I)Z

    move-result p0

    .line 4643
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "processAppSeparationInstallationInternal deletePackageAsUser result - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PersonaManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final deletePkg(ILjava/lang/String;)Z
    .locals 3

    .line 915
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-string p0, "PersonaManagerService"

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore deletePkg request for personaId -"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and pkg-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "PersonaManagerService"

    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePkg request for personaId -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and pkg-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    new-instance v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    .line 923
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x4

    invoke-static {p0, p2, v0, p1, v1}, Lcom/android/server/knox/ContainerDependencyWrapper;->deletePackageAsUserAndPersona(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 924
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 925
    :goto_0
    :try_start_1
    iget-boolean p0, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    :try_start_2
    const-string p0, "PersonaManagerService"

    .line 927
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Waiting in while loop"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    const-string p1, "PersonaManagerService"

    .line 930
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deletePkg: InterruptedException = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 933
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    const-string p1, "PersonaManagerService"

    .line 935
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deletePkg exception -"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :goto_1
    iget-boolean p0, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->result:Z

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .line 1596
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string p3, "PersonaManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1598
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getLastUserRemovalLog()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Last removed user:"

    .line 1599
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    .line 1601
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->printAllApprovedInstallers(Ljava/io/PrintWriter;)V

    .line 1604
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object p1

    .line 1607
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result p0

    const-string p3, "App Separation:"

    .line 1608
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "    STATE : "

    .line 1609
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    const-string p0, "NONE"

    .line 1612
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "ACTIVATED"

    .line 1615
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "ENABLED"

    .line 1618
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_5

    .line 1621
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1622
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "APP_SEPARATION_OUTSIDE"

    const/4 v1, 0x0

    .line 1623
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "APP_SEPARATION_APP_LIST"

    .line 1624
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "APP_SEPARATION_COEXISTANCE_LIST"

    .line 1625
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v3, "\n"

    const-string v4, " -> "

    const-string v5, "        "

    if-eqz v2, :cond_3

    move v6, v1

    .line 1627
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1628
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 1633
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1634
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1638
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Outside Option : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    AllowList Packages: "

    .line 1639
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    CoexistenceList Packages: "

    .line 1641
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public enableAppInOwner(Ljava/lang/String;)V
    .locals 11

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAppInOwner is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v2, 0x20f

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-interface {v0, p1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableAppInOwner Logic Started..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    .line 1468
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1469
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1471
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 1472
    array-length v7, v5

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v5, v8

    .line 1473
    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1474
    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1475
    new-instance v10, Landroid/content/ComponentName;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, p1, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    new-instance v9, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v9, v10, v4, v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Landroid/content/ComponentName;II)V

    .line 1477
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1482
    :cond_2
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_4

    .line 1483
    array-length v7, v5

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v5, v8

    .line 1484
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1485
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1486
    new-instance v10, Landroid/content/ComponentName;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, p1, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    new-instance v9, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v9, v10, v4, v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Landroid/content/ComponentName;II)V

    .line 1488
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1493
    :cond_4
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v5, :cond_6

    .line 1494
    array-length v7, v5

    move v8, v4

    :goto_2
    if-ge v8, v7, :cond_6

    aget-object v9, v5, v8

    .line 1495
    iget-object v10, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1496
    iget-object v10, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1497
    new-instance v10, Landroid/content/ComponentName;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v10, p1, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    new-instance v9, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v9, v10, v4, v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Landroid/content/ComponentName;II)V

    .line 1499
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1504
    :cond_6
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_8

    .line 1505
    array-length v5, v0

    move v7, v4

    :goto_3
    if-ge v7, v5, :cond_8

    aget-object v8, v0, v7

    .line 1506
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1507
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1508
    new-instance v9, Landroid/content/ComponentName;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, p1, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    new-instance v8, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v8, v9, v4, v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Landroid/content/ComponentName;II)V

    .line 1510
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    const-string/jumbo p1, "printing enablepackageList"

    .line 1514
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Components:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1518
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-string/jumbo p1, "persona"

    invoke-interface {p0, v3, v4, p1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSettings(Ljava/util/List;ILjava/lang/String;)V

    const-string p0, "enableAppInOwner Logic Ended..."

    .line 1520
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 1522
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableAppInOwner exception"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method public final enableMyFilesLauncherActivity(I)V
    .locals 5

    const-string v0, "PersonaManagerService"

    const-string v1, "enableMyFilesLauncherActivity"

    .line 4913
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4919
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "visible_app_icon"

    const/4 v2, 0x1

    .line 4920
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4922
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4924
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "myfiles"

    const-string v3, "SET_APP_ICON_STATUS"

    const-string v4, ""

    invoke-virtual {p0, p1, v3, v4, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4926
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4928
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4929
    throw p0
.end method

.method public enforceAppSeparationAllowListUpdate()V
    .locals 2

    .line 3772
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    .line 3773
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3774
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, "PersonaManagerService"

    const-string v0, "enforceAppSeparationAllowListUpdate"

    .line 3775
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final enforceAppSeparationAllowListUpdateInternal()V
    .locals 36

    move-object/from16 v1, p0

    const-string v0, "enforceAppSeparationAllowListUpdateInternal Is in allowlist ? - "

    .line 4135
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v2

    .line 4136
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v3

    .line 4137
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v4

    if-eqz v2, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const-string v8, "enforceAppSeparationWhiteListUpdateInternal sending removedinfo intent. count = "

    const-string v9, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    const-string v10, "com.samsung.android.appseparation"

    const-string v11, "app_uninstalled"

    const-string v12, "enforceAppSeparationAllowListUpdateInternal after update packageName - "

    const-string v13, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    const-string v14, "enforceAppSeparationAllowListUpdateInternal before update packageName - "

    const-string v15, "SeparationWhiteListReturn"

    const-string v5, "com.samsung.android.knox.intent.action.SEPARATION_ALLOWEDLIST_RETURN"

    const-string v6, "enforceAppSeparationAllowListUpdateInternal used by createSeparationConfig"

    move/from16 v17, v7

    const-string v7, "enforceAppSeparationAllowListUpdateInternal isOutside - "

    move/from16 v18, v4

    const-string v4, "APP_SEPARATION_OUTSIDE"

    move-object/from16 v19, v8

    const-string v8, "APP_SEPARATION_APP_LIST"

    move-object/from16 v20, v9

    const-string v9, "PersonaManagerService"

    if-nez v3, :cond_5

    :try_start_0
    const-string v0, "enforceAppSeparationAllowListUpdateInternal no app separation data found in db"

    .line 4142
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    move-object/from16 v21, v10

    const/4 v10, 0x0

    .line 4221
    invoke-virtual {v2, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4222
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    .line 4225
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object/from16 v21, v10

    .line 4230
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    :cond_2
    sput-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    .line 4234
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4235
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    .line 4238
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4244
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4245
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 4246
    invoke-virtual {v0, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4247
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 4249
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4250
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 4251
    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v10, v20

    move-object/from16 v2, v21

    .line 4252
    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 4256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4259
    :goto_3
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v18, :cond_4

    .line 4262
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v16, v0

    move-object v10, v5

    move-object v5, v12

    move-object/from16 v34, v23

    const/4 v0, 0x1

    const/4 v12, 0x0

    move-object/from16 v35, v15

    move-object v15, v11

    move-object/from16 v11, v35

    goto/16 :goto_21

    :catch_1
    move-exception v0

    move-object/from16 v23, v10

    move-object v10, v5

    move-object v5, v12

    move-object/from16 v21, v23

    const/16 v16, 0x1

    move-object v12, v11

    move-object v11, v15

    const/4 v15, 0x0

    goto/16 :goto_1a

    :cond_5
    move-object/from16 v23, v10

    move-object/from16 v22, v19

    move-object/from16 v19, v11

    const/4 v10, 0x0

    .line 4146
    :try_start_2
    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 4147
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    move-object/from16 v21, v13

    :try_start_3
    const-string v13, "APP_SEPARATION_COEXISTANCE_LIST"

    .line 4148
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 4149
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    if-eqz v2, :cond_6

    .line 4151
    :try_start_4
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v16, v0

    move-object v10, v5

    move-object v5, v12

    move-object v11, v15

    move-object/from16 v15, v19

    move-object/from16 v13, v21

    goto/16 :goto_16

    :cond_6
    :goto_4
    move-object/from16 v25, v15

    .line 4153
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    move-result-object v15

    iput-object v15, v1, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    if-nez v10, :cond_7

    .line 4155
    :try_start_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v16, v0

    move-object v10, v5

    move-object v5, v12

    move-object/from16 v15, v19

    move-object/from16 v13, v21

    move-object/from16 v19, v22

    move-object/from16 v34, v23

    move-object/from16 v11, v25

    goto/16 :goto_17

    .line 4157
    :cond_7
    :goto_5
    :try_start_7
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    if-nez v24, :cond_8

    .line 4159
    :try_start_8
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    move-object/from16 v10, v24

    if-nez v13, :cond_9

    .line 4162
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_9
    move-object/from16 v24, v5

    .line 4164
    :try_start_9
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4166
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4167
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    move-object/from16 v26, v12

    :try_start_a
    const-string v12, "enforceAppSeparationAllowListUpdateInternal is called for isOutside - "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enforceAppSeparationAllowListUpdateInternal wlAppsSet size - "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4169
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enforceAppSeparationAllowListUpdateInternal prevWlAppsSet size - "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enforceAppSeparationAllowListUpdateInternal coexistenceAppSet size - "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4173
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    .line 4174
    invoke-virtual {v1, v2, v15, v13}, Lcom/android/server/pm/PersonaManagerService;->getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v16

    .line 4175
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v11

    const-string v11, "enforceAppSeparationAllowListUpdateInternal packageInfoList size -"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    const/4 v12, 0x1

    const/16 v29, 0x0

    :goto_6
    :try_start_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v16, :cond_16

    :try_start_c
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v30, v11

    move-object/from16 v11, v16

    check-cast v11, Landroid/content/pm/PackageInfo;

    .line 4177
    invoke-virtual {v1, v11}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v16
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-nez v16, :cond_15

    move/from16 v16, v12

    .line 4178
    :try_start_d
    iget-object v12, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v12}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 4179
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v31, v3

    :try_start_e
    const-string v3, "enforceAppSeparationAllowListUpdateInternal isKeyBoardApp - "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v12, v16

    move-object/from16 v11, v30

    move-object/from16 v3, v31

    goto :goto_6

    :cond_a
    move-object/from16 v31, v3

    .line 4183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enforceAppSeparationAllowListUpdateInternal Non system app - "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_b

    .line 4188
    iget-object v3, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_7

    :cond_b
    move/from16 v3, v28

    :goto_7
    if-eqz v3, :cond_c

    .line 4190
    iget-object v12, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    :cond_c
    if-nez v3, :cond_14

    iget-object v3, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4191
    invoke-virtual {v15, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_d
    if-nez v18, :cond_e

    if-nez v18, :cond_14

    if-eqz v17, :cond_14

    .line 4193
    :cond_e
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    move-object/from16 v32, v0

    .line 4194
    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    if-eqz v0, :cond_11

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_9

    :cond_f
    move-object/from16 v27, v3

    :cond_10
    move-object/from16 v33, v5

    goto :goto_a

    .line 4195
    :cond_11
    :goto_9
    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v27, v3

    iget-object v3, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 4196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforceAppSeparationAllowListUpdateInternal Installing package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in user -"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v33, v5

    const/high16 v5, 0x10000000

    invoke-virtual {v1, v0, v3, v5}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v16, 0x0

    goto :goto_a

    .line 4202
    :cond_12
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v29, v29, 0x1

    :cond_13
    :goto_a
    move-object/from16 v3, v27

    move-object/from16 v0, v32

    move-object/from16 v5, v33

    goto :goto_8

    :cond_14
    move-object/from16 v32, v0

    move-object/from16 v33, v5

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_d

    :cond_15
    move-object/from16 v32, v0

    move-object/from16 v31, v3

    move-object/from16 v33, v5

    move/from16 v16, v12

    :goto_b
    move/from16 v12, v16

    move-object/from16 v11, v30

    move-object/from16 v3, v31

    move-object/from16 v0, v32

    move-object/from16 v5, v33

    goto/16 :goto_6

    :catchall_4
    move-exception v0

    move/from16 v16, v12

    :goto_c
    move-object/from16 v15, v19

    move-object/from16 v13, v21

    move-object/from16 v19, v22

    move-object/from16 v34, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v5, v26

    move/from16 v12, v29

    goto/16 :goto_20

    :catch_3
    move-exception v0

    move/from16 v16, v12

    :goto_d
    move-object/from16 v12, v19

    move-object/from16 v13, v21

    move-object/from16 v19, v22

    move-object/from16 v21, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v5, v26

    move/from16 v15, v29

    goto/16 :goto_1a

    :cond_16
    move-object/from16 v31, v3

    move/from16 v16, v12

    if-nez v18, :cond_17

    if-nez v17, :cond_17

    .line 4212
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsCreated()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object/from16 v15, v19

    move-object/from16 v13, v21

    move-object/from16 v19, v22

    move-object/from16 v34, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v5, v26

    move/from16 v12, v29

    move-object/from16 v3, v31

    goto/16 :goto_20

    :catch_4
    move-exception v0

    move-object/from16 v12, v19

    move-object/from16 v13, v21

    move-object/from16 v19, v22

    move-object/from16 v21, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v5, v26

    move/from16 v15, v29

    move-object/from16 v3, v31

    goto/16 :goto_1a

    :cond_17
    :goto_e
    if-eqz v2, :cond_18

    const/4 v3, 0x0

    .line 4221
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4222
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_19

    .line 4225
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 4230
    :cond_18
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    :cond_19
    sput-object v31, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    move-object/from16 v3, v31

    const/4 v2, 0x0

    .line 4234
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4235
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1a

    .line 4238
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v26

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 4244
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v10, v24

    .line 4245
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v12, v16

    move-object/from16 v11, v25

    .line 4246
    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4247
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 4249
    :try_start_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v13, v21

    .line 4250
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v2, v19

    move/from16 v15, v29

    .line 4251
    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    .line 4252
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_11

    :catch_5
    move-exception v0

    .line 4256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4259
    :goto_11
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v18, :cond_1e

    .line 4262
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    goto/16 :goto_1e

    :catchall_6
    move-exception v0

    move/from16 v16, v12

    move-object/from16 v13, v21

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v5, v26

    move/from16 v17, v29

    move/from16 v12, v17

    move-object/from16 v15, v19

    move-object/from16 v19, v22

    move-object/from16 v34, v23

    goto/16 :goto_20

    :catch_6
    move-exception v0

    move/from16 v16, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v21

    move-object/from16 v19, v22

    move-object/from16 v21, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v5, v26

    move/from16 v17, v29

    move/from16 v15, v17

    goto/16 :goto_1a

    :catchall_7
    move-exception v0

    move-object/from16 v13, v21

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v5, v26

    goto/16 :goto_15

    :catch_7
    move-exception v0

    move-object/from16 v12, v19

    move-object/from16 v13, v21

    move-object/from16 v19, v22

    move-object/from16 v21, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v5, v26

    goto/16 :goto_19

    :catchall_8
    move-exception v0

    move-object v5, v12

    move-object/from16 v13, v21

    move-object/from16 v10, v24

    goto :goto_13

    :catch_8
    move-exception v0

    move-object v5, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v21

    move-object/from16 v19, v22

    move-object/from16 v21, v23

    move-object/from16 v10, v24

    goto :goto_14

    :catchall_9
    move-exception v0

    move-object v10, v5

    move-object v5, v12

    move-object/from16 v13, v21

    :goto_13
    move-object/from16 v11, v25

    goto :goto_15

    :catch_9
    move-exception v0

    move-object v10, v5

    move-object v5, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v21

    move-object/from16 v19, v22

    move-object/from16 v21, v23

    :goto_14
    move-object/from16 v11, v25

    goto :goto_19

    :catchall_a
    move-exception v0

    move-object v10, v5

    move-object v5, v12

    move-object v11, v15

    move-object/from16 v13, v21

    goto :goto_15

    :catch_a
    move-exception v0

    move-object v10, v5

    move-object v5, v12

    move-object v11, v15

    move-object/from16 v12, v19

    move-object/from16 v13, v21

    goto :goto_18

    :catchall_b
    move-exception v0

    move-object v10, v5

    move-object v5, v12

    move-object v11, v15

    :goto_15
    move-object/from16 v16, v0

    move-object/from16 v15, v19

    :goto_16
    move-object/from16 v19, v22

    move-object/from16 v34, v23

    :goto_17
    const/4 v0, 0x1

    const/4 v12, 0x0

    goto/16 :goto_21

    :catch_b
    move-exception v0

    move-object v10, v5

    move-object v5, v12

    move-object v11, v15

    move-object/from16 v12, v19

    :goto_18
    move-object/from16 v19, v22

    move-object/from16 v21, v23

    :goto_19
    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_1a
    move-object/from16 v17, v12

    .line 4216
    :try_start_10
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    move/from16 v22, v15

    :try_start_11
    const-string v15, "Exception in enforceAppSeparationAllowListUpdateInternal "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    if-eqz v2, :cond_1b

    const/4 v12, 0x0

    .line 4221
    invoke-virtual {v2, v4, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4222
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1c

    .line 4225
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 4230
    :cond_1b
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    :cond_1c
    sput-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v3, :cond_1d

    const/4 v2, 0x0

    .line 4234
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4235
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1d

    .line 4238
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 4244
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4245
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 4246
    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4247
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 4249
    :try_start_12
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4250
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v15, v17

    move/from16 v12, v22

    .line 4251
    invoke-virtual {v0, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    .line 4252
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_1d

    :catch_c
    move-exception v0

    .line 4256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4259
    :goto_1d
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v18, :cond_1e

    goto/16 :goto_12

    :cond_1e
    :goto_1e
    return-void

    :catchall_c
    move-exception v0

    goto :goto_1f

    :catchall_d
    move-exception v0

    move/from16 v22, v15

    :goto_1f
    move-object/from16 v15, v17

    move-object/from16 v34, v21

    move/from16 v12, v22

    :goto_20
    move/from16 v35, v16

    move-object/from16 v16, v0

    move/from16 v0, v35

    :goto_21
    if-eqz v2, :cond_1f

    move/from16 v17, v12

    const/4 v12, 0x0

    .line 4221
    invoke-virtual {v2, v4, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 4222
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4223
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_20

    .line 4225
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4226
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_1f
    move/from16 v17, v12

    .line 4230
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    :cond_20
    sput-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v3, :cond_21

    const/4 v2, 0x0

    .line 4234
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 4235
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_21

    .line 4238
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 4244
    :cond_21
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4245
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4246
    invoke-virtual {v2, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4247
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 4249
    :try_start_13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4250
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v2, v17

    .line 4251
    invoke-virtual {v0, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v3, v20

    move-object/from16 v4, v34

    .line 4252
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    goto :goto_24

    :catch_d
    move-exception v0

    .line 4256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4259
    :goto_24
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v18, :cond_22

    .line 4262
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    .line 4264
    :cond_22
    throw v16
.end method

.method public enforceAppSeparationCoexistenceAllowListUpdate()V
    .locals 2

    .line 3779
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    .line 3780
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3781
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, "PersonaManagerService"

    const-string v0, "enforceAppSeparationCoexistenceAllowListUpdate"

    .line 3782
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final enforceAppSeparationCoexistenceAllowListUpdateInternal()V
    .locals 49

    move-object/from16 v1, p0

    .line 4270
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v2

    .line 4271
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v3

    .line 4272
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v4

    if-eqz v2, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const-string v8, "enforceAppSeparationCoexistenceAllowListUpdateInternal sending removedinfo intent. count = "

    const-string v9, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    const-string v10, "com.samsung.android.appseparation"

    const-string v11, "app_uninstalled"

    const-string v12, "coexistList after package: "

    const-string v13, "enforceAppSeparationCoexistenceAllowListUpdateInternal after update packageName - "

    const-string v14, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    const-string v15, "coexistList before package: "

    const-string v5, "enforceAppSeparationCoexistenceAllowListUpdateInternal before update packageName - "

    const-string v6, "SeparationWhiteListReturn"

    move/from16 v17, v7

    const-string v7, "com.samsung.android.knox.intent.action.SEPARATION_ALLOWEDLIST_RETURN"

    move/from16 v18, v4

    const-string v4, "enforceAppSeparationCoexistenceAllowListUpdateInternal used by createSeparationConfig"

    move-object/from16 v19, v8

    const-string v8, "enforceAppSeparationCoexistenceAllowListUpdateInternal: finally"

    move-object/from16 v20, v9

    const-string v9, "enforceAppSeparationCoexistenceAllowListUpdateInternal isOutside - "

    move-object/from16 v21, v10

    const-string v10, "APP_SEPARATION_APP_LIST"

    move-object/from16 v22, v11

    const-string v11, "APP_SEPARATION_OUTSIDE"

    move-object/from16 v23, v14

    const-string v14, "APP_SEPARATION_COEXISTANCE_LIST"

    const-string v1, "PersonaManagerService"

    if-nez v3, :cond_7

    :try_start_0
    const-string v0, "enforceAppSeparationCoexistenceAllowListUpdateInternal no app separation data found in db"

    .line 4277
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4396
    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    const/4 v8, 0x0

    .line 4398
    invoke-virtual {v2, v11, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4399
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 4400
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4401
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    .line 4403
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4404
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    .line 4408
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4413
    :cond_2
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4415
    :cond_3
    sput-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    .line 4417
    invoke-virtual {v3, v11, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4418
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4419
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    .line 4422
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    .line 4427
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4433
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4434
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 4435
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v2, p0

    .line 4436
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 4438
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v3, v23

    .line 4439
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, v22

    const/4 v4, 0x0

    .line 4440
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    .line 4441
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4443
    iget-object v1, v2, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 4445
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4448
    :goto_5
    iget-object v0, v2, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v18, :cond_6

    .line 4451
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v24, v19

    move-object/from16 v19, v6

    move-object/from16 v6, p0

    move-object/from16 v16, v0

    move-object/from16 v6, v19

    move-object/from16 v43, v20

    move-object/from16 v44, v21

    move-object/from16 v45, v22

    move-object/from16 v46, v23

    move-object/from16 v42, v24

    const/4 v0, 0x1

    const/16 v47, 0x0

    move-object/from16 v48, v13

    move-object v13, v3

    move-object v3, v4

    move-object v4, v7

    move-object v7, v15

    move-object v15, v12

    move-object v12, v5

    move-object v5, v14

    move-object/from16 v14, v48

    goto/16 :goto_2d

    :catch_1
    move-exception v0

    move-object/from16 v24, v19

    move-object/from16 v19, v6

    move-object/from16 v6, p0

    move-object v6, v7

    move-object v7, v15

    move-object/from16 v40, v21

    const/16 v34, 0x1

    const/16 v41, 0x0

    move-object v15, v12

    move-object v12, v5

    move-object v5, v14

    :goto_6
    move-object v14, v13

    move-object v13, v3

    move-object v3, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v24

    goto/16 :goto_24

    :cond_7
    move-object/from16 v24, v19

    move-object/from16 v25, v20

    move-object/from16 v26, v21

    move-object/from16 v27, v22

    move-object/from16 v28, v23

    move-object/from16 v19, v6

    move-object/from16 v6, p0

    move-object/from16 v20, v7

    move-object/from16 v21, v12

    const/4 v7, 0x0

    .line 4281
    :try_start_2
    invoke-virtual {v3, v11, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 4282
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4283
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4284
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    if-eqz v2, :cond_8

    .line 4286
    :try_start_3
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v0

    move-object v12, v5

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v6, v19

    move-object/from16 v15, v21

    move-object/from16 v42, v24

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    move-object/from16 v45, v27

    move-object/from16 v46, v28

    const/4 v0, 0x1

    const/16 v47, 0x0

    move-object v14, v13

    move-object v13, v3

    move-object v3, v4

    move-object/from16 v4, v20

    goto/16 :goto_2d

    :catch_2
    move-exception v0

    move-object v12, v5

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v6, v20

    move-object/from16 v15, v21

    move-object/from16 v20, v25

    move-object/from16 v40, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    const/16 v34, 0x1

    const/16 v41, 0x0

    goto :goto_6

    :cond_8
    :goto_7
    move-object/from16 v23, v13

    .line 4288
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    move-result-object v13

    iput-object v13, v6, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    if-nez v7, :cond_9

    .line 4290
    :try_start_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v16, v0

    move-object v13, v3

    move-object v3, v4

    move-object v12, v5

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v15, v21

    move-object/from16 v14, v23

    goto/16 :goto_22

    .line 4292
    :cond_9
    :goto_8
    :try_start_6
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_d

    if-nez v22, :cond_a

    .line 4294
    :try_start_7
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    :cond_a
    move-object/from16 v7, v22

    if-nez v0, :cond_b

    .line 4297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_b
    move-object/from16 v22, v3

    .line 4299
    :try_start_8
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    move-object/from16 v29, v4

    .line 4300
    :try_start_9
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enforceAppSeparationCoexistenceAllowListUpdateInternal is called for isOutside - "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enforceAppSeparationCoexistenceAllowListUpdateInternal coexistenceAppsSet size - "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enforceAppSeparationCoexistenceAllowListUpdateInternal prevCoexistenceAppsSet size - "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v30

    .line 4305
    invoke-virtual {v6, v2, v13, v4}, Lcom/android/server/pm/PersonaManagerService;->getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v0

    .line 4306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    move-object/from16 v31, v15

    :try_start_a
    const-string v15, "enforceAppSeparationCoexistenceAllowListUpdateInternal packageInfoList size -"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    const/4 v15, 0x1

    const/16 v32, 0x0

    :goto_9
    :try_start_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    if-eqz v0, :cond_25

    :try_start_c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v7

    move-object v7, v0

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 4308
    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 4309
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move/from16 v34, v15

    :try_start_d
    const-string v15, "enforceAppSeparationCoexistenceAllowListUpdateInternal isKeyBoardApp - "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, v33

    move/from16 v15, v34

    goto :goto_9

    :cond_c
    move/from16 v34, v15

    .line 4314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "enforceAppSeparationCoexistenceAllowListUpdateInternal Non system app - "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "enforceAppSeparationCoexistenceAllowListUpdateInternal coexistenceAppsSet.contains - "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "enforceAppSeparationCoexistenceAllowListUpdateInternal prevCoexistenceAppsSet.contains - "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_d

    .line 4319
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4322
    :cond_d
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    const-string v15, " in user -"

    if-nez v0, :cond_1c

    .line 4323
    :try_start_e
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-object/from16 v35, v4

    const-string v4, "enforceAppSeparationCoexistenceAllowListUpdateInternal Uninstalling package "

    if-eqz v0, :cond_16

    if-eqz v12, :cond_15

    if-nez v18, :cond_f

    if-nez v18, :cond_e

    if-eqz v17, :cond_e

    goto :goto_a

    :cond_e
    move-object/from16 v36, v5

    move-object/from16 v38, v9

    move-object/from16 v39, v14

    goto/16 :goto_10

    .line 4326
    :cond_f
    :goto_a
    :try_start_f
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 4327
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v36
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-eqz v36, :cond_11

    move-object/from16 v36, v5

    .line 4328
    :try_start_10
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object/from16 v38, v9

    :try_start_11
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 4329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4331
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move-object/from16 v39, v14

    const/high16 v14, 0x10000000

    :try_start_12
    invoke-virtual {v6, v5, v9, v14}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_10

    const/16 v34, 0x0

    goto/16 :goto_c

    .line 4335
    :cond_10
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v16, v0

    move-object v5, v14

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v42, v24

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    move-object/from16 v45, v27

    move-object/from16 v46, v28

    move-object/from16 v3, v29

    move-object/from16 v7, v31

    move/from16 v47, v32

    move/from16 v0, v34

    move-object/from16 v12, v36

    move-object/from16 v9, v38

    goto/16 :goto_2d

    :catch_3
    move-exception v0

    move-object v5, v14

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v40, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v3, v29

    move-object/from16 v7, v31

    move/from16 v41, v32

    move-object/from16 v12, v36

    move-object/from16 v9, v38

    goto/16 :goto_24

    :catchall_4
    move-exception v0

    move-object/from16 v16, v0

    move-object v5, v14

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v42, v24

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    move-object/from16 v45, v27

    move-object/from16 v46, v28

    move-object/from16 v3, v29

    move-object/from16 v7, v31

    move/from16 v47, v32

    move/from16 v0, v34

    move-object/from16 v12, v36

    goto/16 :goto_2d

    :catch_4
    move-exception v0

    move-object v5, v14

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v40, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v3, v29

    move-object/from16 v7, v31

    move/from16 v41, v32

    move-object/from16 v12, v36

    goto/16 :goto_24

    :cond_11
    move-object/from16 v36, v5

    move-object/from16 v38, v9

    :cond_12
    move-object/from16 v39, v14

    :cond_13
    :goto_c
    move-object/from16 v5, v36

    move-object/from16 v0, v37

    move-object/from16 v9, v38

    move-object/from16 v14, v39

    goto/16 :goto_b

    :cond_14
    move-object/from16 v36, v5

    move-object/from16 v38, v9

    move-object/from16 v39, v14

    goto/16 :goto_10

    :cond_15
    move-object/from16 v36, v5

    move-object/from16 v38, v9

    move-object/from16 v39, v14

    .line 4342
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v6, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    goto :goto_10

    :cond_16
    move-object/from16 v36, v5

    move-object/from16 v38, v9

    move-object/from16 v39, v14

    const/4 v5, 0x1

    .line 4345
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 4346
    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    if-eqz v14, :cond_18

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v14

    if-eqz v14, :cond_17

    goto :goto_e

    :cond_17
    move-object/from16 v37, v0

    goto :goto_f

    .line 4347
    :cond_18
    :goto_e
    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v14, v5}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 4348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    iget v5, v9, Landroid/content/pm/UserInfo;->id:I

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v37, v0

    const/high16 v0, 0x10000000

    invoke-virtual {v6, v5, v14, v0}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v34, 0x0

    goto :goto_f

    .line 4354
    :cond_19
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v0

    if-eqz v0, :cond_1a

    add-int/lit8 v32, v32, 0x1

    :cond_1a
    :goto_f
    move-object/from16 v0, v37

    const/4 v5, 0x1

    goto :goto_d

    :cond_1b
    :goto_10
    move/from16 v4, v18

    goto/16 :goto_16

    :cond_1c
    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v38, v9

    move-object/from16 v39, v14

    .line 4360
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4361
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz v12, :cond_1e

    :cond_1d
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4362
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    if-eqz v12, :cond_21

    :cond_1e
    if-nez v18, :cond_1f

    if-nez v18, :cond_1b

    if-eqz v17, :cond_1b

    .line 4364
    :cond_1f
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 4365
    iget-object v5, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v5}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v5, :cond_20

    .line 4367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unsuspend package "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4369
    iget-object v0, v6, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->-$$Nest$mgetApplicationPackageManager(Lcom/android/server/pm/PersonaManagerService$Injector;)Landroid/app/ApplicationPackageManager;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 4371
    :try_start_13
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v6, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_11

    :catch_5
    move-exception v0

    .line 4373
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :cond_21
    if-nez v18, :cond_22

    if-nez v18, :cond_1b

    if-eqz v17, :cond_1b

    .line 4380
    :cond_22
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4381
    iget-object v5, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v5}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    if-nez v4, :cond_23

    move/from16 v4, v18

    .line 4382
    :try_start_15
    invoke-virtual {v6, v4, v7}, Lcom/android/server/pm/PersonaManagerService;->installPackageForAppSeparation(ILandroid/content/pm/PackageInfo;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object/from16 v16, v0

    move/from16 v18, v4

    goto :goto_14

    :catch_6
    move-exception v0

    move/from16 v18, v4

    goto :goto_15

    :cond_23
    move/from16 v4, v18

    :goto_13
    move/from16 v18, v4

    goto :goto_12

    :catchall_6
    move-exception v0

    move-object/from16 v16, v0

    :goto_14
    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v42, v24

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    move-object/from16 v45, v27

    move-object/from16 v46, v28

    move-object/from16 v3, v29

    move-object/from16 v7, v31

    move/from16 v47, v32

    move/from16 v0, v34

    move-object/from16 v12, v36

    move-object/from16 v9, v38

    move-object/from16 v5, v39

    goto/16 :goto_2d

    :catch_7
    move-exception v0

    :goto_15
    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v40, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v3, v29

    move-object/from16 v7, v31

    move/from16 v41, v32

    move-object/from16 v12, v36

    move-object/from16 v9, v38

    move-object/from16 v5, v39

    goto/16 :goto_24

    :catchall_7
    move-exception v0

    goto :goto_17

    :catch_8
    move-exception v0

    goto :goto_18

    :cond_24
    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v38, v9

    move-object/from16 v39, v14

    move/from16 v34, v15

    goto/16 :goto_10

    :goto_16
    move/from16 v15, v34

    move/from16 v18, v4

    move-object/from16 v7, v33

    move-object/from16 v4, v35

    move-object/from16 v5, v36

    move-object/from16 v9, v38

    move-object/from16 v14, v39

    goto/16 :goto_9

    :catchall_8
    move-exception v0

    move/from16 v34, v15

    :goto_17
    move-object/from16 v16, v0

    move-object v12, v5

    move-object v5, v14

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v42, v24

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    move-object/from16 v45, v27

    move-object/from16 v46, v28

    move-object/from16 v3, v29

    move-object/from16 v7, v31

    goto/16 :goto_2c

    :catch_9
    move-exception v0

    move/from16 v34, v15

    :goto_18
    move-object v12, v5

    move-object v5, v14

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v40, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v3, v29

    move-object/from16 v7, v31

    goto/16 :goto_1e

    :cond_25
    move-object/from16 v36, v5

    move-object/from16 v38, v9

    move-object/from16 v39, v14

    move/from16 v34, v15

    move/from16 v4, v18

    .line 4396
    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_27

    const/4 v3, 0x0

    .line 4398
    invoke-virtual {v2, v11, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4399
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v5, v39

    .line 4400
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4401
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v38

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_26

    .line 4403
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4404
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, v36

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_26
    if-eqz v2, :cond_28

    .line 4408
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v31

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_27
    move-object/from16 v3, v29

    move-object/from16 v9, v38

    move-object/from16 v5, v39

    .line 4413
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4415
    :cond_28
    sput-object v22, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    move-object/from16 v13, v22

    const/4 v2, 0x0

    .line 4417
    invoke-virtual {v13, v11, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4418
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4419
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4420
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_29

    .line 4422
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v23

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_29
    if-eqz v3, :cond_2a

    .line 4427
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v21

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 4433
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v2, v20

    .line 4434
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, v19

    move/from16 v2, v34

    .line 4435
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4436
    invoke-virtual {v6, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 4438
    :try_start_16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v2, v28

    .line 4439
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, v27

    move/from16 v2, v32

    .line 4440
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v3, v25

    move-object/from16 v5, v26

    .line 4441
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v24

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4443
    iget-object v1, v6, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    goto :goto_1d

    :catch_a
    move-exception v0

    .line 4445
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4448
    :goto_1d
    iget-object v0, v6, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v4, :cond_30

    .line 4451
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    goto/16 :goto_2a

    :catchall_9
    move-exception v0

    move-object v12, v5

    move-object v5, v14

    move/from16 v16, v15

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v3, v29

    move-object/from16 v7, v31

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v42, v24

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    move-object/from16 v45, v27

    move-object/from16 v46, v28

    move/from16 v47, v32

    move/from16 v48, v16

    move-object/from16 v16, v0

    move/from16 v0, v48

    goto/16 :goto_2d

    :catch_b
    move-exception v0

    move-object v12, v5

    move-object v5, v14

    move/from16 v16, v15

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v40, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v3, v29

    move-object/from16 v7, v31

    move/from16 v34, v16

    :goto_1e
    move/from16 v41, v32

    goto/16 :goto_24

    :catchall_a
    move-exception v0

    move-object v12, v5

    move-object v5, v14

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v3, v29

    move-object/from16 v7, v31

    goto/16 :goto_21

    :catch_c
    move-exception v0

    move-object v12, v5

    move-object v5, v14

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v40, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v3, v29

    move-object/from16 v7, v31

    goto/16 :goto_23

    :catchall_b
    move-exception v0

    move-object v12, v5

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v3, v29

    goto/16 :goto_21

    :catch_d
    move-exception v0

    move-object v12, v5

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v40, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v3, v29

    goto/16 :goto_23

    :catchall_c
    move-exception v0

    move-object v3, v4

    move-object v12, v5

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    goto :goto_1f

    :catch_e
    move-exception v0

    move-object v3, v4

    move-object v12, v5

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    goto :goto_20

    :catchall_d
    move-exception v0

    move-object v13, v3

    move-object v3, v4

    move-object v12, v5

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v15, v21

    :goto_1f
    move-object/from16 v14, v23

    goto :goto_21

    :catch_f
    move-exception v0

    move-object v13, v3

    move-object v3, v4

    move-object v12, v5

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v15, v21

    :goto_20
    move-object/from16 v14, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v40, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    goto :goto_23

    :catchall_e
    move-exception v0

    move-object v12, v5

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v15, v21

    move-object v14, v13

    move-object v13, v3

    move-object v3, v4

    :goto_21
    move-object/from16 v16, v0

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    :goto_22
    move-object/from16 v42, v24

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    move-object/from16 v45, v27

    move-object/from16 v46, v28

    const/4 v0, 0x1

    const/16 v47, 0x0

    goto/16 :goto_2d

    :catch_10
    move-exception v0

    move-object v12, v5

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v6, v20

    move-object/from16 v15, v21

    move-object/from16 v20, v25

    move-object/from16 v40, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object v14, v13

    move-object v13, v3

    move-object v3, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v24

    :goto_23
    const/16 v34, 0x1

    const/16 v41, 0x0

    :goto_24
    move-object/from16 v16, v4

    .line 4392
    :try_start_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    move-object/from16 v17, v6

    :try_start_18
    const-string v6, "Exception in enforceAppSeparationCoexistenceAllowListUpdateInternal "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4393
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    .line 4396
    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2c

    const/4 v4, 0x0

    .line 4398
    invoke-virtual {v2, v11, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4399
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4400
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2b

    .line 4403
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :cond_2b
    if-eqz v2, :cond_2d

    .line 4408
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 4413
    :cond_2c
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4415
    :cond_2d
    sput-object v13, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v13, :cond_2f

    const/4 v2, 0x0

    .line 4417
    invoke-virtual {v13, v11, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4418
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4419
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2e

    .line 4422
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_2e
    if-eqz v3, :cond_2f

    .line 4427
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 4433
    :cond_2f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v4, v17

    .line 4434
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v6, v16

    const/4 v2, 0x0

    .line 4435
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v2, p0

    .line 4436
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 4438
    :try_start_19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v3, v23

    .line 4439
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v4, v22

    move/from16 v3, v41

    .line 4440
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v4, v20

    move-object/from16 v5, v40

    .line 4441
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v19

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4443
    iget-object v1, v2, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_11

    goto :goto_29

    :catch_11
    move-exception v0

    .line 4445
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4448
    :goto_29
    iget-object v0, v2, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v18, :cond_30

    .line 4451
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    :cond_30
    :goto_2a
    return-void

    :catchall_f
    move-exception v0

    move-object/from16 v6, v16

    move-object/from16 v4, v17

    goto :goto_2b

    :catchall_10
    move-exception v0

    move-object v4, v6

    move-object/from16 v6, v16

    :goto_2b
    move-object/from16 v42, v19

    move-object/from16 v43, v20

    move-object/from16 v45, v22

    move-object/from16 v46, v23

    move-object/from16 v44, v40

    move/from16 v32, v41

    move-object/from16 v16, v0

    :goto_2c
    move/from16 v47, v32

    move/from16 v0, v34

    .line 4396
    :goto_2d
    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_32

    const/4 v8, 0x0

    .line 4398
    invoke-virtual {v2, v11, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 4399
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 4400
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v17, v0

    .line 4401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_31

    .line 4403
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4404
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_31
    if-eqz v2, :cond_33

    .line 4408
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_32
    move/from16 v17, v0

    .line 4413
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4415
    :cond_33
    sput-object v13, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v13, :cond_35

    const/4 v2, 0x0

    .line 4417
    invoke-virtual {v13, v11, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4418
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4419
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4420
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_34

    .line 4422
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_34
    if-eqz v3, :cond_35

    .line 4427
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 4433
    :cond_35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4434
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v2, v17

    .line 4435
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v2, p0

    .line 4436
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 4438
    :try_start_1a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v3, v46

    .line 4439
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v4, v45

    move/from16 v3, v47

    .line 4440
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v4, v43

    move-object/from16 v5, v44

    .line 4441
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v42

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4443
    iget-object v1, v2, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_12

    goto :goto_32

    :catch_12
    move-exception v0

    .line 4445
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4448
    :goto_32
    iget-object v0, v2, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v18, :cond_36

    .line 4451
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    .line 4453
    :cond_36
    throw v16
.end method

.method public enforceAppSeparationDeletion()V
    .locals 2

    .line 3786
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3787
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, "PersonaManagerService"

    const-string v0, "enforceAppSeparationDeletion"

    .line 3788
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final enforceAppSeparationDeletionInternal()V
    .locals 4

    const/4 v0, 0x1

    .line 3999
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    .line 4000
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "removestart"

    .line 4001
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.samsung.android.appseparation"

    const-string v3, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    .line 4002
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4003
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4005
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4007
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 4008
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 4009
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4010
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 4011
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->enforceSeparatedAppsRemoveInternal()Z

    move-result v0

    .line 4012
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.knox.intent.action.SEPARATION_ACTION_RETURN"

    .line 4013
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    const-string v3, "deactivate"

    .line 4014
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "status"

    .line 4015
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4016
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 4021
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->logEventDeactivationForAppSep()V

    .line 4022
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 4023
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    return-void
.end method

.method public final enforceSeparatedAppsRemoveInternal()Z
    .locals 10

    .line 3945
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "enforceSeparatedAppsRemoveInternal return immediately if App Separation has not been set"

    .line 3948
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v3, "APP_SEPARATION_OUTSIDE"

    .line 3951
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3952
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3953
    new-instance v5, Ljava/util/HashSet;

    const-string v6, "APP_SEPARATION_APP_LIST"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3954
    new-instance v6, Ljava/util/HashSet;

    const-string v7, "APP_SEPARATION_COEXISTANCE_LIST"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3955
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 3956
    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackagesAsUser(ILjava/util/Set;)V

    .line 3957
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v7, 0x40

    invoke-virtual {v0, v7, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 3959
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 3960
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3961
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enforceSeparatedAppsRemoveInternal remove packageName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v3, :cond_3

    :cond_2
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3963
    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v3, :cond_1

    .line 3964
    :cond_3
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3969
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    move v4, v3

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3970
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    .line 3973
    :cond_6
    invoke-virtual {p0, v2, v5}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3974
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enforceSeparatedAppsRemoveInternal remove use 0 packageName ? - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v7, 0x10000000

    .line 3975
    invoke-virtual {p0, v2, v5, v7}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 3979
    invoke-virtual {p0, v5, v3}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    move v4, v2

    goto :goto_1

    .line 3986
    :cond_7
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    .line 3987
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "removed"

    .line 3988
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.samsung.android.appseparation"

    const-string v2, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    .line 3989
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3990
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3992
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v4
.end method

.method public final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 1

    .line 2788
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_0

    .line 2789
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2791
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public getAdminComponentName(I)Landroid/content/ComponentName;
    .locals 5

    .line 1944
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 1945
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    .line 1947
    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isDualDarDO(I)Z

    move-result v3

    if-nez v2, :cond_0

    .line 1951
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v4

    .line 1953
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move v4, v2

    :goto_0
    if-nez v2, :cond_2

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1964
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    .line 1957
    :cond_2
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->isTestingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1958
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/PersonaManagerInternal;->getAdminComponentNameFromEdm(I)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1964
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-object p1

    .line 1960
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService$LocalService;->getAdminComponentNameFromEdm(I)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1964
    :goto_3
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 1965
    throw p1
.end method

.method public final getAppNameByPID(I)Ljava/lang/String;
    .locals 2

    .line 3076
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3077
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3080
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3081
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3082
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_0

    .line 3083
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final getAppSeparationCoexistenceList(Landroid/os/Bundle;)Ljava/util/List;
    .locals 0

    const-string p0, "APP_SEPARATION_COEXISTANCE_LIST"

    .line 4699
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4701
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p0
.end method

.method public getAppSeparationConfig()Landroid/os/Bundle;
    .locals 0

    .line 3604
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getAppSeparationId()I
    .locals 5

    .line 3799
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 3801
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 3803
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3804
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3805
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 3810
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 3811
    throw v2
.end method

.method public final getAppSeparationName(Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 0

    .line 2039
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2040
    iget-object p0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Separated Apps"

    return-object p0

    .line 2043
    :cond_0
    iget-object p0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppsListOnlyPresentInSeparatedApps()Ljava/util/List;
    .locals 10

    const-string v0, ""

    .line 3861
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3862
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v2

    .line 3864
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3866
    sget-object v5, Lcom/android/server/pm/PersonaManagerService;->mDeviceOwnerPackage:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3867
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    if-eqz v5, :cond_0

    .line 3868
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mDeviceOwnerPackage:Ljava/lang/String;

    :cond_1
    const-string v0, "APP_SEPARATION_OUTSIDE"

    const/4 v5, 0x0

    .line 3870
    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3871
    new-instance v6, Ljava/util/HashSet;

    const-string v7, "APP_SEPARATION_APP_LIST"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3872
    new-instance v7, Ljava/util/HashSet;

    const-string v8, "APP_SEPARATION_COEXISTANCE_LIST"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3873
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSystemApps()Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3874
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 3875
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v5, v5}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v5

    .line 3877
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 3878
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3879
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3880
    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eq v0, v9, :cond_2

    sget-object v9, Lcom/android/server/pm/PersonaManagerService;->mDeviceOwnerPackage:Ljava/lang/String;

    .line 3881
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/server/pm/PersonaManagerService;->isKpuPackage(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    .line 3884
    :cond_3
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3892
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "PersonaManagerService"

    const-string v5, "Exception in getSeparatedAppsList"

    .line 3888
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-object v1

    .line 3892
    :goto_3
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 3893
    throw v0
.end method

.method public getAttributes(I)I
    .locals 1

    const-string v0, "getAttributes"

    .line 2809
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2811
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->getAttributes(Lcom/android/server/pm/UserManagerInternal;I)I

    move-result p0

    return p0
.end method

.method public getContainerName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, "Work profile"

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 1992
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 1995
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isSecureFolderIds(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1996
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1999
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    .line 2000
    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/PersonaManagerService;->getContainerNamePerTypes(Landroid/os/UserManager;I)Ljava/lang/String;

    move-result-object p1

    .line 2002
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-object p1
.end method

.method public final getContainerNamePerTypes(Landroid/os/UserManager;I)Ljava/lang/String;
    .locals 1

    .line 2013
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2018
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationName(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2019
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationName(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2020
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getECName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2021
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getECName(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2022
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getProfileName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2025
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getProfileName(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2027
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/PersonaManagerService;->getWorkProfileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_4

    .line 2031
    iget-object p0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 2033
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getContainerName return value for container id:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PersonaManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getContainerOrder(I)I
    .locals 3

    .line 2118
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 2119
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    .line 2120
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "KNOX"

    .line 2125
    iget-object p1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2132
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return p1
.end method

.method public getCustomResource(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2830
    invoke-static {p1, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceFirmwareVersion()Ljava/lang/String;
    .locals 4

    .line 1566
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, "Unknown"

    .line 1569
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1. pdaVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. pdaVersion = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceOwnerPackage()Ljava/lang/String;
    .locals 4

    const-string p0, "device_policy"

    .line 3648
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 3647
    invoke-static {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object p0

    const-string v0, "PersonaManagerService"

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    .line 3652
    :try_start_0
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3654
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceOwnerPackage exception -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    :cond_0
    :goto_0
    sget-boolean p0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceOwnerPackage packageName -"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public final getDpmLimitTimeout(ILandroid/content/ComponentName;)I
    .locals 2

    if-eqz p2, :cond_0

    .line 3316
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p2, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    const-wide/32 v0, 0x7fffffff

    cmp-long p2, p0, v0

    if-lez p2, :cond_1

    const p0, 0x7fffffff

    goto :goto_1

    :cond_1
    long-to-int p0, p0

    :goto_1
    return p0
.end method

.method public getDualDARProfile()Landroid/os/Bundle;
    .locals 0

    .line 3391
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getDualDARProfile(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getECName(I)Ljava/lang/String;
    .locals 1

    .line 2989
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->isTestingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2990
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/PersonaManagerInternal;->getECName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2992
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService$LocalService;->getECName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFocusedLauncherId()I
    .locals 1

    .line 1930
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1931
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1932
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFocusedUser()I
    .locals 4

    .line 3247
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3248
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 3249
    iget v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    .line 3251
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3255
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v3

    .line 3253
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v2

    .line 3255
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 3256
    throw v2

    .line 3259
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3260
    :try_start_2
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    .line 3261
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public getFotaVersion()I
    .locals 3

    const-string v0, "PersonaManagerService"

    const-string v1, "getFotaVersion is called..."

    .line 2333
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2336
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const-string v1, "fotaversion"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 2337
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2338
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 2340
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "PersonaManagerService"

    .line 2341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catchall_0
    move-exception p0

    .line 2340
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getIMEPackages()Ljava/util/Set;
    .locals 2

    .line 3695
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 3696
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackagesAsUser(ILjava/util/Set;)V

    .line 3697
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3699
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackagesAsUser(ILjava/util/Set;)V

    :cond_0
    return-object v0
.end method

.method public final getIMEPackagesAsUser(ILjava/util/Set;)V
    .locals 8

    .line 3705
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3706
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x808280

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 3713
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3714
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 3715
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3716
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3717
    sget-boolean v3, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    const-string v4, "PersonaManagerService"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIMEPackages IME PackageName = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-wide/16 v6, 0x40

    invoke-interface {v3, v5, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 3722
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 3724
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3725
    sget-boolean v3, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIMEPackages third party IME PackageName = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 0

    .line 4909
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getKnoxForesightService()Lcom/samsung/android/knox/IBasicCommand;
    .locals 0

    .line 5112
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/KnoxForesightService;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/KnoxForesightService;

    move-result-object p0

    return-object p0
.end method

.method public getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 5

    .line 2841
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    const-string v4, "com.android.internal.app.ForwardIntentToManagedProfile"

    .line 2846
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.android.internal.app.ForwardIntentToManagedProfile4"

    .line 2847
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const/4 v4, -0x1

    :goto_0
    if-ne v4, v3, :cond_2

    .line 2854
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaManagerService;->getKnoxSwitcherIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2859
    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-object p1

    :cond_2
    :try_start_1
    const-string p2, "com.samsung.knox.securefolder"

    .line 2855
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    if-ne v4, v2, :cond_3

    goto :goto_2

    .line 2859
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    .line 2856
    :cond_4
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderIcon()[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2859
    :goto_3
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 2860
    throw p1
.end method

.method public final getKnoxSwitcherIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 2

    .line 2877
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    const-string p2, "custom-container-icon"

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/16 v1, -0x2710

    if-eq p3, v1, :cond_0

    .line 2884
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 2887
    invoke-static {p3, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    .line 2891
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p3, "knox_icon_upgraded"

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p3, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    goto :goto_0

    .line 2895
    :cond_0
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 2896
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;

    .line 2897
    iget p3, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr p3, v0

    if-nez p3, :cond_1

    .line 2899
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    move-object p2, p1

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 2905
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p2, :cond_4

    .line 2906
    invoke-static {p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->convertToGreyIcon([B)[B

    move-result-object p2

    :cond_4
    return-object p2
.end method

.method public final getLastUserRemovalLog()Ljava/lang/String;
    .locals 2

    .line 4837
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4838
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const-string v1, "USER-REMOVED"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 4839
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 4842
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "NA"

    return-object p0
.end method

.method public final getLaunchableApps(I)Ljava/util/Set;
    .locals 2

    .line 1666
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 1667
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1668
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0xc2200

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 1674
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 1675
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1676
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final getLauncherPackages()Ljava/util/ArrayList;
    .locals 3

    .line 4933
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 4934
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4935
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0xc0000

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 4939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4940
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 4941
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4942
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4943
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMoveToKnoxMenuList(I)Ljava/util/ArrayList;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3098
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMoveToKnoxMenuList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersonaManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xe6

    .line 3102
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v0, "not suppored knox version"

    .line 3103
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const/4 v3, 0x0

    .line 3107
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "getMoveToKnoxMenuList() return empty for DO enabled"

    .line 3108
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 3112
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PersonaManagerService;->getAppNameByPID(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMoveToKnoxMenuList : calling pkg name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    :cond_2
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->getContactsPkgName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMoveToKnoxMenuList : contact pkg name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v6, :cond_4

    .line 3122
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    const-string v6, "com.samsung.android.dialer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const-string v0, "deprecated feature :: move to contact"

    .line 3123
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 3126
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMoveToKnoxMenuList : is WP-C : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isSecureFolderPkgAvailable()Z

    move-result v5

    const/16 v6, 0x3ea

    const-string v7, "com.sec.knox.moveto.containerId"

    const-string/jumbo v8, "true"

    const-string v9, "com.sec.knox.moveto.containerType"

    const-string v10, "com.sec.knox.moveto.name"

    if-eqz v5, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    if-nez v5, :cond_7

    if-nez v1, :cond_7

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v5

    if-gtz v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->isSecureFolderSupported()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v5

    if-nez v5, :cond_7

    .line 3128
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3129
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    invoke-virtual {v5, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v12, -0x3e8

    .line 3131
    invoke-virtual {v5, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3133
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Added permanent item :: Move to Secure Folder"

    .line 3134
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    .line 3136
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_17

    .line 3137
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_8

    goto/16 :goto_c

    :cond_8
    const-string v13, "false"

    const-string v14, "com.sec.knox.moveto.isSupportMoveTo"

    if-nez v1, :cond_11

    move v15, v3

    move/from16 v16, v15

    move/from16 v17, v16

    const/4 v11, -0x1

    .line 3145
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    if-ge v15, v6, :cond_16

    .line 3146
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3148
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v19

    const/16 v20, 0x1

    if-eqz v19, :cond_c

    .line 3150
    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v19, v5

    const-string v5, "hide_secure_folder_flag"

    invoke-static {v1, v5, v3, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_9

    move/from16 v1, v20

    goto :goto_2

    :cond_9
    move v1, v3

    .line 3151
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v3

    if-eqz v1, :cond_b

    if-eqz v3, :cond_b

    const/4 v5, -0x1

    if-eq v11, v5, :cond_a

    .line 3154
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v11, v1, :cond_a

    .line 3155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Second secure folder detected with id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    move-object/from16 v22, v8

    move-object/from16 v1, v19

    const/16 v18, 0x3ea

    goto/16 :goto_8

    .line 3158
    :cond_a
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v1, "is secure folder"

    .line 3160
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3ea

    .line 3162
    invoke-virtual {v6, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3163
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move/from16 v18, v1

    move-object v5, v8

    goto :goto_3

    :cond_b
    const/4 v5, -0x1

    const/16 v18, 0x3ea

    .line 3167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Id : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", Enabled Secure Folder : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", User Running : "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v19

    const/4 v6, 0x0

    :goto_3
    move-object v1, v5

    move-object/from16 v22, v8

    move-object v5, v4

    goto/16 :goto_7

    :cond_c
    move-object/from16 v19, v5

    const/16 v18, 0x3ea

    const-string v1, "is knox"

    .line 3170
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    move-object v5, v4

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v3

    .line 3174
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v22, v8

    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_0
    move-object/from16 v22, v8

    :catch_1
    const/4 v1, 0x0

    .line 3177
    :goto_4
    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v8, v3, v4}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    if-nez v16, :cond_f

    if-eqz v1, :cond_f

    .line 3179
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3182
    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "move-file-to-container"

    const/4 v8, 0x0

    invoke-static {v1, v4, v8, v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v1, v22

    goto :goto_5

    :cond_d
    move-object v1, v13

    :goto_5
    if-nez v17, :cond_e

    .line 3187
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    const-string v3, "Workspace"

    .line 3189
    invoke-virtual {v6, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    const/16 v3, 0x3e9

    .line 3190
    invoke-virtual {v6, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3191
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v17, v17, 0x1

    move/from16 v16, v20

    goto :goto_7

    :cond_f
    move-object/from16 v1, v19

    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_10

    .line 3199
    invoke-virtual {v6, v14, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3200
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_8
    add-int/lit8 v15, v15, 0x1

    move-object v4, v5

    move-object/from16 v8, v22

    const/4 v3, 0x0

    move-object v5, v1

    goto/16 :goto_1

    :cond_11
    move-object v5, v4

    move-object/from16 v22, v8

    .line 3203
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3204
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3205
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v1, "is secure folder (inside secure folder)"

    .line 3206
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3eb

    .line 3208
    invoke-virtual {v3, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_9
    move-object/from16 v8, v22

    :goto_a
    const/4 v0, 0x0

    goto :goto_b

    :cond_12
    const-string v4, "is knox(inside container)"

    .line 3211
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v4

    .line 3215
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3218
    :catch_2
    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 3220
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonalModeName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    const-string v5, ""

    .line 3221
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_13
    const-string v4, "Personal"

    .line 3224
    :cond_14
    invoke-virtual {v3, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3ec

    .line 3225
    invoke-virtual {v3, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3227
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "move-file-to-owner"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_9

    :cond_15
    move-object v8, v13

    goto :goto_a

    .line 3234
    :goto_b
    invoke-virtual {v3, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3235
    invoke-virtual {v3, v14, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3236
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    return-object v2

    :cond_17
    :goto_c
    move-object v5, v4

    const-string v0, "PersonaIds list null or empty"

    .line 3138
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public bridge synthetic getMoveToKnoxMenuList(I)Ljava/util/List;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMoveToKnoxMenuList(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "getPersonaCacheValue"

    .line 2346
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "PersonaManagerService"

    .line 2348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPersonaCacheValue is called for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2350
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2351
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2352
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2353
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 700
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object p0
.end method

.method public getPersonaUserHasBeenShutdownBefore(I)Z
    .locals 2

    .line 2969
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 2970
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    .line 2971
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPersonalModeName(I)Ljava/lang/String;
    .locals 5

    const-string v0, "PersonaManagerService:FOTA"

    .line 3011
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v1

    .line 3014
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getCustomNamePersonalMode(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "getPersonalModeName unable to getCustomName"

    .line 3016
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3019
    :goto_0
    sget-boolean v3, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPersonalModeName name - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-object p1
.end method

.method public final getPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .locals 1

    .line 2781
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_0

    .line 2782
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 2784
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public getProfileName(I)Ljava/lang/String;
    .locals 4

    .line 2998
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 3001
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPersonaPolicyManagerService()Lcom/android/server/knox/PersonaPolicyManagerService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getCustomNamePersona(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "PersonaManagerService:FOTA"

    const-string v3, "getProfileName unable to getCustomName"

    .line 3003
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 3005
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 3006
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getProfileName return value for container id:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final getProfileOwnerPackage(I)Ljava/lang/String;
    .locals 3

    const-string p0, "device_policy"

    .line 3666
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 3665
    invoke-static {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object p0

    const-string v0, "PersonaManagerService"

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 3670
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3672
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3676
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProfileOwnerPackage exception -"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3678
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getProfileOwnerPackage packageName -"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .locals 8

    const/4 v0, 0x0

    .line 718
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-interface {v1, v3, v2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 722
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 724
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v1

    .line 726
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 727
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 728
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 729
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 730
    new-instance v6, Landroid/content/pm/UserInfo;

    invoke-direct {v6, v5}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 731
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 734
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, p1, :cond_1

    :cond_3
    if-nez v0, :cond_4

    const/4 v5, 0x0

    .line 736
    iput-object v5, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 737
    iput-object v5, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 739
    :cond_4
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 744
    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 745
    throw p1
.end method

.method public getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3419
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3423
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRequiredApps()Ljava/util/List;
    .locals 4

    .line 1683
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x100000

    const/4 v2, 0x0

    .line 1684
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 1685
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 1686
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1687
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1688
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1691
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->getLaunchableApps(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1693
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x10701e6

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1694
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public getScreenOffTimeoutLocked(I)I
    .locals 2

    .line 3273
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getTimeoutFromDeviceSettings(I)I

    move-result v0

    .line 3274
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 3275
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->getDpmLimitTimeout(ILandroid/content/ComponentName;)I

    move-result p1

    .line 3277
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isDpmEnforced(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v0, :cond_0

    .line 3279
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_0

    .line 3283
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->isTimeOutComputable(I)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 3287
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->isTimeOutComputable(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x1388

    .line 3288
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3290
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getScreenOffTimeoutLocked final: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final getSecureFolderIcon()[B
    .locals 3

    .line 2914
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "secure_folder_image_name"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "com.samsung.knox.securefolder"

    if-eqz v0, :cond_1

    .line 2915
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2921
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 2916
    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object p0

    .line 2917
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2918
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2923
    :goto_1
    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2926
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2927
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2928
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in getSecureFolderIcon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PersonaManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecureFolderId()I
    .locals 0

    .line 1983
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    return p0
.end method

.method public getSecureFolderName()Ljava/lang/String;
    .locals 2

    .line 4850
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.knox.securefolder"

    const/4 v1, 0x0

    .line 4853
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4854
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4856
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "Secure Folder"

    :goto_0
    return-object p0
.end method

.method public getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    .line 3431
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSeparatedAppsList()Ljava/util/List;
    .locals 4

    .line 3841
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->cachedTime:Ljava/util/HashMap;

    const-string/jumbo v1, "separatedapps"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->cachedTime:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 3843
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3844
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    .line 3846
    :cond_0
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    return-object p0

    .line 3849
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    .line 3850
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    return-object p0

    .line 3854
    :cond_2
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->cachedTime:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3855
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    .line 3856
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    return-object p0
.end method

.method public final getSeparationAppsList(Landroid/os/Bundle;)Ljava/util/List;
    .locals 0

    const-string p0, "APP_SEPARATION_APP_LIST"

    .line 4692
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4694
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p0
.end method

.method public getSeparationConfigfromCache()Landroid/os/Bundle;
    .locals 0

    .line 2414
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getSeparationPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 4562
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getSeparationPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 5

    const-wide/16 v0, 0x40

    const/4 v2, 0x0

    .line 4570
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p1, v0, v1, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 4572
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_0

    return-object v3

    .line 4582
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 4584
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    if-nez v3, :cond_1

    return-object v2

    :cond_1
    return-object v3
.end method

.method public final getSystemApps()Ljava/util/List;
    .locals 2

    .line 1699
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x100000

    const/4 v1, 0x0

    .line 1700
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    .line 1701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 1702
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1703
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1704
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getTimeoutFromDeviceSettings(I)I
    .locals 3

    .line 3324
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "knox_screen_off_timeout"

    if-eqz v0, :cond_0

    .line 3325
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    goto :goto_0

    .line 3328
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final declared-synchronized getTrustManager()Landroid/app/trust/ITrustManager;
    .locals 1

    monitor-enter p0

    .line 2978
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "trust"

    .line 2980
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2979
    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 2982
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUpdatedListWithAppSeparation(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 3823
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparatedAppsList()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3824
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3825
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 3826
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3829
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4031
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_4

    .line 4035
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4036
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x40

    const/4 v5, 0x0

    const-string v6, "PersonaManagerService"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4037
    invoke-virtual {p3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 4040
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUpdatedPackageInfo Installing prev package1 - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-interface {v6, v2, v3, v4, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 4047
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    if-eqz v5, :cond_1

    .line 4050
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4053
    :cond_3
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4054
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 4057
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUpdatedPackageInfo Installing prev package2 - "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, v1, v3, v4, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 4063
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v1, v5

    :goto_3
    if-eqz v1, :cond_4

    .line 4066
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object p0, p1

    :goto_4
    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    .line 707
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public final getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    .line 2773
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_0

    .line 2774
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2776
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public final getWorkProfileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 2049
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p0

    new-instance p2, Lcom/android/server/pm/PersonaManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/pm/PersonaManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string p1, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getWorkTabSupportLauncherUids()Ljava/util/ArrayList;
    .locals 8

    .line 4950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.nttdocomo.android.dhome"

    const-string v2, "com.nttdocomo.android.homezozo"

    .line 4951
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 4955
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getLauncherPackages()Ljava/util/ArrayList;

    move-result-object v2

    .line 4956
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4957
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4959
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-wide/16 v5, 0x40

    const/4 v7, 0x0

    invoke-interface {v4, v3, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4961
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4962
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 4964
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;
    .locals 1

    const-string p0, "Work Profile"

    if-eqz p1, :cond_0

    .line 2070
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getWorkspaceName return value for container id:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PersonaManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method public final handleFOTAInstallToPackages()V
    .locals 9

    .line 1711
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1712
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 1713
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1714
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1716
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getRequiredApps()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1717
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1719
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1720
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5, v4}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1724
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to install package for POP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersonaManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PersonaManagerService$LocalService;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1729
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSystemApps()Ljava/util/List;

    move-result-object v3

    .line 1730
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1731
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v7, 0x40

    invoke-interface {v5, v4, v7, v8, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    if-eqz v5, :cond_4

    .line 1732
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, v6}, Lcom/android/server/knox/ContainerDependencyWrapper;->isDisallowedAppForKnox(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1733
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5, v4}, Lcom/android/server/pm/PersonaManagerService;->deletePkg(ILjava/lang/String;)Z

    goto :goto_2

    :cond_4
    if-nez v5, :cond_2

    .line 1734
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, v5}, Lcom/android/server/knox/ContainerDependencyWrapper;->isRequiredAppForKnox(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1735
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5, v4}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 1740
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final handleFotaResetSecureFolderAdmin()V
    .locals 2

    const-string v0, "PersonaManagerService:FOTA"

    const-string v1, "handleFotaResetSecureFolderAdmin()"

    .line 1759
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->resetSecureFolderAdmin(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1763
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public hasLicensePermission(ILjava/lang/String;)Z
    .locals 9

    .line 5038
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5039
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 5040
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, p1, v3

    .line 5041
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasLicensePermission : packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5042
    invoke-virtual {p0, v5, p2, v0}, Lcom/android/server/pm/PersonaManagerService;->hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    move p1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 5048
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 5051
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5052
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    const-string v3, "hasLicensePermission : DO"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getDeviceOwnerPackage()Ljava/lang/String;

    move-result-object v1

    .line 5054
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/pm/PersonaManagerService;->hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    move p1, v4

    .line 5059
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5060
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    const-string v2, "hasLicensePermission : PO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5061
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->getProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 5062
    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/pm/PersonaManagerService;->hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v4, p1

    .line 5069
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p2

    .line 5067
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5069
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, p1

    .line 5072
    :goto_3
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "hasLicensePermission : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 5069
    :goto_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5070
    throw p0
.end method

.method public final hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .line 5077
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasPermission packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 5078
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-eqz p0, :cond_0

    .line 5079
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideMultiWindows(I)V
    .locals 0

    .line 2249
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->notifyWorkTaskStackChanged()V

    return-void
.end method

.method public final installExistingPackageForPersona(ILjava/lang/String;)I
    .locals 4

    .line 854
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->isPackageInstalled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "packageAlreadyInstalled is true"

    const-string v2, "PersonaManagerService"

    .line 855
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " installExistingPackageForPersona "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->installExistingPackageForPersona(Lcom/android/server/pm/PackageManagerService;ILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    .line 859
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " Failure to install package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " package manager result code is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public final installPackageForAppSeparation(ILandroid/content/pm/PackageInfo;)I
    .locals 11

    .line 4655
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v0

    .line 4656
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "processAppSeparationInstallationInternal Installing package "

    const-string v3, "PersonaManagerService"

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 4658
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exist in both mode."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4660
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    return v4

    :cond_0
    const-string v1, " in user 0 out return -"

    if-eqz v0, :cond_1

    .line 4666
    :try_start_0
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    .line 4667
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/high16 v8, 0x400000

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v7, p1

    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result v4

    .line 4669
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4672
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    const/high16 v8, 0x400000

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4674
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4676
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v4, p1

    goto :goto_1

    :catch_0
    move-exception p0

    move v4, p1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4679
    :goto_0
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return v4
.end method

.method public final isAllowListApp(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 4490
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAppSeparationApp(Ljava/lang/String;)Z
    .locals 5

    .line 4457
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    .line 4458
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "PersonaManagerService"

    if-eqz v1, :cond_0

    const-string p0, "isAppSeparationApp null"

    .line 4459
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4463
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4464
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAppSeparationApp IME package name after isInputMethodApp = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 4467
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getSeparationPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4468
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4473
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationAppInternal(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 4469
    :cond_3
    :goto_0
    sget-boolean p0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "isAppSeparationApp Return false due to null or IndependentApp"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2
.end method

.method public final isAppSeparationAppInternal(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "APP_SEPARATION_OUTSIDE"

    const/4 v1, 0x0

    .line 4477
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "APP_SEPARATION_APP_LIST"

    .line 4478
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "APP_SEPARATION_COEXISTANCE_LIST"

    .line 4479
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 4481
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->isCoexistenceListApp(Ljava/lang/String;Ljava/util/List;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    return v2

    .line 4483
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->isAllowListApp(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4514
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 4517
    :cond_1
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4518
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getDeviceOwnerPackage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PersonaManagerService"

    if-eqz v1, :cond_2

    .line 4519
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4520
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isAppSeparationIndepdentApp ignoring DO packageName - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4523
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKpuPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 4524
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAppSeparationIndepdentApp ignoring KSP packageName - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    return v0
.end method

.method public final isAppSeparationInstallationRequired(ZLjava/util/HashSet;Landroid/content/pm/PackageInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 4686
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4687
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4688
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAppSeparationPresent()Z
    .locals 4

    .line 3898
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 3901
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3905
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    :try_start_1
    const-string v2, "PersonaManagerService"

    const-string v3, "Exception in isAppSeparationPresent()"

    .line 3903
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3905
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 3906
    throw v2
.end method

.method public final isBiometricsEnabledAfterFota(I)Z
    .locals 2

    .line 2223
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dedicated_biometrics"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final isCoexistenceListApp(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 4494
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContainerCorePackageUID(I)Z
    .locals 0

    .line 1056
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isContainerService(I)Z
    .locals 4

    .line 1060
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 1062
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v2

    .line 1063
    invoke-virtual {v2, p1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object p1

    .line 1064
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxAdminReceiver()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1074
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v3

    :cond_0
    :try_start_1
    const-string v2, "com.samsung.knox.securefolder"

    .line 1067
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1072
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1074
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 1075
    throw p1
.end method

.method public final isDeviceSupportedForFotaMigrationTask()Z
    .locals 2

    const-string/jumbo p0, "ro.product.first_api_level"

    const/4 v0, 0x0

    .line 1376
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v1, 0x22

    if-lt p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isDpmEnforced(I)Z
    .locals 0

    .line 0
    if-lez p1, :cond_0

    const p0, 0x7fffffff

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExternalStorageEnabled(I)Z
    .locals 0

    .line 2434
    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isExternalStorageEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isFOTAUpgrade()Z
    .locals 0

    .line 711
    iget-boolean p0, p0, Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z

    return p0
.end method

.method public final isFingerprintPlusSecureValueExist(I)Z
    .locals 1

    .line 1895
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "knox_finger_print_plus"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFingerprintPlusSystemValueExist(I)Z
    .locals 1

    .line 1884
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "knox_finger_print_plus"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFotaUpgradeVersionChanged()Z
    .locals 0

    .line 1974
    iget-boolean p0, p0, Lcom/android/server/pm/PersonaManagerService;->isFotaUpgradeVersionChanged:Z

    return p0
.end method

.method public isInSeparatedAppsOnly(Ljava/lang/String;)Z
    .locals 1

    .line 3816
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3817
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    .line 3819
    :cond_0
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isInputMethodApp(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 3733
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodAppAsUser(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "PersonaManagerService"

    if-eqz v1, :cond_0

    .line 3734
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isInputMethodApp IME package name in DO = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3737
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3739
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodAppAsUser(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3740
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isInputMethodApp IME package name in App Separation = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v0
.end method

.method public final isInputMethodAppAsUser(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    .line 3750
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v1, 0x4

    invoke-interface {p0, p1, v1, v2, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3751
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_3

    .line 3756
    array-length p2, p0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_3

    aget-object v2, p0, v1

    .line 3757
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "PersonaManagerService"

    .line 3758
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAppSeparationApp IME package name = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :catch_0
    move-exception p0

    .line 3766
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return v0
.end method

.method public final isKeyboardApp(Ljava/lang/String;)Z
    .locals 0

    .line 4532
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKnoxProfileActivePasswordSufficientForParent(I)Z
    .locals 1

    const-string v0, "isKnoxProfileActivePasswordSufficientForParent"

    .line 3357
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3359
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isKnoxProfileActivePasswordSufficientForParent(Landroid/os/UserManager;I)Z

    move-result p0

    return p0
.end method

.method public isKnoxWindowExist(III)Z
    .locals 0

    .line 2244
    invoke-static {p1, p2, p3}, Lcom/android/server/knox/ContainerDependencyWrapper;->isKnoxWindowExist(III)Z

    move-result p0

    return p0
.end method

.method public final isKpuPackage(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.samsung.android.knox.kpu"

    .line 4536
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isMigrationNeededForKnoxFingerprintPlus(I)Z
    .locals 1

    .line 1877
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isFingerprintPlusSystemValueExist(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1878
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isFingerprintPlusSecureValueExist(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMigrationNeededForKnoxLockTimeout(I)Z
    .locals 1

    .line 1822
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isScreenOffTimeoutSystemValueExist(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1823
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isScreenOffTimeoutSecureValueExist(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMigrationStateForAppSeparationSet()Z
    .locals 1

    const-string/jumbo p0, "persist.sys.knox.appseparation_migration"

    const/4 v0, 0x0

    .line 1366
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isMigrationStateSet(I)I
    .locals 2

    .line 1384
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "rcp_profile_migration_completed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public isMoveFilesToContainerAllowed(I)Z
    .locals 2

    const-string p1, "PersonaManagerService"

    const/4 v0, 0x0

    .line 3475
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    .line 3476
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3478
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    move-result-object p0

    const-string/jumbo v1, "restriction_property_move_files_to_profile"

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getRestriction(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "isMoveFilesToContainerAllowed : NullPointerException occurred"

    .line 3483
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "isMoveFilesToContainerAllowed : SecurityException occurred"

    .line 3480
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public isMoveFilesToOwnerAllowed(I)Z
    .locals 2

    const-string p1, "PersonaManagerService"

    const/4 v0, 0x0

    .line 3492
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    .line 3493
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3495
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    move-result-object p0

    const-string/jumbo v1, "restriction_property_move_files_to_owner"

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getRestriction(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "isMoveFilesToOwnerAllowed : NullPointerException occurred"

    .line 3500
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "isMoveFilesToOwnerAllowed : SecurityException occurred"

    .line 3497
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public final isOneLockOngoing()Z
    .locals 2

    .line 2227
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_one_lock_ongoing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final isPackageInstalledAsUser(ILjava/lang/String;)Z
    .locals 2

    .line 3685
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v0, 0x40

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 3689
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isPackageInstalledAsUser exception -"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPackageInstalledInAppSeparation(ILandroid/content/pm/PackageInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 4648
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4650
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPasswordSufficientAfterKnoxProfileUnification(I)Z
    .locals 1

    const-string v0, "isPasswordSufficientAfterKnoxProfileUnification"

    .line 3384
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3386
    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isPasswordSufficientAfterKnoxProfileUnification(I)Z

    move-result p0

    return p0
.end method

.method public isPossibleAddAppsToContainer(Ljava/lang/String;I)Z
    .locals 6

    .line 2079
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 p0, 0x1

    .line 2082
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 2083
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2084
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, p2

    .line 2085
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2087
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0

    :catch_0
    move-exception p1

    .line 2089
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public final isQuickSwitchToSecureFolderSupported()Z
    .locals 0

    .line 4709
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isSupportPrivateMode()Z

    move-result p0

    return p0
.end method

.method public final isScreenOffTimeoutSecureValueExist(I)Z
    .locals 1

    .line 1840
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "knox_screen_off_timeout"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isScreenOffTimeoutSystemValueExist(I)Z
    .locals 1

    .line 1829
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "knox_screen_off_timeout"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSecureFolderIds(I)Z
    .locals 0

    const/16 p0, -0x3e8

    if-eq p1, p0, :cond_1

    .line 2008
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

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

.method public final isSecureFolderSupported()Z
    .locals 6

    .line 870
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isSecureFolderPkgAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 874
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "PersonaManagerService"

    if-nez p0, :cond_1

    const-string p0, "isSecureFolderSupported | package manager is null"

    .line 877
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 881
    :cond_1
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->getSecProductFeature_SEC_PRODUCT_FEATURE_KNOX_CONFIG_SECURE_FOLDER_VERSION()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 882
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSecureFolderSupported | secure folder config supported  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    :try_start_0
    const-string v4, "com.samsung.knox.securefolder"

    .line 886
    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v3, :cond_3

    const/4 v3, 0x3

    if-ne p0, v3, :cond_4

    .line 889
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSecureFolderSupported | secure folder is disabled or disabled_user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v2, "isSecureFolderSupported | not found package"

    .line 892
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method public isShareClipboardDataToContainerAllowed(I)Z
    .locals 3

    const-string v0, "PersonaManagerService"

    .line 3522
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3523
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    const-string v1, "inside isShareClipboardDataToContainerAllowed method"

    .line 3528
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    .line 3530
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    .line 3531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "container mgr object is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 3533
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;

    move-result-object p0

    .line 3534
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/RCPPolicy;->isShareClipboardDataToContainerAllowed()Z

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    .line 3536
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside isshareclipbd data to cnt allowed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 3541
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShareClipboardDataToContainer : NullPointerException occurred "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 3538
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShareClipboardDataToContainer : SecurityException occurred "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2
.end method

.method public isShareClipboardDataToOwnerAllowed(I)Z
    .locals 3

    const-string v0, "PersonaManagerService"

    .line 3450
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3451
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 3456
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    .line 3457
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3459
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;

    move-result-object p0

    .line 3460
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/RCPPolicy;->isShareClipboardDataToOwnerAllowed()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "allowShareClipboardDataToOwner : NullPointerException occurred"

    .line 3466
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "allowShareClipboardDataToOwner : SecurityException occurred"

    .line 3463
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2
.end method

.method public final isStubApp(Ljava/lang/String;I)Z
    .locals 1

    .line 4877
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->requiredApps:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4878
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getLaunchableApps(I)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4879
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 4883
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isTimeOutComputable(I)Z
    .locals 0

    .line 0
    if-lez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isVersionCheckNeeded()Z
    .locals 7

    const-string v0, ""

    const/4 v1, 0x0

    .line 4991
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy.MM.dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4992
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "knox_foresight_regulary_check"

    .line 4994
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4995
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 4996
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5003
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    const-string v2, "!isVersionCheckNeeded"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4997
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    const-string v5, "isVersionCheckNeeded"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4998
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4999
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5000
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    .line 5006
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5007
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    const-string v0, "!isVersionCheckNeeded exception."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isWorkTabSupported()Z
    .locals 1

    .line 4970
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->workTabSupportLauncherUids:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public knoxAnalyticsAccountsChanged(ILjava/lang/String;Z)V
    .locals 2

    .line 2753
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x46

    .line 2756
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2757
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2758
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 2759
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2760
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public launchSeamLessSf()V
    .locals 2

    .line 4713
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isQuickSwitchToSecureFolderSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4714
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4715
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public logDpmsKA(Landroid/os/Bundle;)V
    .locals 3

    .line 3509
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3510
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3511
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string/jumbo v2, "userId"

    .line 3512
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3513
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3514
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3516
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "logDpmsKA exception -"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final logUserRemoval(ILjava/lang/String;)V
    .locals 2

    .line 4825
    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4826
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const-string v1, "USER-REMOVED"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4827
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    .line 4828
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 4830
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final migrateAppSeparationIfNeeded()V
    .locals 5

    const-string/jumbo v0, "migrationAppSeparationIfNeeded "

    const-string v1, "PersonaManagerService:FOTA"

    .line 1340
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1342
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1343
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isMigrationStateForAppSeparationSet()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isDeviceSupportedForFotaMigrationTask()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    if-eqz v0, :cond_2

    .line 1344
    new-instance v2, Lcom/android/server/pm/PersonaManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PersonaManagerService$1;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1352
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_1

    .line 1353
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 1355
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    move-result-object p0

    const-string/jumbo v0, "restriction_property_screencapture_save_to_owner"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/knox/profile/ProfilePolicy;->setRestriction(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "error in setting Policy RESTRICTION_PROPERTY_SCREENCAPTURE_SAVE_TO_OWNER"

    .line 1358
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final migrateKnoxFingerprintPlus(I)V
    .locals 4

    const-string v0, "knox_finger_print_plus"

    .line 1904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migrate fingerprint plus settings value. knoxId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaManagerService:FOTA"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1908
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Migration failed! knoxId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final migrateKnoxFingerprintPlusValueIfNeeded()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1861
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1863
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1864
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    .line 1865
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1866
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1870
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->isMigrationNeededForKnoxFingerprintPlus(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1871
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->migrateKnoxFingerprintPlus(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final migrateKnoxLockTimeout(I)V
    .locals 4

    const-string v0, "knox_screen_off_timeout"

    .line 1849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migrate screen timeout settings value. knoxId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaManagerService:FOTA"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1853
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Migration failed! knoxId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final migrateKnoxLockTimeoutValueIfNeeded()V
    .locals 3

    const/4 v0, 0x0

    .line 1808
    invoke-virtual {p0, v0, v0}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1809
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1810
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1811
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1815
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->isMigrationNeededForKnoxLockTimeout(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1816
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->migrateKnoxLockTimeout(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final migrateRCPSyncToProfilePolicy(I)V
    .locals 6

    const-string v0, "PersonaManagerService:FOTA"

    const-string/jumbo v1, "rcp_profile_migration_completed"

    const/4 v2, 0x1

    .line 1390
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v3

    .line 1391
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v3

    .line 1392
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;

    move-result-object v3

    .line 1393
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v4, :cond_0

    .line 1394
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 1396
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/RCPPolicy;->isMoveFilesToContainerAllowed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1397
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    move-result-object v4

    const-string/jumbo v5, "restriction_property_move_files_to_profile"

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/knox/profile/ProfilePolicy;->setRestriction(Ljava/lang/String;Z)Z

    .line 1399
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/RCPPolicy;->isMoveFilesToOwnerAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1400
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    move-result-object v3

    const-string/jumbo v4, "restriction_property_move_files_to_owner"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/knox/profile/ProfilePolicy;->setRestriction(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string/jumbo v3, "migrateRCPSyncToProfilePolicy : NullPointerException occurred"

    .line 1405
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string/jumbo v3, "migrateRCPSyncToProfilePolicy : SecurityException occurred"

    .line 1403
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1407
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1408
    throw v0
.end method

.method public final migrateRCPSyncToProfilePolicyIfNeeded()V
    .locals 4

    const-string/jumbo v0, "migrateRCPSyncToProfilePolicyIfNeeded "

    const-string v1, "PersonaManagerService:FOTA"

    .line 1326
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1327
    invoke-virtual {p0, v0, v0}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1328
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1329
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1330
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1331
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isDeviceSupportedForFotaMigrationTask()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->isMigrationStateSet(I)I

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "migrateRCPSyncToProfilePolicyIfNeeded: true"

    .line 1332
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->migrateRCPSyncToProfilePolicy(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public notifyAppRestrictionChanged(Ljava/lang/String;I)V
    .locals 5

    const-string v0, "com.samsung.android.appseparation"

    .line 5086
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5087
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    .line 5088
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5090
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 5092
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5096
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5097
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.NOTIFY_APPSEPARATION_INTERNAL"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5098
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 5099
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5100
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eq v2, p2, :cond_1

    .line 5102
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5106
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyPersona(JI)V
    .locals 8

    .line 2718
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "knox_screen_off_timeout"

    if-eqz v0, :cond_0

    .line 2719
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    .line 2722
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :goto_0
    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    if-eqz v4, :cond_2

    cmp-long v7, v0, p1

    if-gtz v7, :cond_5

    :cond_2
    if-eqz v4, :cond_3

    cmp-long v7, v0, v2

    if-lez v7, :cond_5

    :cond_3
    if-eqz v4, :cond_4

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    cmp-long v2, v0, p1

    if-gtz v2, :cond_4

    .line 2726
    iget-boolean v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    if-nez v2, :cond_5

    :cond_4
    if-nez v4, :cond_7

    iget-boolean v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    if-eqz v2, :cond_7

    .line 2731
    :cond_5
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v2, p3}, Lcom/android/server/knox/KnoxAnalyticsContainer;->requestSendSnapshotLog(I)V

    if-eqz v4, :cond_6

    cmp-long p1, v0, p1

    if-lez p1, :cond_6

    .line 2734
    iput-boolean v5, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    goto :goto_2

    .line 2737
    :cond_6
    iput-boolean v6, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    :cond_7
    :goto_2
    return-void
.end method

.method public final notifyStatusToKspAgent(Landroid/content/Intent;)V
    .locals 2

    .line 4074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyStatusToKspAgent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v1, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4079
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onNewUserCreated(Landroid/content/pm/UserInfo;)V
    .locals 3

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNewUserCreated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 807
    :cond_0
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->isMigrationStateSet(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 808
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v2, "rcp_profile_migration_completed"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 810
    :cond_1
    const-class p0, Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 811
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;->onNewUserCreated(I)V

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 9

    const-string v0, ""

    const-string v1, "\n"

    .line 4776
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4777
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4779
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4781
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy.MM.dd.HH.mm.ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4782
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    if-ne p1, v7, :cond_0

    :try_start_1
    const-string v5, "fallbackToSingleUserLP"

    goto :goto_0

    .line 4787
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v8, 0x0

    .line 4789
    iput-object v8, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 4790
    iput-object v8, v7, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 4791
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 4795
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    const/16 v7, 0x14

    .line 4799
    :try_start_3
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v7

    .line 4801
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 4804
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "====================\n UID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    .line 4805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUserRemoved \n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4808
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4809
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 4810
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4811
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 4813
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    .line 4816
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4818
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4819
    throw p0
.end method

.method public postActiveUserChange(ILandroid/content/ComponentName;ZIIZZZ)V
    .locals 0

    .line 2200
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {p0, p1, p2, p7}, Lcom/android/server/knox/KnoxAnalyticsContainer;->postActiveUserChange(ILandroid/content/ComponentName;Z)V

    return-void
.end method

.method public postPwdChangeNotificationForDeviceOwner(I)V
    .locals 3

    .line 4863
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 4864
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final printAllApprovedInstallers(Ljava/io/PrintWriter;)V
    .locals 7

    .line 4889
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4891
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    .line 4892
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4893
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "approved installers user : #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4894
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/server/knox/ContainerDependencyWrapper;->getOwnerUidFromEdm(Landroid/content/Context;I)I

    move-result v4

    const-string/jumbo v5, "mum_container_policy"

    .line 4895
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v5

    .line 4896
    invoke-static {v4, v3}, Lcom/android/server/knox/ContainerDependencyWrapper;->getContextInfo(II)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v3

    .line 4897
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4898
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4902
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4904
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4905
    throw p0
.end method

.method public final processAppSeparationCreation()V
    .locals 7

    const-string/jumbo v0, "processAppSeparationCreation"

    const-string v1, "PersonaManagerService"

    .line 4084
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4085
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    .line 4086
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4087
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v3

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "processAppSeparationCreation no app separation data found in db"

    .line 4090
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4093
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/pm/PersonaManagerService;->getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v0

    .line 4095
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 4096
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v3, :cond_2

    .line 4098
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4099
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4101
    :cond_2
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v5}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v5

    .line 4102
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v6

    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    .line 4104
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallationInternal(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in processAppSeparationCreation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    if-nez v3, :cond_5

    .line 4113
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 4114
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 4115
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4116
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processAppSeparationCreation: packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4119
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.action.PROVISION_KNOX_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 4120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.appseparation"

    const-string v3, "com.samsung.android.appseparation.receiver.ProvisionReceiver"

    .line 4121
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "packageNames"

    .line 4122
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4123
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4125
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "APP_SEPARATION_APP_LIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->logEventActivationForAppSep(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 4127
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method public processAppSeparationInstallation(Ljava/lang/String;)I
    .locals 3

    .line 4543
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4545
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v1

    if-nez v1, :cond_0

    .line 4546
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4547
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4548
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x4a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4549
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4550
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4551
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4553
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4554
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4555
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4556
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processAppSeparationInstallation packageName - "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public processAppSeparationInstallationInternal(Ljava/lang/String;)I
    .locals 9

    .line 4595
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    .line 4596
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "PersonaManagerService"

    if-eqz v1, :cond_0

    const-string/jumbo p0, "processAppSeparationInstallationInternal null"

    .line 4597
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v1, "APP_SEPARATION_OUTSIDE"

    const/4 v4, 0x0

    .line 4601
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 4602
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationAppsList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v4

    .line 4603
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationCoexistenceList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 4604
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4605
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v4

    .line 4606
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processAppSeparationInstallationInternal is called for isOutside - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", packageName - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4608
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/PersonaManagerService;->getSeparationPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 4609
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v6, -0x6e

    .line 4616
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAppSeparationInstallationInternal Non system app - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Is in allowlist ? - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",  wlAppsSet size - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4617
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7, v0}, Lcom/android/server/pm/PersonaManagerService;->isCoexistenceListApp(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1, v5, p1}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationInstallationRequired(ZLjava/util/HashSet;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4622
    :cond_2
    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledInAppSeparation(ILandroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4624
    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/PersonaManagerService;->deletePackageForAppSeparation(ILandroid/content/pm/PackageInfo;)Z

    move-result p0

    if-nez p0, :cond_3

    return v6

    :cond_3
    return v2

    .line 4618
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processAppSeparationInstallationInternal Disable package in Owner space and Install package in PO - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4619
    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/PersonaManagerService;->installPackageForAppSeparation(ILandroid/content/pm/PackageInfo;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4630
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in processAppSeparationAllowListInternal "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4631
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v6

    :cond_5
    :goto_1
    const-string/jumbo p0, "processAppSeparationInstallationInternal Return false due to null or IndependentApp"

    .line 4610
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final readPersonaCacheLocked()V
    .locals 10

    const-string/jumbo v0, "readPersonaCacheLocked is called..."

    const-string v1, "PersonaManagerService"

    .line 759
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 763
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 764
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 765
    invoke-interface {v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 767
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    if-eq v2, v5, :cond_0

    goto :goto_0

    :cond_0
    if-eq v2, v6, :cond_2

    .line 773
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    const-string v2, "Unable to read persona cache"

    .line 774
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 795
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-void

    .line 778
    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v5, :cond_3

    if-ne v2, v6, :cond_2

    .line 779
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "cache"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 780
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 781
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 782
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PersonaCache entry - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 795
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_6

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception v1

    .line 790
    :goto_2
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    .line 791
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_4

    .line 795
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_4
    move-exception v1

    .line 787
    :goto_4
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    .line 788
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_4

    goto :goto_3

    :catch_5
    :cond_4
    :goto_5
    return-void

    :goto_6
    if-eqz v2, :cond_5

    .line 795
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 799
    :catch_6
    :cond_5
    throw p0
.end method

.method public final recoverContainerInfo()V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "persist.sys.knox.userinfo"

    .line 1554
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1555
    invoke-virtual {p0, v1, v1}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "PersonaManagerService"

    const-string v1, "UserInfo currupted, set again"

    .line 1556
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->setContainerInfo(Lcom/android/server/pm/UserManagerService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1560
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshLockTimer(I)V
    .locals 2

    const-string/jumbo v0, "refreshLockTimer"

    .line 2426
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefreshLockTimer for user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v0

    int-to-long v0, v0

    .line 2429
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object p0

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/knox/ContainerDependencyWrapper;->setMaximumScreenOffTimeoutFromKnox(Landroid/os/PowerManagerInternal;IJ)V

    return-void
.end method

.method public final registerContentObserver()V
    .locals 4

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "registerContentObserver - 0"

    .line 2138
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "knox_screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Landroid/database/ContentObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerPackageReceiver()V
    .locals 8

    .line 1083
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 1084
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 1085
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1089
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .locals 1

    const-string/jumbo v0, "registerSystemPersonaObserver"

    .line 751
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 752
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    if-eqz p0, :cond_0

    .line 753
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->register(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeDisallowedSFpackages()V
    .locals 3

    const-string/jumbo v0, "removeDisallowedSFpackages() called."

    const-string v1, "PersonaManagerService:FOTA"

    .line 1768
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "removeDisallowedSFpackages() - user manager is null"

    .line 1771
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1775
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 1776
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1777
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 1781
    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1782
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->removeDisallowedSecureFolderPackages(Landroid/content/pm/UserInfo;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final removeDisallowedSecureFolderPackages(Landroid/content/pm/UserInfo;)V
    .locals 6

    const-string v0, "PersonaManagerService:FOTA"

    .line 1789
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDisallowedSecureFolderPackages() user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10701e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1792
    new-instance v2, Landroid/util/ArraySet;

    const-string v3, "AllowPackage"

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1793
    new-instance v3, Landroid/util/ArraySet;

    const-string v4, "DefaultPackage"

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1794
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1795
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1796
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1797
    sget-boolean v3, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dsallowedPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_0
    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/PersonaManagerService;->deletePkg(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1801
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception occurred in removeDisallowedSecureFolderPackages()! "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public revokeSUWAgreements(Landroid/content/Context;)V
    .locals 0

    .line 2682
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->revokeSUWAgreements(Landroid/os/UserManager;Landroid/content/Context;)V

    return-void
.end method

.method public sendKnoxForesightBroadcast(Landroid/content/Intent;)Z
    .locals 5

    .line 5014
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.containercore.action.FORESIGHT_COMMAND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.containercore"

    const-string v1, "com.samsung.android.knox.containercore.KnoxForesightCommandReceiver"

    .line 5015
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5018
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5019
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string v2, "com.samsung.android.knox.permission.KNOX_FORESIGHT"

    .line 5020
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/PersonaManagerService;->hasLicensePermission(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5023
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5025
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 5027
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5029
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5030
    throw p0

    :cond_0
    :goto_2
    return v0
.end method

.method public final sendMessageAndLockTimeout(II)V
    .locals 3

    .line 1527
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 1528
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    .line 1529
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 1530
    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 1531
    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1535
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1536
    iget v0, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1541
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.user_handle"

    .line 1542
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1543
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v1

    const-string p2, "knox.container.proxy.EVENT_LOCK_TIMEOUT"

    .line 1544
    invoke-static {p2, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1545
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p2, v1, v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string/jumbo v0, "sendProxyMessage"

    .line 2766
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendProxyMessage() name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bundle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string/jumbo v1, "null"

    goto :goto_0

    .line 2768
    :cond_0
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    .line 2767
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaServiceProxy;->sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public sendRequestKeyStatus(I)V
    .locals 4

    .line 3062
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "com.sec.knox.containeragent.klms.licensekey.check"

    .line 3065
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "container_id"

    .line 3067
    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.klmsagent"

    .line 3068
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3069
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3071
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 3072
    throw p1
.end method

.method public setAppSeparationDefaultPolicy(I)V
    .locals 0

    .line 3591
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->setOwnership(I)V

    .line 3592
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->applyDefaultPolicyForAppSeparation(I)V

    return-void
.end method

.method public setAttributes(II)Z
    .locals 1

    const-string/jumbo v0, "setAttributes"

    .line 2797
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2798
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2800
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "user not found "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2804
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->setAttributes(Lcom/android/server/pm/UserManagerInternal;II)Z

    move-result p0

    return p0
.end method

.method public final setDpmScreenTimeoutFlag(I)V
    .locals 7

    .line 2691
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2693
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2694
    invoke-virtual {v1, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    const v3, 0x7fffffff

    if-lez v2, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    long-to-int v0, v0

    :goto_1
    const/4 v1, 0x1

    if-lez v0, :cond_2

    if-ge v0, v3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 2700
    :goto_2
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    const/4 v4, -0x1

    const-string v5, "knox_screen_off_timeout"

    if-eqz v3, :cond_3

    .line 2701
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, v4, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    goto :goto_3

    .line 2704
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    :goto_3
    int-to-long v3, p1

    if-eqz v2, :cond_4

    int-to-long v5, v0

    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    .line 2708
    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    const-string p0, "PersonaManagerService:KnoxAnalytics"

    const-string/jumbo p1, "setting mKALockscreenTimeoutAdminFlag true (at boot)"

    .line 2709
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public setDualDARProfile(Landroid/os/Bundle;)I
    .locals 0

    .line 3395
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->setDualDARProfile(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public setFocusedLauncherId(I)V
    .locals 3

    const-string/jumbo v0, "setFocusedLauncherId"

    .line 1921
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1922
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1923
    :try_start_0
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    const-string p1, "PersonaManagerService"

    .line 1924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFocusedUser: Focus changed - current uesr id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setFocusedUser(I)V
    .locals 4

    .line 3265
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3266
    :try_start_0
    sget-boolean v1, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PersonaManagerService"

    .line 3267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current focused persona service handled id set to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    :cond_0
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    .line 3269
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setOwnership(I)V
    .locals 0

    .line 3596
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->setOwnership(Landroid/content/Context;I)V

    return-void
.end method

.method public setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    .locals 1

    const-string/jumbo v0, "setPackageSettingInstalled"

    .line 2419
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2421
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/knox/ContainerDependencyWrapper;->setPackageSettingInstalled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public setPersonalModeName(ILjava/lang/String;)Z
    .locals 2

    const-string v0, "PersonaManagerService:FOTA"

    .line 3037
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->setCustomNamePersonalMode(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "setPersonalModeName unable to set PersonalModeName"

    .line 3039
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    :goto_0
    sget-boolean p0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPersonalModeName name - "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1
.end method

.method public setProfileName(ILjava/lang/String;)Z
    .locals 0

    .line 3027
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->setCustomNamePersona(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "PersonaManagerService:FOTA"

    const-string/jumbo p1, "setProfileName unable to setProfileName"

    .line 3029
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 3427
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 4

    const/4 v0, 0x0

    .line 3436
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-interface {v1, v3, v2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "PersonaManagerService"

    const-string/jumbo p1, "setSecureFolderPolicy failed."

    .line 3437
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3445
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    .line 3441
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public startActivityThroughPersona(Landroid/content/Intent;)Z
    .locals 2

    const-string/jumbo v0, "startActivityThroughPersona"

    .line 2163
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startActivityThroughPersona Intent ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2167
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 2169
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public startCountrySelectionActivity(Z)V
    .locals 4

    .line 4751
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    const/high16 v2, 0x10000000

    if-nez p1, :cond_0

    .line 4755
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.secsetupwizard.NET_TSS_SETUP"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4756
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4757
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4759
    :catch_0
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.secsetupwizard.TSS_SETUP"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4760
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4761
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4764
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.secsetupwizard.COUNTRY_SELECTION"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4765
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4766
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 4769
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4771
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 4772
    throw p1
.end method

.method public startTermsActivity()V
    .locals 4

    .line 4738
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 4740
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.secsetupwizard.TERMS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 4741
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4742
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 4744
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4746
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 4747
    throw v2
.end method

.method public final suspendAppsInOwner(Ljava/lang/String;Z)V
    .locals 13

    .line 3911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "suspendAppInOwner is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", suspend - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3913
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "suspendAppInOwner()"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", do not suspend keyboard app- "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3916
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "No appseparation present"

    .line 3918
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3922
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationCoexistenceList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3923
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 3924
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package is allowed for both users do not suspend: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3927
    :cond_2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    .line 3928
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService$Injector;->-$$Nest$mgetApplicationPackageManager(Lcom/android/server/pm/PersonaManagerService$Injector;)Landroid/app/ApplicationPackageManager;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    const-string v7, ""

    move v4, p2

    .line 3930
    invoke-virtual/range {v2 .. v7}, Landroid/app/ApplicationPackageManager;->setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Ljava/lang/String;)[Ljava/lang/String;

    if-eqz p2, :cond_3

    const-string p2, "Suspend Package:"

    goto :goto_0

    :cond_3
    const-string p2, "Unsuspend Package:"

    .line 3932
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3933
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3935
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.extra.changed_component_name_list"

    .line 3936
    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3937
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 3940
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public systemReady()V
    .locals 14

    const-string/jumbo v0, "systemReady"

    .line 944
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v1, "PersonaManagerService"

    .line 947
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 949
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 950
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceInteractive:Z

    .line 951
    new-instance v0, Lcom/android/server/pm/PersonaServiceProxy;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/pm/PersonaServiceProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

    .line 953
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isQuickSwitchToSecureFolderSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Quick Switch is supported"

    .line 954
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v0, Lcom/android/server/knox/SeamLessSwitchHandler;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v2, v3, p0}, Lcom/android/server/knox/SeamLessSwitchHandler;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mSeamLessSwitchHandler:Lcom/android/server/knox/SeamLessSwitchHandler;

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 959
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 961
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 962
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->cachedTime:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "separatedapps"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 965
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 966
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/pm/PersonaManagerService$BootReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PersonaManagerService$BootReceiver;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 968
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 969
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 970
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 971
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 972
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_STOPPED"

    .line 973
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_UNLOCKED"

    .line 974
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_PRESENT"

    .line 975
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_OFF"

    .line 976
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 977
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 978
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 982
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    invoke-interface {v0, v5, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 985
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 988
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 989
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    .line 990
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 991
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mSetupWizardCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 993
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    .line 994
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

    .line 995
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    .line 996
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    .line 997
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 998
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mFingerPrintReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 1001
    invoke-virtual {p0, v0, v0}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v5

    move v6, v0

    move v7, v6

    .line 1002
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 1003
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 1004
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Lcom/android/server/pm/PersonaManagerService$LocalService;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1008
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v7, :cond_4

    .line 1009
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->registerPackageReceiver()V

    .line 1011
    :cond_4
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1012
    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v11, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 1014
    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_INFO_CHANGED"

    .line 1016
    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    .line 1017
    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "samsung.knox.intent.action.rcp.MOVEMENT"

    .line 1018
    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "samsung.knox.intent.action.CHANGE_LOCK_TYPE"

    .line 1019
    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.knox.profilepolicy.intent.action.update"

    .line 1020
    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1021
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->registerContentObserver()V

    const-string v2, "com.samsung.android.knox.containercore"

    .line 1025
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->clearHomeCrossProfileFilter(Ljava/lang/String;)Z

    .line 1028
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1030
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Device is super locked - start lock screen"

    .line 1031
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.knox.securefolder"

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string v3, "Cannot get UID for securefolder"

    .line 1038
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    const-string v2, "Cannot get UID for KnoxCore package"

    .line 1044
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v3, "com.samsung.android.appseparation"

    invoke-virtual {p0, v3, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    const-string p0, "Cannot get UID for App separation"

    .line 1050
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public final trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1583
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "trimHiddenVersion("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PersonaManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x5f

    .line 1585
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1586
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public unsetTwoFactorValueIfNeeded(I)V
    .locals 1

    .line 3400
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->unsetTwoFactorValueIfNeeded(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method public final updateAppsListOnlyPresentInSeparatedApps()V
    .locals 0

    .line 3837
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppsListOnlyPresentInSeparatedApps()Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    return-void
.end method

.method public updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "updatePersonaCache"

    .line 2371
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 2375
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 2376
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "fwversion"

    .line 2377
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "fotaversion"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2381
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    const-string v0, "PersonaManagerService"

    const-string v2, "Remove cache entry request"

    .line 2382
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 2388
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    const-string v0, "PersonaManagerService"

    const-string v2, "Add cache entry request"

    .line 2389
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 2395
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    const-string v0, "PersonaManagerService"

    const-string/jumbo v2, "update cache entry request"

    .line 2396
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2398
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    :cond_3
    if-eqz v0, :cond_4

    .line 2403
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    .line 2405
    :cond_4
    monitor-exit v1

    goto :goto_1

    .line 2378
    :cond_5
    :goto_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    .line 2405
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_1
    const-string p0, "PersonaManagerService"

    .line 2407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updatePersonaCache status - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public updateProfileActivityTimeFromKnox(IJ)V
    .locals 1

    const-string/jumbo v0, "updateProfileActivityTimeFromKnox"

    .line 3404
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3405
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/knox/ContainerDependencyWrapper;->updateProfileActivityTimeFromKnox(Landroid/os/PowerManagerInternal;IJ)V

    return-void
.end method

.method public final writePersonaCacheLocked()V
    .locals 10

    const-string v0, "cache"

    const-string/jumbo v1, "personacache"

    const-string/jumbo v2, "writeUsersWithPersona() is called..."

    const-string v3, "PersonaManagerService"

    .line 817
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    .line 820
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 821
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 824
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v8, "utf-8"

    .line 825
    invoke-interface {v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 826
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    .line 827
    invoke-interface {v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 829
    invoke-interface {v7, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 831
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 832
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 833
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v9, "volatile."

    .line 836
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    .line 838
    :cond_0
    invoke-interface {v7, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 839
    invoke-interface {v7, v4, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 840
    invoke-interface {v7, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 843
    :cond_1
    invoke-interface {v7, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 845
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 846
    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v4, v5

    .line 848
    :catch_1
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo p0, "writePersonaCacheLocked() Error writing persona cache list"

    .line 849
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
