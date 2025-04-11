.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"


# static fields
.field public static final NULL_USER:Landroid/content/pm/UserInfo;

.field public static mSystemReady:Z = false


# instance fields
.field public handlerThread:Landroid/os/HandlerThread;

.field public final mBinderListeners:Ljava/util/Map;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

.field public mContext:Landroid/content/Context;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mIsHandlerReady:Z

.field public mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

.field public final mListenerMap:Ljava/util/Map;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

.field public mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public final mManagedCredentialMap:Ljava/util/Map;

.field public final mManagedTokenMap:Ljava/util/Map;

.field public mNeedToSetSdpPolicyForUser:I

.field public mPackageEventReceiver:Landroid/content/BroadcastReceiver;

.field public mPackageManagerImpl:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

.field public mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

.field public final mSdpEngineDbLock:Ljava/lang/Object;

.field public final mSdpEngineMap:Landroid/util/SparseArray;

.field public mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

.field public mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

.field public mSdpManagerProxy:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

.field public mSecureFileSystemManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;

.field public mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

.field public final mUserManager:Landroid/os/UserManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;


# direct methods
.method public static synthetic $r8$lambda$Bni0A_Nptmz0mFfiMMCdwAeK1LI(ILjava/lang/String;ILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$checkCredential$2(ILjava/lang/String;ILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TiTVJaW9nyC8CDL7zV7CLLDx4J0(ILcom/android/server/pm/UserManagerInternal;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$clearLegacyResetStatus$9(ILcom/android/server/pm/UserManagerInternal;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bw0CKvIaIdUJeRIMefA1OhM_KA4([BJILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$verifyToken$0([BJILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mU76E6wCBo3TlspzSaSaGS2vIXk(Ljava/lang/String;ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$createEncPkgDir$3(Ljava/lang/String;ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nf5OkJGNcHRzHqYTXns95j_GViw(ILcom/android/server/pm/UserManagerInternal;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$onLegacyResetCredentialRequested$8(ILcom/android/server/pm/UserManagerInternal;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tC4iz-GEkDWerMuL33IbbMNvP4o(ILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$initializeMasterKeyIfRequired$4(ILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vNp5G6g342e_KABHiOOnQZD2e_I(ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lambda$handleUserRemoved$5(ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderListeners(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListenerMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSdpEngineDb(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSdpEngineDbLock(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSdpEngineMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerPermissionFor(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCredential(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCredential(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetLockSettings(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getLockSettings()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetLockSettingsInternal(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getLockSettingsInternal()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetMasterKeyVersion(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getMasterKeyVersion(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetPackageManagerImpl(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getPackageManagerImpl()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSdpManagerInternal(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getSdpManagerInternal()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetStorageManager(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getStorageManager()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserInfo(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Landroid/content/pm/UserInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleCleanupUser(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleCleanupUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleDeviceOwnerCleared(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleDeviceOwnerCleared()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleEmptyListenerRoll(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleEmptyListenerRoll(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageRemoved(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handlePackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendBroadcastForStateChange(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;III)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleSendBroadcastForStateChange(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStartUser(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleStartUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUserAdded(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleUserAdded(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUserRemoved(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitInternalEngineInfo(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->initInternalEngineInfo(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misSupportedDevice(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misVirtualUserId(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isVirtualUserId(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monManagedProfileUnavailable(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onManagedProfileUnavailable(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSystemReady(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onSystemReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mquickMessage(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessage(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mquickMessage(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;ILandroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessage(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreWrapSdpKeys(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;[B[BI)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->reWrapSdpKeys([B[BI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrecordException(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveDirectoryRecursive(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeDirectoryRecursive(Ljava/io/File;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMasterKeyVersion(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setMasterKeyVersion(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mverifyToken(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 258
    new-instance v0, Landroid/content/pm/UserInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, -0x2710

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->NULL_USER:Landroid/content/pm/UserInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V
    .locals 3

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    .line 153
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    const/16 v1, -0x2710

    .line 155
    iput v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mNeedToSetSdpPolicyForUser:I

    .line 159
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handlerThread:Landroid/os/HandlerThread;

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedCredentialMap:Ljava/util/Map;

    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedTokenMap:Ljava/util/Map;

    .line 531
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$1;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 580
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$2;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mPackageEventReceiver:Landroid/content/BroadcastReceiver;

    .line 615
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$3;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$3;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

    .line 1906
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    .line 2136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    .line 271
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 272
    iput-boolean v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    .line 273
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 274
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 278
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-direct {v1, p0, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    .line 279
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-direct {v1, p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase-IA;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    .line 280
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Landroid/content/Context;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager-IA;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSecureFileSystemManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;

    .line 282
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    .line 285
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 286
    new-instance v1, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    invoke-direct {v1, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;-><init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    .line 287
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getKeyProtector()Lcom/android/server/knox/dar/KeyProtector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 289
    new-instance p1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;

    invoke-direct {p1, p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService-IA;)V

    const-class v0, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    invoke-static {v0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->readEngineList()V

    .line 292
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->sdpServiceReady()V

    return-void
.end method

.method public static synthetic lambda$checkCredential$2(ILjava/lang/String;ILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3

    .line 721
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p0, v1, :cond_0

    :try_start_0
    const-string p0, "SdpManagerImpl"

    const-string p1, "Unknown credential type"

    .line 731
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v2

    goto :goto_0

    .line 727
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 733
    invoke-interface {p3, p0, p2, v2}, Lcom/android/internal/widget/ILockSettings;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 736
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static synthetic lambda$clearLegacyResetStatus$9(ILcom/android/server/pm/UserManagerInternal;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 4631
    invoke-virtual {p1, p0, v0}, Lcom/android/server/pm/UserManagerInternal;->clearVolatiles(II)Z

    move-result p0

    .line 4630
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$createEncPkgDir$3(Ljava/lang/String;ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;
    .locals 0

    .line 891
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->createEncAppData(Ljava/lang/String;I)Z

    move-result p0

    .line 890
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$handleUserRemoved$5(ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;
    .locals 0

    .line 2976
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->removeEncUserDir(I)Z

    move-result p0

    .line 2975
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$initializeMasterKeyIfRequired$4(ILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Integer;
    .locals 0

    .line 2503
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockSettingsInternal;->getCredentialType(I)I

    move-result p0

    .line 2502
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onLegacyResetCredentialRequested$8(ILcom/android/server/pm/UserManagerInternal;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 4603
    invoke-virtual {p1, p0, v0}, Lcom/android/server/pm/UserManagerInternal;->setVolatiles(II)Z

    move-result p0

    .line 4602
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$verifyToken$0([BJILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 0

    .line 688
    :try_start_0
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 690
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 691
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0
.end method

.method public static native nativeOnBoot(II)I
.end method

.method public static native nativeOnChangePassword(I[B[B)I
.end method

.method public static native nativeOnDeviceLocked(II)I
.end method

.method public static native nativeOnDeviceUnlocked(I[B)I
.end method

.method public static native nativeOnMigration(IIII[B)I
.end method

.method public static native nativeOnUserAdded(II[B)I
.end method

.method public static native nativeOnUserRemoved(II)I
.end method


# virtual methods
.method public addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1672
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, -0xa

    return v0

    .line 1676
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1677
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1678
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const-string v1, "SdpManagerImpl"

    const-string v3, "add engine :: calling by the process %d %d"

    .line 1681
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 1680
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    .line 1684
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1685
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1686
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v3, "SdpManagerImpl"

    .line 1691
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add engine :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v3

    .line 1694
    iget-object v6, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    .line 1695
    invoke-virtual {v0, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->assignEngineId(Ljava/lang/String;)I

    move-result v15

    .line 1696
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getFlags()I

    move-result v11

    const-string v6, "SdpManagerImpl"

    const-string v7, "add engine :: alias : %s, id : %d"

    .line 1699
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 1698
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    new-instance v13, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/4 v10, 0x1

    const/4 v12, 0x6

    const/16 v16, 0x0

    move-object v6, v13

    move-object v7, v3

    move v8, v15

    move-object v1, v13

    move/from16 v13, v16

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 1711
    invoke-virtual {v1, v14}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "SdpManagerImpl"

    .line 1714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add engine :: not supported anymore to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    return v0

    .line 1717
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, -0x1

    return v0

    .line 1720
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1721
    invoke-static/range {p3 .. p3}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x20

    if-ge v6, v7, :cond_5

    :cond_4
    const/4 v0, -0x2

    return v0

    .line 1724
    :cond_5
    iget-object v6, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1725
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1726
    invoke-virtual {v0, v15}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_0

    .line 1730
    :cond_6
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 1732
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->addEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_7
    :goto_0
    :try_start_1
    const-string v0, "SdpManagerImpl"

    const-string v1, "add engine :: failed to create engine due to pre-existing engine"

    .line 1727
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    monitor-exit v6

    const/4 v0, -0x4

    return v0

    :catchall_0
    move-exception v0

    .line 1730
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    :goto_1
    const-string v0, "SdpManagerImpl"

    const-string v1, "add engine :: failed to create engine due to invalid parameters"

    .line 1687
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    return v0
.end method

.method public final addEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILjava/lang/String;Ljava/lang/String;)I
    .locals 12

    move-object v0, p0

    move-object v7, p2

    move-object/from16 v1, p5

    .line 1743
    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_0

    const-string v2, "UTF-8"

    .line 1744
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    move-object/from16 v4, p6

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    goto :goto_0

    .line 1745
    :cond_0
    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->generateRandomBytes(I)[B

    move-result-object v2

    :goto_0
    move-object v8, v2

    .line 1746
    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->generateRandomBytes(I)[B

    move-result-object v9

    .line 1750
    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v10

    const-string v2, "SdpManagerImpl"

    .line 1754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "try to add engine internal for virtual user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    iget-object v2, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v2, v10}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clean(I)V

    .line 1756
    iget-object v2, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v2, v10}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clearLock(I)V

    .line 1757
    iget-object v2, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    .line 1758
    invoke-virtual {v2, v1, v8, v10}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->establish(Ljava/lang/String;[BI)J

    move-result-wide v2

    .line 1759
    iget-object v4, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    .line 1760
    invoke-virtual {v4, v1, v10}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 1762
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v11

    .line 1761
    invoke-static {v11}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1766
    :cond_1
    invoke-virtual {p0, v2, v3, v10}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->saveTokenHandleViaProtector(JI)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1765
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    const/16 v1, -0xe

    goto :goto_2

    .line 1770
    :cond_2
    invoke-virtual {p0, p2, v11}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->addEngineNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1769
    invoke-static {v2}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 1773
    :cond_3
    iget-object v1, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object v2, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 1775
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v6

    move v3, p3

    move/from16 v4, p4

    move-object v5, p2

    .line 1774
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->addPolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/util/List;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1773
    invoke-static {v2}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    :goto_2
    if-eqz v1, :cond_4

    const-string v2, "SdpManagerImpl"

    .line 1781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add engine :: Failed with error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    iget-object v2, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v2, v10}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clean(I)V

    .line 1784
    iget-object v2, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v2, v10}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clearLock(I)V

    .line 1785
    iget-object v2, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object v0, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    move v3, p3

    move/from16 v4, p4

    invoke-virtual {v2, v0, p3, v4, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    goto :goto_3

    :cond_4
    const-string v2, "SdpManagerImpl"

    .line 1787
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add engine - Sucessfully done with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 1789
    invoke-virtual {p2, v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setState(I)V

    .line 1790
    iget-object v2, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1791
    :try_start_0
    iget-object v3, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v10, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1792
    iget-object v3, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v3, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mstoreEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 1793
    iget-object v3, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)I

    .line 1794
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1796
    iget-object v2, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v3, "SdpSessionKey"

    invoke-virtual {v2, v9, v3, v10}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    .line 1797
    iget-object v2, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v3, "SdpTokenHandle"

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v10}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    .line 1798
    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1799
    iget-object v0, v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v2, "SdpResetToken"

    invoke-virtual {v0, v8, v2, v10}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    .line 1802
    :cond_5
    :goto_3
    filled-new-array {v11, v9, v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clearAll([Ljava/lang/Object;)V

    return v1

    :catchall_0
    move-exception v0

    .line 1794
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final addEngineNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I
    .locals 1

    .line 1815
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, -0x63

    return p0

    .line 1819
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnUserAdded(II[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1818
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1820
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "add engine - failed to create engine due to native error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    .line 1820
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xb

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public allow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 1056
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1057
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v5

    .line 1058
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    const/4 p0, -0x5

    goto :goto_0

    .line 1062
    :cond_0
    new-instance v6, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {v6, p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 1064
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1063
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->addPrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I

    move-result p0

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    .line 1058
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final assignEngineId(Ljava/lang/String;)I
    .locals 3

    .line 1646
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->extractAndroidDefaultUserId(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, "SdpManagerImpl"

    const-string v1, "custom engine. assign custom engine id"

    .line 1650
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    const/16 v0, 0x3e8

    .line 1652
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1654
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "SdpManagerImpl"

    .line 1656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom engine : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", id assigned. ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_0
    move-exception p0

    .line 1654
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return v0
.end method

.method public final boot(I)I
    .locals 3

    .line 1165
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0xa

    return p0

    .line 1169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "SdpManagerImpl"

    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boot - Engine info not found in map with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1174
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mgetEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1176
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1177
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v2, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mstoreEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 1178
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)I

    .line 1180
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const-string p0, "SdpManagerImpl"

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boot - Failed to find engine info with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0

    .line 1187
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->bootInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p0

    return p0
.end method

.method public final bootInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 7

    .line 1192
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    const-string v1, "SdpManagerImpl"

    .line 1194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boot - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->bootNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    const-string v2, "SdpManagerImpl"

    const-string v3, "boot - [ Detected version : %d, Latest version : %d ]"

    .line 1200
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 1198
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 1203
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMigrationInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SdpManagerImpl"

    const-string v3, "boot - Migration failed"

    .line 1204
    invoke-static {v2, v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :cond_0
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1207
    :try_start_0
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1208
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1211
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    .line 1212
    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 1213
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1215
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->generateAndSaveSessionKey(I)Z

    move-result p1

    const-string v2, "Boot - Prepare session key for engine %d [ res : %s ]"

    .line 1217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1216
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    const-string p1, "Boot - Engine %d boot completed! [ rc : %d ]"

    .line 1220
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1219
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->loadInternalEngineInfo(I)V

    return v1

    :catchall_1
    move-exception p0

    .line 1213
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final bootNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 1

    .line 1232
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p0

    .line 1233
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v0

    .line 1236
    invoke-static {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnBoot(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1235
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bootNative - Failed with id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xb

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final cacheManagedCredential([BI)V
    .locals 2

    .line 3478
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedCredentialMap:Ljava/util/Map;

    const-string v1, "credential"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheSafe(Ljava/util/Map;Ljava/lang/String;[BI)V

    return-void
.end method

.method public final cacheManagedToken([BI)V
    .locals 2

    .line 3495
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedTokenMap:Ljava/util/Map;

    const-string/jumbo v1, "token"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheSafe(Ljava/util/Map;Ljava/lang/String;[BI)V

    return-void
.end method

.method public final cacheSafe(Ljava/util/Map;Ljava/lang/String;[BI)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 3398
    :cond_0
    monitor-enter p1

    .line 3401
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getSessionKeyViaProtector(I)[B

    move-result-object v0

    .line 3400
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3402
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cache - Session key not found for user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 3405
    :cond_1
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 3406
    invoke-virtual {p0, v0, p3}, Lcom/android/server/knox/dar/KeyProtector;->encryptFast([B[B)[B

    move-result-object p0

    .line 3405
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 3407
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cache - Fast encryption failed with user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 3410
    :cond_2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cache - Now %s is under secure management for user %d"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p3, v1

    .line 3412
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, p3, p4

    .line 3411
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3414
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3415
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    return-void

    :catchall_0
    move-exception p0

    .line 3414
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public cancelLegacyResetTimeout(I)V
    .locals 3

    .line 4639
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_0

    .line 4640
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4641
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4642
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4643
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Legacy reset timout canceled for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final checkCallerPermissionFor(Ljava/lang/String;)V
    .locals 3

    .line 759
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "SdpManagerImpl"

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 761
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Security Exception Occurred while pid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] with uid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] trying to access methodName ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] in ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] service"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 767
    throw p0
.end method

.method public final checkCredential(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3

    .line 718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 720
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getLockSettings()Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2, p2, p1, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda5;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 739
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    throw p0
.end method

.method public final checkSystemPermission()V
    .locals 2

    .line 772
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    const-string p0, "SdpManagerImpl"

    const-string v0, "Require system permission."

    .line 773
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Security Exception Occurred in pid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] with uid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clearCached(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3421
    :cond_0
    monitor-enter p1

    .line 3422
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_1

    .line 3423
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 3424
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    .line 3426
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "clear - Managed %s removed for user %d"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 3428
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    .line 3427
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "clear - Managed %s not found for user %d"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 3431
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    .line 3430
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3433
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final clearInternalEngineInfo(I)V
    .locals 2

    .line 2373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine info cleared for engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2374
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->destroy(I)V

    return-void
.end method

.method public clearLegacyResetStatus(I)V
    .locals 2

    .line 4629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear legacy reset status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4630
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserManagerInternal()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 4632
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unexpected failure while clear volatiles"

    .line 4633
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4635
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearManagedToken(I)V

    return-void
.end method

.method public final clearManageCredentialIfRequired(I)V
    .locals 1

    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2610
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->hasBiometricTypeTraced(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2611
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->hasNoSecurity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2615
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearManagedCredential(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final clearManagedCredential(I)V
    .locals 2

    .line 3482
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedCredentialMap:Ljava/util/Map;

    const-string v1, "credential"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearCached(Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method public final clearManagedToken(I)V
    .locals 2

    .line 3499
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedTokenMap:Ljava/util/Map;

    const-string/jumbo v1, "token"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearCached(Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method public createEncPkgDir(ILjava/lang/String;)I
    .locals 1

    .line 886
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0xa

    return p0

    .line 890
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getPackageManagerImpl()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 891
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 889
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, -0xb

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public deleteToeknFromTrusted(Ljava/lang/String;)I
    .locals 2

    const-string v0, "deleteToeknFromTrusted"

    .line 4399
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x3

    return p0

    .line 4404
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4407
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->deleteTokenInternal(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, -0x63

    :goto_0
    return p0
.end method

.method public final deleteTokenInternal(ILjava/lang/String;)Z
    .locals 3

    .line 4414
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4415
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->exists(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4416
    invoke-virtual {p0, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeSpecificKeyViaProtector(Ljava/lang/String;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4418
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public disallow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 1080
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v5

    .line 1082
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    const/4 p0, -0x5

    goto :goto_0

    .line 1086
    :cond_0
    new-instance v6, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {v6, p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 1088
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1087
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->removePrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I

    move-result p0

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    .line 1082
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final doesEphemeralKeyExist(I)Z
    .locals 1

    .line 3236
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v0, "SdpEphemeralKey"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/KeyProtector;->exists(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 4515
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 4516
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: Can\'t dump SDP from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.permission.DUMP"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 4521
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4522
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string p3, "SDP Engine List :"

    .line 4523
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4525
    iget-object p3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-gtz p3, :cond_1

    const-string p0, "EMPTY"

    .line 4526
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4528
    :cond_1
    iget-object p3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_5

    .line 4529
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    const-string v3, "Engine Id : %5d   User ID : %5d   Version : %d   State : %s   Flag : %10s ( %d )   Alias : %s"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    .line 4535
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 4536
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 4537
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 4538
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v5

    if-ne v5, v6, :cond_3

    const-string v5, "UNLOCKED"

    goto :goto_1

    :cond_3
    const-string v5, "LOCKED"

    :goto_1
    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 4539
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "SDP_MINOR"

    goto :goto_2

    :cond_4
    const-string v5, "SDP_MDFPP"

    :goto_2
    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 4540
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 4541
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v4, v5

    .line 4533
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4542
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4544
    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4546
    :goto_4
    monitor-exit p1

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    const-string p0, "Not Supported..."

    .line 4548
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4550
    :goto_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public final establish([BI)Z
    .locals 10

    .line 2309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Establish new engine for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2312
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2315
    :cond_0
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2319
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v3

    .line 2320
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v2, v0

    move v4, p2

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 2329
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2333
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->addEngineNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2332
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "establish - Unexpected failure while native setup"

    .line 2334
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2337
    :cond_2
    iget-object v4, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object v5, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 2339
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v8, v0

    .line 2338
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->addPolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/util/List;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2337
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "establish - Unexpected failure while policy setup"

    .line 2341
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2345
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->initInternalEngineInfo(I)V

    .line 2347
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2348
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2349
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mstoreEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 2350
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)I

    .line 2351
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :goto_0
    const-string p0, "Result of engine establishment for user %d : %s"

    .line 2356
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 2355
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception p0

    .line 2351
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public exists(Ljava/lang/String;)I
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1038
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    .line 1039
    monitor-exit v0

    if-eqz p0, :cond_0

    const/4 p0, -0x4

    goto :goto_0

    :cond_0
    const/4 p0, -0x5

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final generateAndSaveSessionKey(I)Z
    .locals 1

    const/16 v0, 0x20

    .line 3259
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->generateRandomBytes(I)[B

    move-result-object v0

    .line 3262
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->saveSessionKeyViaProtector([BI)Z

    move-result p0

    .line 3261
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3264
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    .line 3265
    throw p0
.end method

.method public final getCached(Ljava/util/Map;Ljava/lang/String;I)[B
    .locals 7

    .line 3441
    monitor-enter p1

    .line 3443
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const-string p0, "get - Managed %s not found for user %d"

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 3445
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    .line 3444
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    move-object p0, v4

    goto/16 :goto_1

    .line 3449
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getSessionKeyViaProtector(I)[B

    move-result-object v0

    .line 3448
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3450
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get - Session key not found for user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 3454
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 3453
    invoke-static {v5}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string p0, "get - Empty managed %s found for user %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 3456
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    .line 3455
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_0
    move-object p0, v4

    move-object v4, v0

    goto :goto_1

    .line 3459
    :cond_2
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 3460
    invoke-virtual {p0, v0, v5}, Lcom/android/server/knox/dar/KeyProtector;->decryptFast([B[B)[B

    move-result-object v4

    .line 3459
    invoke-static {v4}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3461
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get - Fast decryption failed with user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "get - Managed %s given for user %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 3465
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    .line 3464
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 3467
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3468
    invoke-static {v4}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 3467
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getDeviceVersion()Ljava/lang/String;
    .locals 3

    const-string/jumbo p0, "ro.build.PDA"

    const-string v0, "Unknown"

    .line 4669
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x5f

    .line 4670
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 4671
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 1

    .line 979
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 986
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    .line 987
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 2

    .line 993
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-nez p0, :cond_0

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get - engine info not found in map  for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdpManagerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method public final getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1004
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1005
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1006
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->isAndroidDefaultUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 1009
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1010
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 1013
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-eqz p1, :cond_5

    .line 1017
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 1018
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 1020
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public final getEphemeralKeyViaProtector(I)[B
    .locals 1

    .line 3222
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v0, "SdpEphemeralKey"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getLockSettings()Ljava/util/Optional;
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    .line 914
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 913
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 916
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getLockSettingsInternal()Ljava/util/Optional;
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    if-nez v0, :cond_0

    .line 921
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    .line 923
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getManagedCredential(I)[B
    .locals 2

    .line 3486
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedCredentialMap:Ljava/util/Map;

    const-string v1, "credential"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getCached(Ljava/util/Map;Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getManagedToken(I)[B
    .locals 2

    .line 3503
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mManagedTokenMap:Ljava/util/Map;

    const-string/jumbo v1, "token"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getCached(Ljava/util/Map;Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getMasterKey(II)[B
    .locals 7

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    .line 2686
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected condition while check order "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    .line 2681
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getManagedCredential(I)[B

    move-result-object p0

    .line 2680
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Managed credential not found for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2674
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEphemeralKeyViaProtector(I)[B

    move-result-object p0

    .line 2673
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ephemeral key not found for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string/jumbo v1, "masterKey"

    const-string/jumbo v3, "userId"

    .line 2689
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "order"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, p0

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getMasterKeyVersion(I)I
    .locals 2

    .line 4680
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    const-string/jumbo v0, "smk_ver"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getPackageManagerImpl()Ljava/util/Optional;
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mPackageManagerImpl:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    if-nez v0, :cond_0

    const-string/jumbo v0, "package"

    .line 929
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mPackageManagerImpl:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 931
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mPackageManagerImpl:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    .line 2782
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    const-string v0, ""

    if-nez p0, :cond_0

    .line 2785
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPackage :: Not found with caller "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2787
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 2788
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackage :: found name for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    .line 2789
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final getProxy()Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;
    .locals 2

    .line 4685
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerProxy:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    if-nez v0, :cond_0

    .line 4686
    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy-IA;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerProxy:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    .line 4688
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerProxy:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    return-object p0
.end method

.method public getResetToken(I)[B
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3275
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    .line 3277
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getResetTokenViaProtector(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getResetTokenSafe(I)[B
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3282
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    .line 3284
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getManagedToken(I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getResetTokenViaProtector(I)[B
    .locals 3

    .line 3288
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3290
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v2, "SdpResetToken"

    invoke-virtual {p0, v2, p1}, Lcom/android/server/knox/dar/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3293
    throw p0
.end method

.method public final getSdpManagerInternal()Ljava/util/Optional;
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    if-nez v0, :cond_0

    .line 906
    const-class v0, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    .line 908
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpManagerInternal:Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionKeyViaProtector(I)[B
    .locals 1

    .line 3245
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v0, "SdpSessionKey"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getSpecificKeyViaProtector(Ljava/lang/String;I)[B
    .locals 2

    .line 3359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3361
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3363
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3364
    throw p0
.end method

.method public final getStorageManager()Ljava/util/Optional;
    .locals 1

    .line 900
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 901
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedSDKVersion()D
    .locals 2

    .line 369
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getTokenHandle(I)J
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3319
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    .line 3321
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getTokenHandleViaProtector(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getTokenHandleViaProtector(I)J
    .locals 3

    .line 3326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3328
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v2, "SdpTokenHandle"

    invoke-virtual {p0, v2, p1}, Lcom/android/server/knox/dar/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3330
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->bytesToLong([B)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    .line 3333
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3334
    throw p0
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2

    .line 942
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 944
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mUserManager:Landroid/os/UserManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 945
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_1

    goto :goto_1

    .line 946
    :cond_1
    sget-object p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->NULL_USER:Landroid/content/pm/UserInfo;

    :goto_1
    return-object p0
.end method

.method public final getUserManagerInternal()Ljava/util/Optional;
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_0

    .line 936
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 938
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final handleCleanupUser(I)V
    .locals 0

    .line 4563
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cancelLegacyResetTimeout(I)V

    .line 4565
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearLegacyResetStatus(I)V

    return-void
.end method

.method public final handleDeviceOwnerCleared()V
    .locals 3

    const-string v0, "Device Owner has been cleared!"

    .line 3073
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3076
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3077
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    .line 3078
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const-string v0, "Device Owner engine already cleared"

    .line 3080
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 3082
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 3084
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    const-string v0, "do_cleared"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putBoolean(ILjava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 3078
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleEmptyListenerRoll(I)V
    .locals 2

    .line 1914
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    if-eqz v0, :cond_0

    .line 1915
    invoke-virtual {v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1916
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public handleEnforcePwdChange(I)V
    .locals 4

    .line 4661
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_0

    .line 4662
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe

    const-wide/16 v2, 0x0

    .line 4663
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessageDelayed(ILjava/lang/Object;J)V

    .line 4664
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Enforce change password for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleLegacyResetPassword(I)V
    .locals 4

    .line 4650
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_0

    .line 4651
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xd

    const-wide/16 v2, 0x0

    .line 4652
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessageDelayed(ILjava/lang/Object;J)V

    .line 4653
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Legacy force Reset Password for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final handlePackageRemoved(Ljava/lang/String;I)V
    .locals 7

    .line 2820
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    if-ltz p2, :cond_7

    .line 2821
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "SdpManagerImpl"

    const-string v1, "handlePackageRemoved - PackageName : %s, UserId : %d"

    .line 2826
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 2825
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "SdpManagerImpl"

    const-string p1, "handlePackageRemoved - Device is not provisioned yet..."

    .line 2829
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2833
    :cond_1
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2834
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->readEngineList()V

    .line 2836
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2837
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2838
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_4

    .line 2839
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-eqz v3, :cond_3

    .line 2840
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2841
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_3

    const-string v4, "SdpManagerImpl"

    .line 2842
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePackageRemoved - Add package engine to Removing Engine "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2846
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2847
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const-string v2, "SdpManagerImpl"

    .line 2848
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePackageRemoved - Removing Sdp Engine "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    goto :goto_1

    .line 2852
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/knox/dar/FileUtil;->getEncUserDir(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2853
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "SdpManagerImpl"

    const-string v2, "handlePackageRemoved - Remove secure package dir : %s [ res : %b ]"

    .line 2856
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSecureFileSystemManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;

    .line 2857
    invoke-static {p0, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->-$$Nest$mremovePkgDir(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;ILjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2854
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 2846
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    :goto_2
    return-void
.end method

.method public final handleSendBroadcastForStateChange(III)V
    .locals 9

    .line 846
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.sdp.SDP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.SDP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcastAsUser(INTENT_SDP_STATE_CHANGED, state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SdpManagerImpl"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "id"

    .line 850
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "state"

    .line 851
    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x20

    .line 852
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v5, 0x4000000

    .line 853
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    .line 854
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 855
    iget-object v7, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendBroadcastAsUser(ACTION_SDP_STATE_CHANGED, state:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.knox.intent.extra.SDP_ENGINE_ID"

    .line 858
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.extra.SDP_ENGINE_STATE"

    .line 859
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 860
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 861
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 862
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 863
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final handleStartUser(I)V
    .locals 1

    .line 4555
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 4556
    invoke-static {p0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 4559
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Start user : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleUserAdded(I)V
    .locals 5

    .line 2862
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SdpManagerImpl"

    const-string v1, "User %d added"

    .line 2866
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    const-string/jumbo v2, "user added - Is user %d Bmode? %s"

    .line 2870
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 2869
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SdpManagerImpl"

    const-string/jumbo v2, "user added - Is user %d managed profile? %s"

    .line 2872
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 2871
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2876
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    .line 2877
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "SdpManagerImpl"

    const-string/jumbo v1, "user added - Has user %d sdp engine? %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2879
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    move v3, p1

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, p1

    .line 2878
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 2877
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleUserRemoved(I)V
    .locals 6

    .line 2921
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SdpManagerImpl"

    .line 2925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeInvalidEngines()V

    .line 2931
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeCustomEngines(I)V

    .line 2935
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2936
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 2937
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    const-string p0, "SdpManagerImpl"

    .line 2940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove user - Engine not found with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2945
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 2946
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 2947
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2946
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v2

    const-string v3, "SdpManagerImpl"

    const-string v4, "Remove user - Policy removal with id %d successfully done? %s"

    .line 2949
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 2948
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2952
    :try_start_1
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 2953
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v3, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mremoveEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 2954
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)I

    .line 2956
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 2957
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2958
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineNative(II)I

    move-result v2

    const-string v3, "SdpManagerImpl"

    const-string v4, "Remove user - Native removal with id %d successfully done? %s"

    .line 2960
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 2959
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v3, "SdpEphemeralKey"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 2964
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v3, "SdpTokenHandle"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 2965
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v3, "SdpResetToken"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 2966
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v3, "SdpSessionKey"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    const-string v0, "SdpManagerImpl"

    .line 2968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove user - Engine remove! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    invoke-static {p1}, Lcom/android/server/knox/dar/FileUtil;->getEncUserDir(I)Ljava/io/File;

    move-result-object v0

    .line 2972
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing Enc user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " directory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2975
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getPackageManagerImpl()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 2976
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2974
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Failed to clean enc user directory"

    .line 2977
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2979
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removed Enc user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " directory."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 2957
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 2937
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final hasBiometricTypeTraced(I)Z
    .locals 2

    .line 3195
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Biometrics detected for user %d [ Type : %d ]"

    .line 3199
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 3202
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Biometrics not detected for user "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public final hasNoSecurity(I)Z
    .locals 3

    .line 3208
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 3209
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    .line 3211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Check security - [ User ID : %d, Quality : %d, None type? %s ]"

    .line 3210
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    if-nez v0, :cond_0

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

.method public final initInternalEngineInfo(I)V
    .locals 2

    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine info initialized for engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2362
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    invoke-virtual {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->destroy(I)V

    const/4 v0, 0x1

    .line 2364
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setMasterKeyVersion(II)V

    return-void
.end method

.method public initializeMasterKeyIfRequired([BI)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2467
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2471
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2472
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2476
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key initialized for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const-string/jumbo v0, "userId"

    .line 2477
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "masterKey"

    filled-new-array {v2, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 2483
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEphemeralKeyViaProtector(I)[B

    move-result-object v0

    .line 2482
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Failed to get ephemeral key"

    .line 2484
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2488
    :cond_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->reWrapSdpKeys([B[BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2487
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Failed to rewrap sdp essential key"

    .line 2489
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2493
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEphemeralKeyViaProtector(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2492
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Failed to delete ephemeral key"

    .line 2494
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 2501
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getLockSettingsInternal()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, -0x1

    .line 2504
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 2507
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "User %d has none type credential"

    .line 2506
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2508
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->saveEphemeralKeyViaProtector([BI)Z

    .line 2511
    :cond_5
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    .line 2513
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Result of key adjustment : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public isDefaultPathUser(I)Z
    .locals 0

    .line 310
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isDeviceProvisioned()Z
    .locals 0

    .line 2815
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    .line 2816
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceProvisioned()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 419
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 418
    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p0

    return p0
.end method

.method public isLicensed()I
    .locals 3

    .line 354
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 356
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 358
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 357
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isLicensed(Landroid/content/Context;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, -0x9

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 430
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 429
    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isPrivileged(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p0

    return p0
.end method

.method public isSDPEnabled(I)Z
    .locals 2

    .line 1589
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1593
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSdpPackage(ILjava/lang/String;)Z
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2801
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2802
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->readEngineList()V

    .line 2804
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2805
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-eqz v3, :cond_1

    .line 2806
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isSensitive(Ljava/lang/String;)Z
    .locals 1

    .line 1158
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1161
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getProxy()Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;->isSensitive(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isSupportedDevice()Z
    .locals 1

    const-string p0, "SdpManagerImpl"

    const-string v0, "SDP not supported"

    .line 342
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    .line 408
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 407
    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemComponent(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p0

    return p0
.end method

.method public final isVirtualUserId(I)Z
    .locals 0

    .line 468
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result p0

    return p0
.end method

.method public final loadInternalEngineInfo(I)V
    .locals 2

    .line 2368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine info loaded for engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2369
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->preload(I)V

    return-void
.end method

.method public lock(Ljava/lang/String;)I
    .locals 3

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0xa

    return p0

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1258
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "SdpManagerImpl"

    .line 1260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock :: Can\'t find engine info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    monitor-exit v0

    const/4 p0, -0x5

    return p0

    .line 1263
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1265
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "SdpManagerImpl"

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lock :: Not supported anymore to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x63

    return p0

    .line 1269
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1270
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1271
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "SdpManagerImpl"

    const-string p1, "lock :: Permission denied to invoke engine control API"

    .line 1272
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    return p0

    .line 1277
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 1263
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final lockFinal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 2

    .line 2401
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x3

    return p0

    .line 2405
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnDeviceLocked(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2404
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, -0xb

    return p0

    .line 2408
    :cond_1
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2409
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 2410
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final lockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 4

    .line 1284
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 1287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock :: Lock engine for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lockFinal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p1

    if-nez p1, :cond_0

    .line 1292
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "lock :: Successfully done for user %d"

    .line 1291
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearManagedCredential(I)V

    goto :goto_0

    .line 1296
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "lock :: Failed to lock for user %d... [ rc : %d ]"

    .line 1295
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p1
.end method

.method public lockSdpIfRequired(I)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2567
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2572
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2573
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2577
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key eviction required for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 2578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 2583
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2584
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 2585
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2586
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find engine info for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    const/16 v0, -0x63

    goto :goto_0

    .line 2590
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine already locked for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 2595
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lockFinal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    .line 2599
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2600
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2601
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearManageCredentialIfRequired(I)V

    :cond_5
    const-string p0, "Result of sdp lock : %s [ rc : %d ]"

    .line 2605
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 2604
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 2585
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public migrate(Ljava/lang/String;)I
    .locals 0

    .line 1635
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0xa

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public onBiometricsAuthenticated(I)V
    .locals 2

    .line 2748
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2752
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "User %d has been authenticated with biometrics"

    .line 2751
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2755
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2756
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2757
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->hasBiometricTypeTraced(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 2758
    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockSdpIfUnsecuredOrBiometricAuthenticated(II)V

    :cond_1
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 2

    .line 4585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleaning up user - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "onCleanupUser"

    .line 4586
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 4588
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessage(II)V

    return-void
.end method

.method public onCredentialChanged(II)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2714
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2718
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2719
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2723
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Password has been changed for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 2727
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2728
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    .line 2729
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2731
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const-string p1, "Engine is locked after changing to none type."

    .line 2732
    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 2733
    invoke-virtual {p0, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockSdpIfUnsecuredOrBiometricAuthenticated(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2729
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 2735
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->doesEphemeralKeyExist(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "According as user %d password changed, remove ephemeral key"

    .line 2737
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 2736
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2738
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEphemeralKeyViaProtector(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onDeviceLocked(I)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3090
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3093
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceLocked : User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3097
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3098
    invoke-static {p1}, Lcom/android/server/knox/dar/DarUtil;->isDeviceOwnerUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3099
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3100
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lockSdpIfRequired(I)V

    :cond_1
    return-void
.end method

.method public onDeviceOwnerLocked(I)V
    .locals 2

    .line 2768
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2772
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "User %d has been locked"

    .line 2771
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    invoke-static {p1}, Lcom/android/server/knox/dar/DarUtil;->isDeviceOwnerUser(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2774
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->hasNoSecurity(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2778
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->lockSdpIfRequired(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDeviceUnlocked(I)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3106
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceUnLocked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3113
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3114
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3115
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->hasBiometricTypeTraced(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 3116
    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockSdpIfUnsecuredOrBiometricAuthenticated(II)V

    goto :goto_0

    .line 3117
    :cond_1
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "User has no lock"

    .line 3118
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 3119
    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockSdpIfUnsecuredOrBiometricAuthenticated(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 4

    .line 2284
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->clearInternalEngineInfo(I)V

    .line 2286
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    monitor-enter v0

    .line 2287
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    .line 2288
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    .line 2290
    monitor-exit v0

    return-void

    .line 2292
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 2293
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2295
    :try_start_1
    iget-object v1, v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mListener:Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    invoke-interface {v1}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->onEngineRemoved()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "SdpManagerImpl"

    const-string v3, "Listener failed"

    .line 2300
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    const-string v1, "SdpManagerImpl"

    const-string v2, "Listener dead"

    .line 2297
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 2303
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onLegacyResetCredentialRequested([BII)V
    .locals 4

    .line 4593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy reset credential policy requested for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutMins:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4597
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Failed due to invalid token"

    .line 4598
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 4601
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheManagedToken([BI)V

    .line 4602
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserManagerInternal()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 4604
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "Unexpected failure while set volatiles"

    .line 4605
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-gtz p3, :cond_2

    const-wide/32 v0, 0xdbba0

    goto :goto_0

    :cond_2
    int-to-long v0, p3

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_0
    const/16 p1, 0xc

    .line 4610
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessageDelayed(ILjava/lang/Object;J)V

    const-string p0, "Ready to reset credential!"

    .line 4612
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onManagedProfileUnavailable(I)V
    .locals 2

    .line 570
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Managed profile user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " got unavailable"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdpManagerImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "activity_task"

    .line 572
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz p0, :cond_0

    .line 573
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 574
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    const/4 p1, 0x0

    const-string v0, "Managed profile unavailable"

    const-string v1, "com.android.settings/.password.ChooseLockGeneric$InternalActivity"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->removeTaskByCmpName(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onMigrationInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    const-string v0, "SdpManagerImpl"

    .line 2432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    const-string v2, "SdpManagerImpl"

    const-string/jumbo v3, "onMigrationInternal :: version 5 -> 6)"

    .line 2452
    invoke-static {v2, v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    add-int/2addr v0, v1

    .line 2455
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setVersion(I)V

    .line 2456
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mstoreEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 2458
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_0
    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "onMigrationInternal :: DONE"

    .line 2460
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onStartUser(I)V
    .locals 3

    .line 4575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "onStartUser"

    .line 4576
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4578
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getDeviceVersion()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Mark the beginning of sdp service! [Version : %s]"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 4580
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessage(II)V

    return-void
.end method

.method public final onStateChange(II)V
    .locals 9

    .line 2095
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 2096
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 2099
    invoke-virtual {v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->get()Ljava/util/ArrayList;

    move-result-object v1

    .line 2106
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_0
    if-ltz v4, :cond_3

    .line 2108
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2110
    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->get()Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    if-eqz v7, :cond_1

    .line 2112
    :try_start_2
    invoke-interface {v6, p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->onStateChange(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    move v7, v3

    .line 2117
    :goto_2
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_2
    move v7, v3

    :catch_3
    const-string v6, "SdpManagerImpl"

    const-string v8, "Listener might be dead..."

    .line 2115
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    if-nez v7, :cond_2

    .line 2121
    invoke-virtual {v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->dispose()V

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2124
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleEmptyListenerRoll(I)V

    .line 2127
    :cond_4
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    move p0, v3

    goto :goto_4

    .line 2128
    :cond_5
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->size()I

    move-result p0

    :goto_4
    const-string v1, "SdpManagerImpl"

    const-string/jumbo v4, "onStateChange :: Engine Id : %d, State : %d, Roll Size : %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 2131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v5, p1

    .line 2130
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2129
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final onStateChange(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)V
    .locals 4

    .line 1119
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    monitor-enter v0

    .line 1120
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    .line 1121
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    .line 1123
    monitor-exit v0

    return-void

    .line 1125
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 1126
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    :try_start_1
    iget-object v1, v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mListener:Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    invoke-interface {v1, p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->onStateChange(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "SdpManagerImpl"

    const-string v3, "Listener failed"

    .line 1133
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    const-string v1, "SdpManagerImpl"

    const-string v2, "Listener dead"

    .line 1130
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1136
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onSystemReady()V
    .locals 5

    .line 488
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->runSdpCryptoDaemon()V

    .line 489
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->registerReceiver()V

    .line 490
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->updateDeviceOwnerStatus()V

    .line 491
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSecureFileSystemManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->-$$Nest$msecureFileSystemManagerReady(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;)V

    .line 493
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 494
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 495
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    .line 497
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->boot(I)I

    move-result v2

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SdpEngine boot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpManagerImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeInvalidEngines()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Failed to remove Invalid Engines!"

    .line 505
    invoke-static {v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 506
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p0, 0x1

    .line 509
    sput-boolean p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSystemReady:Z

    return-void
.end method

.method public final quickMessage(I)V
    .locals 1

    .line 799
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_0

    .line 800
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 802
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to send a message : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final quickMessage(II)V
    .locals 1

    .line 807
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_0

    .line 808
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 810
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to send a message : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final quickMessage(ILandroid/os/Bundle;)V
    .locals 1

    .line 823
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 825
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 826
    invoke-virtual {p0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 827
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 829
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to send a message : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final quickMessageDelayed(ILjava/lang/Object;J)V
    .locals 2

    .line 782
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_2

    .line 783
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    .line 788
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    goto :goto_0

    .line 790
    :cond_1
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_3

    .line 794
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to send a message delayed : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final reWrapSdpKeys([B[BI)Z
    .locals 0

    .line 3162
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "reWrap - Failed to reWrap sdp keys due to invalid input"

    .line 3164
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 3168
    :cond_0
    invoke-static {p3, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnChangePassword(I[B[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 3167
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "reWrap - Failed to change password"

    .line 3169
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    .line 3175
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Result of reWrapping sdp keys : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return p0
.end method

.method public final readEngineList()V
    .locals 12

    .line 434
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    .line 440
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mgetEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    move v3, v2

    .line 443
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 444
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 445
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "SdpManagerImpl"

    const-string/jumbo v7, "read engine - [%s, %d] found in engine list"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v5, v9, v2

    .line 448
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 447
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v6, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v6, v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mgetEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v5, "SdpManagerImpl"

    .line 452
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read engine - Put "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v5, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    iget-object v4, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    invoke-virtual {v4, v6}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->loadPolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    goto :goto_1

    :cond_1
    const-string v6, "SdpManagerImpl"

    const-string/jumbo v7, "read engine - Can\'t find engine info with [%s, %d]"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v2

    .line 458
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v11

    .line 457
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "SdpManagerImpl"

    const-string/jumbo v1, "read engine - No any engine found"

    .line 462
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final recordException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "Leave a trace of the exception...!"

    .line 874
    invoke-static {p1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 878
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p0, v0

    .line 879
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method public final recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .line 867
    invoke-static {p1, p3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->recordException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public registerClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    .locals 5

    .line 2028
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    .line 2033
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2037
    :cond_1
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 2038
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    if-nez v1, :cond_2

    .line 2040
    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll-IA;)V

    .line 2041
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    :cond_2
    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V

    .line 2044
    invoke-virtual {v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->isValid()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_3

    .line 2045
    invoke-virtual {v1, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->enroll(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;)Z

    move-result p0

    goto :goto_0

    :cond_3
    move p0, p2

    :goto_0
    const-string v2, "SdpManagerImpl"

    const-string/jumbo v3, "registerClient :: Engine Id = %d, Roll Size = %d, Result = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 2050
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p2

    invoke-virtual {v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v4, p1

    .line 2049
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2048
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public registerListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I
    .locals 2

    .line 2182
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0xa

    return p0

    :cond_0
    const-string v0, "SdpManagerImpl"

    const-string/jumbo v1, "registerListener"

    .line 2186
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2193
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2195
    monitor-exit v0

    const/4 p0, -0x5

    return p0

    .line 2196
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2198
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->registerListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 2196
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final registerListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, -0x5

    return p0

    :cond_0
    const-string v0, "SdpManagerImpl"

    .line 2234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener from pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2234
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    .line 2238
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2241
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    :cond_1
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    monitor-enter v1

    .line 2245
    :try_start_0
    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;

    .line 2246
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 2248
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->setCaller(I)V

    .line 2249
    invoke-interface {p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, v2, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2250
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "SdpManagerImpl"

    const-string p2, "Failed to link to listener death"

    .line 2252
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    :goto_0
    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final registerReceiver()V
    .locals 4

    .line 513
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 514
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 515
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 516
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "Broadcast receiver has been registered"

    const-string v1, "SdpManagerImpl.receiver"

    .line 518
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 521
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    .line 522
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 524
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mPackageEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "Package event receiver has been registered"

    .line 525
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v0, p0}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    const-string p0, "Container state receiver has been registered"

    .line 528
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final removeCustomEngines(I)V
    .locals 7

    .line 2903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2904
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2905
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 2906
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-eqz v3, :cond_0

    .line 2907
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SdpManagerImpl"

    .line 2908
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove user - Add Custom engine to Removing Engine "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2909
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2908
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2913
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2914
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const-string v1, "SdpManagerImpl"

    .line 2915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove user - Removing Custom engine "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 2913
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removeDirectoryRecursive(Ljava/io/File;)V
    .locals 5

    .line 4346
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4347
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4349
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4350
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4351
    invoke-virtual {p0, v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeDirectoryRecursive(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4355
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Failed to delete file: %s"

    .line 4356
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public removeEngine(Ljava/lang/String;)I
    .locals 2

    .line 1833
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0xa

    return p0

    .line 1838
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1839
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 1840
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "removeEngine :: no engine found"

    .line 1842
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0

    .line 1846
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "SdpManagerImpl"

    .line 1847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove :: Not supported anymore to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x63

    return p0

    .line 1850
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1851
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "remove :: Permission denied to invoke engine control API"

    .line 1852
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    return p0

    .line 1856
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 1840
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 4

    .line 1860
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 1862
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v2, "SdpEphemeralKey"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 1863
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v2, "SdpSessionKey"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 1864
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clearLock(I)V

    .line 1865
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clean(I)V

    .line 1867
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mServiceKeeper:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1869
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1870
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1871
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mremoveEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 1872
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDb:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)I

    .line 1874
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 1875
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1876
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineNative(II)I

    move-result v0

    const-string p0, "SdpManagerImpl"

    .line 1878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove :: successfully engine removed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1875
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    const-string p0, "SdpManagerImpl"

    .line 1880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove :: failed ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public final removeEngineNative(II)I
    .locals 1

    .line 1894
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnUserRemoved(II)I

    move-result p0

    if-eqz p0, :cond_0

    .line 1895
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeEngineNative :: failed "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xb

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeEphemeralKeyViaProtector(I)Z
    .locals 1

    .line 3231
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v0, "SdpEphemeralKey"

    .line 3232
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result p0

    .line 3231
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0

    return p0
.end method

.method public final removeInvalidEngines()V
    .locals 7

    .line 2884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2885
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2886
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 2887
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-eqz v3, :cond_0

    .line 2888
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    sget-object v5, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->NULL_USER:Landroid/content/pm/UserInfo;

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SdpManagerImpl"

    .line 2889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid user - Add Custom engine to Removing Engine "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2890
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2889
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2894
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2895
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const-string v2, "SdpManagerImpl"

    .line 2896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid user - Removing Custom engine "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 2894
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removeSpecificKeyViaProtector(Ljava/lang/String;I)Z
    .locals 2

    .line 3378
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3380
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 3381
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result p0

    .line 3380
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3383
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3384
    throw p0
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0xa

    return p0

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1520
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "SdpManagerImpl"

    .line 1522
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "reset :: Can\'t find engine info "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    monitor-exit v0

    const/4 p0, -0x5

    return p0

    .line 1525
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1527
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "SdpManagerImpl"

    .line 1528
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "reset :: Not supported anymore to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x63

    return p0

    .line 1537
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1538
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1539
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "reset :: Permission denied to invoke engine control API"

    .line 1540
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    return p0

    .line 1545
    :cond_3
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->resetPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 1525
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final resetPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 1553
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v5

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset password for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1561
    invoke-virtual {p0, v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getResetTokenViaProtector(I)[B

    move-result-object p1

    :goto_0
    move-object v4, p1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "UTF-8"

    .line 1564
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 1566
    :goto_1
    invoke-static {v4}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, -0x2

    return p0

    .line 1569
    :cond_2
    invoke-static {p3}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, -0x1

    return p0

    .line 1574
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getTokenHandleViaProtector(I)J

    move-result-wide v2

    .line 1575
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->setPasswordWithToken(Ljava/lang/String;J[BI)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    const/16 p0, -0x63

    :goto_2
    return p0
.end method

.method public final runSdpCryptoDaemon()V
    .locals 2

    const-string/jumbo p0, "persist.sys.knox.sdp_cryptod"

    .line 557
    invoke-static {p0}, Lcom/android/server/knox/dar/DarUtil;->isDaemonRunning(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SdpManagerImpl"

    if-eqz v0, :cond_0

    const-string p0, "SDP daemon is already running!"

    .line 558
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->testSdpIoctl()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Start SDP daemon!"

    .line 561
    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 562
    invoke-static {p0, v0}, Lcom/android/server/knox/dar/DarUtil;->setSystemPropertyBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string p0, "Failed in fs ping test..."

    .line 564
    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final saveEphemeralKeyViaProtector([BI)Z
    .locals 1

    .line 3226
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v0, "SdpEphemeralKey"

    .line 3227
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result p0

    .line 3226
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0

    return p0
.end method

.method public saveMasterKeyIfUnsecured([BI)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2695
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2699
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2700
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2704
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key deserted with user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const-string/jumbo v0, "userId"

    .line 2705
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "masterKey"

    filled-new-array {v2, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 2708
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "User %d has none type credential"

    .line 2707
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2709
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->saveEphemeralKeyViaProtector([BI)Z

    return-void
.end method

.method public saveResetTokenSafe([BI)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3309
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheManagedToken([BI)V

    return-void
.end method

.method public final saveSessionKeyViaProtector([BI)Z
    .locals 1

    .line 3249
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string v0, "SdpSessionKey"

    .line 3250
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result p0

    .line 3249
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0

    return p0
.end method

.method public final saveSpecificKeyViaProtector([BLjava/lang/String;I)Z
    .locals 3

    .line 3368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3370
    :try_start_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/knox/dar/SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 3371
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3373
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3374
    throw p0
.end method

.method public final saveTokenHandleViaProtector(JI)Z
    .locals 0

    .line 3339
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->longToBytes(J)[B

    move-result-object p1

    .line 3340
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    const-string p2, "SdpTokenHandle"

    .line 3341
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result p0

    .line 3340
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)Z

    move-result p0

    return p0
.end method

.method public saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string/jumbo v0, "saveTokenIntoTrusted"

    .line 4377
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4380
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4383
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    .line 4385
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 4386
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->saveSpecificKeyViaProtector([BLjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, -0x63

    .line 4388
    :goto_0
    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    return p0

    :cond_2
    :goto_1
    const/4 p0, -0x3

    return p0
.end method

.method public final sdpServiceReady()V
    .locals 3

    const-string v0, "SdpManagerImpl ready"

    const-string v1, "SdpManagerImpl"

    .line 472
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "systemReady"

    .line 473
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 475
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handlerThread:Landroid/os/HandlerThread;

    .line 477
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 478
    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpHandler;

    const/4 v0, 0x1

    .line 479
    iput-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    const-string v2, "Sending message MSG_SYSTEM_READY to handler"

    .line 481
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessage(I)V

    const-string/jumbo p0, "systemReady done."

    .line 483
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendBroadcastForStateChange(III)V
    .locals 2

    .line 834
    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mIsHandlerReady:Z

    if-eqz v0, :cond_0

    .line 835
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "userId"

    .line 836
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "engineId"

    .line 837
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "state"

    .line 838
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0xf

    .line 840
    invoke-virtual {p0, p2, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessage(ILandroid/os/Bundle;)V

    .line 841
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "change state for user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, -0x5

    return p0

    .line 1096
    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setState(I)V

    .line 1097
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onStateChange(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)V

    .line 1103
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onStateChange(II)V

    .line 1109
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v0

    .line 1110
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p1

    .line 1112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1113
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->sendBroadcastForStateChange(III)V

    .line 1114
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setMasterKeyVersion(II)V
    .locals 1

    .line 4675
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    const-string/jumbo v0, "smk_ver"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1435
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0xa

    return p0

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1441
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "SdpManagerImpl"

    .line 1443
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set password :: Can\'t find engine info "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    monitor-exit v0

    const/4 p0, -0x5

    return p0

    .line 1446
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "SdpManagerImpl"

    .line 1449
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "set password :: Not supported anymore to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x63

    return p0

    .line 1452
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1453
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1454
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "set password :: Permission denied to invoke engine control API"

    .line 1455
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    return p0

    .line 1460
    :cond_3
    invoke-virtual {p0, v1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 1446
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, -0x5

    return p0

    .line 1465
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 1469
    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 1473
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, -0x6

    if-eq p1, v1, :cond_2

    return v2

    .line 1477
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getManagedCredential(I)[B

    move-result-object p1

    .line 1478
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "SdpManagerImpl"

    if-eqz v1, :cond_3

    .line 1479
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "set password :: Unexpected condition while derive managed creential for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1484
    :cond_3
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1485
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    .line 1486
    invoke-virtual {v2, p2, v1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->changePassword(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 1488
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/16 v4, -0x63

    :goto_0
    if-nez v4, :cond_5

    .line 1491
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "set password :: Successfully done for user %d"

    .line 1490
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "UTF-8"

    .line 1492
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheManagedCredential([BI)V

    goto :goto_1

    .line 1496
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p2, "set password :: Failed to set password for user %d... [ rc : %d ]"

    .line 1494
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    .line 1499
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->clearAll([Ljava/lang/Object;)V

    return v4
.end method

.method public setSensitive(ILjava/lang/String;)Z
    .locals 1

    .line 1146
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1149
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getProxy()Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;->setSensitive(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1324
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0xa

    return p0

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1330
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 1331
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const-string p0, "SdpManagerImpl"

    .line 1333
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unlock :: Can\'t find engine info for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0

    .line 1336
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "SdpManagerImpl"

    .line 1337
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unlock :: Not supported anymore to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x63

    return p0

    .line 1340
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1341
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1342
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "unlock :: Permission denied to invoke engine control API"

    .line 1343
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    return p0

    .line 1347
    :cond_3
    invoke-virtual {p0, v1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 1331
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unlockFinal([BLcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 1

    .line 2380
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2383
    :cond_0
    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, -0x3

    return p0

    .line 2387
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnDeviceUnlocked(I[B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2386
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p0, -0xb

    return p0

    .line 2390
    :cond_2
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x2

    .line 2391
    :try_start_0
    invoke-virtual {p0, p2, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 2392
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unlockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I
    .locals 7

    .line 1354
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 1358
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1361
    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 1363
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SdpManagerImpl"

    .line 1365
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlock :: Failed to check password user "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_0
    :goto_0
    const-string v2, "SdpManagerImpl"

    const-string/jumbo v4, "unlock :: Result of virtual user %d verification : %s"

    .line 1371
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 1369
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-eq v2, v3, :cond_4

    const/16 v3, -0x63

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    goto :goto_2

    .line 1379
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    const-string v1, "SdpManagerImpl"

    const-string/jumbo v2, "unlock :: User %d throttled! Please try %d ms later..."

    .line 1381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 1380
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1386
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v1

    .line 1388
    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockNative(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1387
    invoke-static {v2}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "SdpManagerImpl"

    .line 1389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unlock :: Failed in native unlock with user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v3, v2

    .line 1392
    :goto_1
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 1397
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    .line 1398
    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 1399
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "UTF-8"

    .line 1400
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheManagedCredential([BI)V

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 1399
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    :goto_3
    return v3
.end method

.method public final unlockNative(I[B)I
    .locals 1

    if-eqz p2, :cond_2

    .line 1415
    array-length p0, p2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1418
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->nativeOnDeviceUnlocked(I[B)I

    move-result p0

    if-eqz p0, :cond_1

    .line 1419
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unlockNative :: failed. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xb

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x3

    return p0
.end method

.method public unlockSdpIfUnsecuredOrBiometricAuthenticated(II)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2620
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2625
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2626
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2630
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key derivation required for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 2631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Issued order is identified as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2637
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2638
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 2639
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2640
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, -0x63

    if-eqz v0, :cond_2

    .line 2641
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t find engine info for user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    const/4 p2, 0x0

    goto :goto_0

    .line 2645
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getMasterKey(II)[B

    move-result-object p2

    .line 2646
    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Failed to unlock due to invalid key"

    .line 2647
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2651
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 2652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Engine already unlocked for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2654
    :cond_4
    invoke-virtual {p0, p2, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockFinal([BLcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v2

    :goto_0
    if-nez v2, :cond_5

    .line 2658
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2659
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2660
    invoke-virtual {p0, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheManagedCredential([BI)V

    .line 2662
    :cond_6
    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    const-string p0, "Result of sdp unlock : %s [ rc : %d ]"

    .line 2665
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 2664
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 2639
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public unlockSdpOnCredentialVerified([BI)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2518
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2523
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2524
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2528
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key acquired for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const-string/jumbo v0, "masterKey"

    const-string/jumbo v1, "userId"

    .line 2529
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, p1, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 2534
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2535
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 2536
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2537
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find engine info for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2541
    :cond_2
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Failed to unlock due to invalid key"

    .line 2542
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_0
    const/16 v0, -0x63

    goto :goto_1

    .line 2545
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 2546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Engine already unlocked for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2550
    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockFinal([BLcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    :goto_1
    if-nez v0, :cond_5

    .line 2554
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2555
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2556
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->cacheManagedCredential([BI)V

    .line 2559
    :cond_6
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    const-string p0, "Result of sdp unlock : %s [ rc : %d ]"

    .line 2562
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 2561
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 2536
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 4431
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0xa

    return p0

    :cond_0
    const-string/jumbo v0, "unlockViaTrusted"

    .line 4434
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4437
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4438
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "SdpManagerImpl"

    .line 4440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlockViaTrusted :: Can\'t find engine info with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    monitor-exit v0

    const/4 p0, -0x5

    return p0

    .line 4443
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4445
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result p2

    const/4 v0, -0x7

    if-eqz p2, :cond_2

    return v0

    .line 4448
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 4449
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 4450
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "unlockViaTrusted :: Permission denied to invoke engine control API"

    .line 4451
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4456
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 4457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4459
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockViaTrustedInternal(Ljava/lang/String;ILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 4443
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unlockViaTrustedInternal(Ljava/lang/String;ILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 5

    if-nez p3, :cond_0

    const/4 p0, -0x5

    return p0

    .line 4466
    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 4470
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getSpecificKeyViaProtector(Ljava/lang/String;I)[B

    move-result-object p1

    .line 4471
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "SdpManagerImpl"

    .line 4472
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unlockViaTrusted :: Failed to get token for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    .line 4480
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getTokenHandleViaProtector(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_2

    const-string p1, "SdpManagerImpl"

    .line 4482
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlockViaTrusted :: Failed to get token handle for user"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4484
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 4486
    :cond_2
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mVirtualLock:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 4489
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4491
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object p2

    .line 4493
    invoke-virtual {p0, v0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unlockNative(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4492
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SdpManagerImpl"

    .line 4494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlockViaTrusted :: Failed in native unlock with user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4497
    :cond_3
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    .line 4498
    :try_start_0
    invoke-virtual {p0, p3, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 4499
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4500
    invoke-static {p2}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 4499
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    const/16 p0, -0x63

    :goto_1
    const-string p2, "SdpManagerImpl"

    const-string/jumbo p3, "unlockViaTrusted :: Result of virtual user %d verification : %s"

    .line 4504
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 4502
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public unregisterClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    .locals 7

    .line 2063
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_6

    .line 2068
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 2072
    :cond_1
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 2073
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string p2, "SdpManagerImpl"

    const-string/jumbo v1, "unregisterClient :: Already cleared..."

    .line 2075
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_1

    .line 2077
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->get()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;

    .line 2078
    invoke-interface {p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2079
    invoke-virtual {v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->dispose()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2083
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->handleEmptyListenerRoll(I)V

    .line 2086
    :goto_1
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_5

    move p0, v2

    goto :goto_2

    .line 2087
    :cond_5
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->size()I

    move-result p0

    :goto_2
    const-string p2, "SdpManagerImpl"

    const-string/jumbo v1, "unregisterClient :: Engine Id = %d, Roll Size = %d, Result = %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 2090
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v4, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v4, p1

    .line 2089
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2088
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_3
    return-void
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I
    .locals 2

    .line 2212
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0xa

    return p0

    :cond_0
    const-string v0, "SdpManagerImpl"

    const-string/jumbo v1, "unregisterListener"

    .line 2216
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2223
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2225
    monitor-exit v0

    const/4 p0, -0x5

    return p0

    .line 2226
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2228
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->unregisterListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 2226
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unregisterListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, -0x5

    return p0

    .line 2262
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    monitor-enter v0

    .line 2263
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    .line 2264
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2266
    monitor-exit v0

    return v2

    .line 2268
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;

    .line 2269
    iget-object v5, v4, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mListener:Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    invoke-interface {v5}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 2270
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2271
    invoke-interface {p2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 2275
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_4

    .line 2276
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2277
    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateDeviceOwnerStatus()V
    .locals 3

    .line 746
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwner(I)Z

    move-result v0

    .line 747
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->updateDeviceOwnerStatus(Z)V

    .line 750
    invoke-static {}, Lcom/android/server/knox/dar/DarUtil;->isDoEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Device owner status updated! [ Enabled : %b ]"

    .line 749
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdpManagerImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mSdpDatabaseCache:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;

    const-string v2, "do_cleared"

    invoke-virtual {v0, v1, v2, v1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 754
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->quickMessage(I)V

    :cond_0
    return-void
.end method

.method public final verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3

    .line 683
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 685
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getLockSettings()Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$$ExternalSyntheticLambda4;-><init>([BJI)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 693
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    throw p0
.end method

.method public welcomeNewUser(I)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3126
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3130
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Welcome new user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 3133
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->generateRandomBytes(I)[B

    move-result-object v0

    .line 3136
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->establish([BI)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3135
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Welcome - Failed to create new engine"

    .line 3137
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 3141
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->saveEphemeralKeyViaProtector([BI)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3140
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "Welcome - Failed to safekeep sdp ephemeral key"

    .line 3142
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 3146
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->generateAndSaveSessionKey(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3145
    invoke-static {v1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Welcome - Failed to prepare session key"

    .line 3147
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3149
    :cond_3
    iput p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->mNeedToSetSdpPolicyForUser:I

    const/4 p0, 0x1

    .line 3153
    :goto_1
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    .line 3156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Result of welcoming new user %d : %s"

    .line 3155
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method
