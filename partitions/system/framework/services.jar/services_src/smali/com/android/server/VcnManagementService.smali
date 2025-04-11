.class public Lcom/android/server/VcnManagementService;
.super Landroid/net/vcn/IVcnManagementService$Stub;
.source "VcnManagementService.java"


# static fields
.field static final CARRIER_PRIVILEGES_LOST_TEARDOWN_DELAY_MS:J

.field public static final DUMP_TIMEOUT_MILLIS:J

.field public static final LOCAL_LOG:Landroid/util/LocalLog;

.field public static final RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;

.field public static final TAG:Ljava/lang/String;

.field static final VCN_CONFIG_FILE:Ljava/lang/String;


# instance fields
.field public final mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

.field public final mConfigs:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mDeps:Lcom/android/server/VcnManagementService$Dependencies;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field public final mLock:Ljava/lang/Object;

.field public final mLooper:Landroid/os/Looper;

.field public final mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

.field public final mRegisteredPolicyListeners:Ljava/util/Map;

.field public final mRegisteredStatusCallbacks:Ljava/util/Map;

.field public final mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

.field public final mTelephonySubscriptionTrackerCb:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

.field public final mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

.field public final mVcnBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mVcns:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$48BtT4iAz5Lr75_IPjroH8af5Vg(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->lambda$removeVcnUnderlyingNetworkPolicyListener$7(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4YxvZhzCeVThssiPjGG4HrCE8hw(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/VcnManagementService;->lambda$enforceCallingUserAndCarrierPrivilege$1(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V

    return-void
.end method

.method public static synthetic $r8$lambda$77LW_p9XQKqoWdya70Df-9tvHX8(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->lambda$setVcnConfig$4(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LJAfAftPhlIU4tF4fwzJY_KX41g(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->lambda$notifyAllPermissionedStatusCallbacksLocked$3(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z60VLhS_AeIMTReLpzRdx121kjI(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->lambda$clearVcnConfig$5(Landroid/os/ParcelUuid;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a7TDQoMHXWY3yl6DVaHU2LcRyQE(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->lambda$notifyAllPolicyListenersLocked$2(Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cz5PJZ2Bq3MsBLPOiiJHh0O2A7o(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->lambda$addVcnUnderlyingNetworkPolicyListener$6(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lXGQI9jt-4zQObJ4FTnzulDNAgI(Lcom/android/server/VcnManagementService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$qujonx95lZ25WJMQDaooYIIvDVk(Lcom/android/server/VcnManagementService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->lambda$dump$9(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rcPtParcaIS2gI-lUQECoDOPY8Y(Lcom/android/server/VcnManagementService;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->lambda$getUnderlyingNetworkPolicy$8(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigs(Lcom/android/server/VcnManagementService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/VcnManagementService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastSnapshot(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRegisteredStatusCallbacks(Lcom/android/server/VcnManagementService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelephonySubscriptionTracker(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVcns(Lcom/android/server/VcnManagementService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastSnapshot(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgarbageCollectAndWriteVcnConfigsLocked(Lcom/android/server/VcnManagementService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->garbageCollectAndWriteVcnConfigsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSubGroupToSubIdMappings(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->getSubGroupToSubIdMappings(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misActiveSubGroup(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misCallbackPermissioned(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogDbg(Lcom/android/server/VcnManagementService;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogInfo(Lcom/android/server/VcnManagementService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogWtf(Lcom/android/server/VcnManagementService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAllPermissionedStatusCallbacksLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAllPolicyListenersLocked(Lcom/android/server/VcnManagementService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartVcnLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopAndClearVcnConfigInternalLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->stopAndClearVcnConfigInternalLocked(Landroid/os/ParcelUuid;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopVcnLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteConfigsToDiskLocked(Lcom/android/server/VcnManagementService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetRESTRICTED_TRANSPORTS_DEFAULT()Ljava/util/Set;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/VcnManagementService;->RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 164
    const-class v0, Lcom/android/server/VcnManagementService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    .line 167
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/VcnManagementService;->DUMP_TIMEOUT_MILLIS:J

    const/4 v1, 0x1

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/android/server/VcnManagementService;->RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;

    .line 174
    new-instance v1, Landroid/util/LocalLog;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 179
    new-instance v1, Ljava/io/File;

    .line 180
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "vcn/configs.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/VcnManagementService;->VCN_CONFIG_FILE:Ljava/lang/String;

    const-wide/16 v1, 0x1e

    .line 184
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/VcnManagementService;->CARRIER_PRIVILEGES_LOST_TEARDOWN_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/VcnManagementService$Dependencies;)V
    .locals 4

    .line 227
    invoke-direct {p0}, Landroid/net/vcn/IVcnManagementService$Stub;-><init>()V

    .line 197
    new-instance v0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$TrackingNetworkCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    .line 200
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 204
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 208
    sget-object v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->EMPTY_SNAPSHOT:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 213
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 217
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    .line 222
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    const-string v0, "Missing context"

    .line 229
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const-string v0, "VCN"

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v0, "Missing dependencies"

    .line 231
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 233
    invoke-virtual {p2}, Lcom/android/server/VcnManagementService$Dependencies;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mLooper:Landroid/os/Looper;

    .line 234
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    .line 235
    new-instance v3, Lcom/android/server/vcn/VcnNetworkProvider;

    invoke-direct {v3, p1, v0}, Lcom/android/server/vcn/VcnNetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 236
    new-instance v3, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;

    invoke-direct {v3, p0, v1}, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback-IA;)V

    iput-object v3, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTrackerCb:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    .line 237
    invoke-virtual {p2, p1, v0, v3}, Lcom/android/server/VcnManagementService$Dependencies;->newTelephonySubscriptionTracker(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;)Lcom/android/server/vcn/TelephonySubscriptionTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 240
    sget-object v0, Lcom/android/server/VcnManagementService;->VCN_CONFIG_FILE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/server/VcnManagementService$Dependencies;->newPersistableBundleLockingReadWriteHelper(Ljava/lang/String;)Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    .line 242
    new-instance p2, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;

    invoke-direct {p2, p0, v1}, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnBroadcastReceiver-IA;)V

    iput-object p2, p0, Lcom/android/server/VcnManagementService;->mVcnBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 245
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    .line 246
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 247
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 248
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 249
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    .line 250
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 255
    new-instance p1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/VcnManagementService;)V

    invoke-virtual {v2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/VcnManagementService;
    .locals 2

    .line 297
    new-instance v0, Lcom/android/server/VcnManagementService;

    new-instance v1, Lcom/android/server/VcnManagementService$Dependencies;

    invoke-direct {v1}, Lcom/android/server/VcnManagementService$Dependencies;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/VcnManagementService;-><init>(Landroid/content/Context;Lcom/android/server/VcnManagementService$Dependencies;)V

    return-object v0
.end method

.method private synthetic lambda$addVcnUnderlyingNetworkPolicyListener$6(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 3

    .line 972
    new-instance v0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    .line 974
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 975
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    :try_start_1
    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 981
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->binderDied()V

    .line 983
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private synthetic lambda$clearVcnConfig$5(Landroid/os/ParcelUuid;)V
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->stopAndClearVcnConfigInternalLocked(Landroid/os/ParcelUuid;)V

    .line 836
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    .line 837
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$dump$9(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    .line 1312
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/VcnNetworkProvider;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1313
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1315
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1316
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1318
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1319
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v1, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1320
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mConfigs:"

    .line 1322
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1324
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnConfig;

    invoke-virtual {v2}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1325
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1328
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1329
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mVcns:"

    .line 1331
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1333
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/Vcn;

    .line 1334
    invoke-virtual {v1, p1}, Lcom/android/server/vcn/Vcn;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_1

    .line 1336
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1337
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1338
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "Local log:"

    .line 1340
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1342
    sget-object p0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 1343
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1344
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void

    :catchall_0
    move-exception p0

    .line 1338
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic lambda$enforceCallingUserAndCarrierPrivilege$1(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V
    .locals 0

    .line 459
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic lambda$getUnderlyingNetworkPolicy$8(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .locals 11

    .line 1065
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1067
    invoke-virtual {p0, v0}, Lcom/android/server/VcnManagementService;->getSubGroupForNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/os/ParcelUuid;

    move-result-object v1

    .line 1070
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1071
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vcn/Vcn;

    .line 1072
    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/vcn/VcnConfig;

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    if-nez v4, :cond_0

    .line 1077
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vcn instance exists but VcnConfig does not for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V

    .line 1080
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/vcn/Vcn;->getStatus()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v6, v7, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v5

    .line 1084
    :goto_0
    iget-object v9, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    iget-object v10, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v9, v1, v10, v4}, Lcom/android/server/VcnManagementService$Dependencies;->getRestrictedTransports(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnConfig;)Ljava/util/Set;

    move-result-object v1

    .line 1086
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v5

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1087
    invoke-virtual {v0, v9}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v9, :cond_4

    const/4 v10, 0x7

    if-ne v9, v10, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    move v4, v8

    goto :goto_4

    .line 1092
    :cond_4
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/vcn/Vcn;->getStatus()I

    move-result v9

    if-ne v9, v7, :cond_5

    move v9, v8

    goto :goto_3

    :cond_5
    move v9, v5

    :goto_3
    or-int/2addr v4, v9

    goto :goto_1

    :cond_6
    move v5, v6

    goto :goto_4

    :cond_7
    move v4, v5

    .line 1100
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    new-instance v1, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v1, v0}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    const/16 v0, 0x1c

    if-eqz v5, :cond_8

    .line 1105
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_5

    .line 1108
    :cond_8
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :goto_5
    if-eqz v4, :cond_9

    const/16 v0, 0xd

    .line 1112
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1116
    :cond_9
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1117
    new-instance v1, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    .line 1119
    invoke-static {v2, v0, p2}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->-$$Nest$mrequiresRestartForImmutableCapabilityChanges(Lcom/android/server/VcnManagementService$TrackingNetworkCallback;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result v2

    invoke-direct {v1, v2, v0}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;-><init>(ZLandroid/net/NetworkCapabilities;)V

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnderlyingNetworkPolicy() called for caps: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; and lp: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; result = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->logVdbg(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception p0

    .line 1100
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$new$0()V
    .locals 5

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    invoke-virtual {v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->readFromDisk()Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to read configs from disk; retrying"

    .line 260
    invoke-virtual {p0, v1, v0}, Lcom/android/server/VcnManagementService;->logErr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    invoke-virtual {v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->readFromDisk()Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v0, :cond_2

    .line 272
    new-instance v1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;-><init>()V

    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda9;-><init>()V

    .line 273
    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/util/PersistableBundleUtils;->toMap(Landroid/os/PersistableBundle;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 279
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 282
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnConfig;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTrackerCb:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-interface {v0, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;->onNewSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    .line 290
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void

    :catch_1
    move-exception v0

    const-string v1, "Failed to read configs from disk"

    .line 266
    invoke-virtual {p0, v1, v0}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$notifyAllPermissionedStatusCallbacksLocked$3(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V
    .locals 0

    .line 697
    :try_start_0
    iget-object p1, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    invoke-interface {p1, p2}, Landroid/net/vcn/IVcnStatusCallback;->onVcnStatusChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "VcnStatusCallback threw on VCN status change"

    .line 699
    invoke-virtual {p0, p2, p1}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$notifyAllPolicyListenersLocked$2(Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)V
    .locals 1

    .line 682
    :try_start_0
    invoke-static {p1}, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->-$$Nest$fgetmListener(Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->onPolicyChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "VcnStatusCallback threw on VCN status change"

    .line 684
    invoke-virtual {p0, v0, p1}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$removeVcnUnderlyingNetworkPolicyListener$7(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    .line 1001
    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    if-eqz p0, :cond_0

    .line 1004
    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1006
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$setVcnConfig$4(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->startOrUpdateVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    .line 780
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    .line 781
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 3

    const-string/jumbo v0, "listener was null"

    .line 964
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 966
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_FACTORY"

    const-string v2, "android.permission.MANAGE_TEST_NETWORKS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    .line 971
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public clearVcnConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "subscriptionGroup was null"

    .line 825
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "opPkgName was null"

    .line 826
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VCN config cleared for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 830
    invoke-virtual {v1}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 831
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->enforceCarrierPrivilegeOrProvisioningPackage(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 833
    new-instance p2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1306
    iget-object p1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo p3, "| "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1311
    iget-object p2, p0, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/internal/util/IndentingPrintWriter;)V

    sget-wide p0, Lcom/android/server/VcnManagementService;->DUMP_TIMEOUT_MILLIS:J

    invoke-virtual {p2, p3, p0, p1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 3

    .line 452
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->enforcePrimaryUser()V

    .line 455
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 456
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 457
    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1, v0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;-><init>(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 462
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 463
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 464
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 468
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 478
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Carrier privilege required for subscription group to set VCN Config"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceCarrierPrivilegeOrProvisioningPackage(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 1

    .line 790
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->enforcePrimaryUser()V

    .line 792
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->isProvisioningPackageForConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 797
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceManageTestNetworksForTestMode(Landroid/net/vcn/VcnConfig;)V
    .locals 1

    .line 483
    invoke-virtual {p1}, Landroid/net/vcn/VcnConfig;->isTestModeProfile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 484
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.MANAGE_TEST_NETWORKS"

    const-string v0, "Test-mode require the MANAGE_TEST_NETWORKS permission"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final enforcePrimaryUser()V
    .locals 1

    .line 435
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    invoke-virtual {p0}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    .line 441
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 442
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "VcnManagementService can only be used by callers running as the primary user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 437
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling identity was System Server. Was Binder calling identity cleared?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final garbageCollectAndWriteVcnConfigsLocked()V
    .locals 4

    .line 856
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 860
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 861
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 862
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 864
    invoke-virtual {v0, v3}, Landroid/telephony/SubscriptionManager;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 865
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 867
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 873
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    :cond_3
    return-void
.end method

.method public getAllStatusCallbacks()Ljava/util/Map;
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 942
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAllVcns()Ljava/util/Map;
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 934
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getConfigs()Ljava/util/Map;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 926
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getConfiguredSubscriptionGroups(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    const-string/jumbo v0, "opPkgName was null"

    .line 887
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 889
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 890
    invoke-virtual {v1}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 891
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->enforcePrimaryUser()V

    .line 893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 894
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 895
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 896
    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 897
    invoke-virtual {p0, v3, p1}, Lcom/android/server/VcnManagementService;->isProvisioningPackageForConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 898
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 901
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getSubGroupForNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/os/ParcelUuid;
    .locals 4

    .line 1017
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1018
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 1019
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getGroupForSubId(I)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Got multiple subscription groups for a single network"

    .line 1026
    invoke-virtual {p0, v0}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V

    .line 1029
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getGroupForSubId(I)Landroid/os/ParcelUuid;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p0

    .line 1019
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getSubGroupToSubIdMappings(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;
    .locals 3

    .line 652
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 653
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 654
    invoke-virtual {p1, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .locals 3

    const-string/jumbo v0, "networkCapabilities was null"

    .line 1044
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "linkProperties was null"

    .line 1045
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1047
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_TEST_NETWORKS"

    const-string v2, "android.permission.NETWORK_FACTORY"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 1053
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 1056
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1057
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NetworkCapabilities must be for Test Network if using permission MANAGE_TEST_NETWORKS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1062
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    return-object p0
.end method

.method public final isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getActiveDataSubscriptionGroup()Landroid/os/ParcelUuid;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z
    .locals 2

    .line 1156
    iget-object v0, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-virtual {p2, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1160
    :cond_0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object p1, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isProvisioningPackageForConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .locals 3

    .line 803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 805
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 806
    :try_start_1
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/vcn/VcnConfig;

    if-eqz p0, :cond_0

    .line 807
    invoke-virtual {p0}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 808
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    .line 810
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 812
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 810
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 812
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 813
    throw p0
.end method

.method public final logDbg(Ljava/lang/String;)V
    .locals 0

    .line 1262
    sget-object p0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1266
    sget-object p0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final logErr(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1285
    sget-object p0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1286
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERR ] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logInfo(Ljava/lang/String;)V
    .locals 3

    .line 1270
    sget-object p0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INFO] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logVdbg(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final logWtf(Ljava/lang/String;)V
    .locals 3

    .line 1290
    sget-object p0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WTF] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1295
    sget-object p0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1296
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WTF ] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V
    .locals 3

    .line 693
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 694
    invoke-virtual {p0, v1, p1}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final notifyAllPolicyListenersLocked()V
    .locals 3

    .line 679
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    .line 680
    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerVcnStatusCallback(Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V
    .locals 11

    .line 1173
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v6

    .line 1174
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    const-string/jumbo v0, "subGroup must not be null"

    .line 1176
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null"

    .line 1177
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "opPkgName must not be null"

    .line 1178
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1180
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v6, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1182
    invoke-interface {p2}, Landroid/net/vcn/IVcnStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1183
    new-instance v10, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;ILcom/android/server/VcnManagementService$VcnStatusCallbackInfo-IA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p2, 0x0

    .line 1187
    :try_start_1
    invoke-interface {v0, v10, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1193
    :try_start_2
    iget-object p3, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1194
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1199
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vcn/VcnConfig;

    .line 1203
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/Vcn;

    if-nez v1, :cond_0

    move v2, p2

    goto :goto_0

    .line 1205
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/vcn/Vcn;->getStatus()I

    move-result v2

    :goto_0
    if-eqz v0, :cond_5

    .line 1207
    invoke-virtual {p0, v10, p1}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x2

    if-eq v2, p1, :cond_4

    const/4 p1, 0x3

    if-ne v2, p1, :cond_3

    goto :goto_1

    .line 1215
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown VCN status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_4
    :goto_1
    move p2, v2

    .line 1220
    :cond_5
    :goto_2
    :try_start_4
    iget-object p1, v10, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    invoke-interface {p1, p2}, Landroid/net/vcn/IVcnStatusCallback;->onVcnStatusChanged(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_5
    const-string p2, "VcnStatusCallback threw on VCN status change"

    .line 1222
    invoke-virtual {p0, p2, p1}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1224
    :goto_3
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1226
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1195
    :cond_6
    :try_start_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempting to register a callback that is already in use"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 1224
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1226
    :catch_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1227
    throw p0
.end method

.method public removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 3

    const-string/jumbo v0, "listener was null"

    .line 991
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 993
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_FACTORY"

    const-string v2, "android.permission.MANAGE_TEST_NETWORKS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    .line 998
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public setLastSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 0

    .line 1252
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-void
.end method

.method public setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "subscriptionGroup was null"

    .line 762
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "config was null"

    .line 763
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "opPkgName was null"

    .line 764
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 765
    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VCN config updated for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 771
    invoke-virtual {v1}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v1

    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 772
    invoke-virtual {p0, p2}, Lcom/android/server/VcnManagementService;->enforceManageTestNetworksForTestMode(Landroid/net/vcn/VcnConfig;)V

    .line 773
    invoke-virtual {p0, p1, p3}, Lcom/android/server/VcnManagementService;->enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 775
    new-instance p3, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    .line 766
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Mismatched caller and VcnConfig creator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startOrUpdateVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 2

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting or updating VCN config for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/vcn/Vcn;

    .line 742
    invoke-virtual {p1, p2}, Lcom/android/server/vcn/Vcn;->updateConfig(Landroid/net/vcn/VcnConfig;)V

    .line 743
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    goto :goto_0

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/VcnManagementService;->isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 8

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting VCN config for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 714
    invoke-virtual {p0, v1}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    goto :goto_0

    .line 718
    :cond_0
    new-instance v7, Lcom/android/server/VcnManagementService$VcnCallbackImpl;

    const/4 v0, 0x0

    invoke-direct {v7, p0, p1, v0}, Lcom/android/server/VcnManagementService$VcnCallbackImpl;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/VcnManagementService$VcnCallbackImpl-IA;)V

    .line 720
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 722
    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->isTestModeProfile()Z

    move-result v4

    .line 721
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/VcnManagementService$Dependencies;->newVcnContext(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider;Z)Lcom/android/server/vcn/VcnContext;

    move-result-object v3

    .line 723
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    iget-object v6, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-object v4, p1

    move-object v5, p2

    .line 724
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/VcnManagementService$Dependencies;->newVcn(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;)Lcom/android/server/vcn/Vcn;

    move-result-object p2

    .line 725
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    const/4 p2, 0x2

    .line 732
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    return-void
.end method

.method public final stopAndClearVcnConfigInternalLocked(Landroid/os/ParcelUuid;)V
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 845
    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 850
    invoke-virtual {p0, p1, v0}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    :cond_0
    return-void
.end method

.method public final stopVcnLocked(Landroid/os/ParcelUuid;)V
    .locals 2

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping VCN config for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/Vcn;

    if-nez v0, :cond_0

    return-void

    .line 669
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/vcn/Vcn;->teardownAsynchronously()V

    .line 670
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    return-void
.end method

.method public systemReady()V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnNetworkProvider;->register()V

    .line 427
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 429
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 431
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->register()V

    return-void
.end method

.method public unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V
    .locals 4

    .line 1233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "callback must not be null"

    .line 1235
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1237
    invoke-interface {p1}, Landroid/net/vcn/IVcnStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1238
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1239
    :try_start_1
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    if-eqz p0, :cond_0

    const/4 v3, 0x0

    .line 1242
    invoke-interface {p1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1244
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1246
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 1244
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 1246
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1247
    throw p0
.end method

.method public final writeConfigsToDiskLocked()V
    .locals 3

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    new-instance v1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;-><init>()V

    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;-><init>()V

    .line 910
    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/util/PersistableBundleUtils;->fromMap(Ljava/util/Map;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 914
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->writeToDisk(Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to save configs to disk"

    .line 916
    invoke-virtual {p0, v1, v0}, Lcom/android/server/VcnManagementService;->logErr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 917
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 v0, 0x0

    const-string v1, "Failed to save configs"

    invoke-direct {p0, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
