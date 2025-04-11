.class public Lcom/android/server/soundtrigger/SoundTriggerService;
.super Lcom/android/server/SystemService;
.source "SoundTriggerService.java"


# instance fields
.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

.field public final mDetachedSessionEventLoggers:Ljava/util/Deque;

.field public final mDeviceEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

.field public final mDeviceStateHandlerExecutor:Ljava/util/concurrent/Executor;

.field public final mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

.field public final mLock:Ljava/lang/Object;

.field public mMiddlewareService:Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

.field public final mNumOpsPerPackage:Landroid/util/ArrayMap;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPhoneCallStateHandler:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

.field public final mServiceEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

.field public final mSessionEventLoggers:Ljava/util/Set;

.field public mSessionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;


# direct methods
.method public static synthetic $r8$lambda$OjNjyB5OjYhO6HpwnHMumOBKzIw(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/media/permission/Identity;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->lambda$newSoundTriggerHelper$2(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UVGbEE0qiClgfYoE0zcbOydPA2w(Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->lambda$listUnderlyingModuleProperties$0(Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q92uHKtJd-eD0_HPtJHYYBSePWE(Lcom/android/server/soundtrigger/SoundTriggerService;ILandroid/media/permission/Identity;Landroid/media/permission/Identity;ZLandroid/hardware/soundtrigger/SoundTrigger$StatusListener;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/soundtrigger/SoundTriggerService;->lambda$newSoundTriggerHelper$1(ILandroid/media/permission/Identity;Landroid/media/permission/Identity;ZLandroid/hardware/soundtrigger/SoundTrigger$StatusListener;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsManager(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/AppOpsManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDbHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDetachedSessionEventLoggers(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/Deque;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceEventLogger(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/utils/EventLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceEventLogger:Lcom/android/server/utils/EventLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceStateHandler(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/DeviceStateHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNumOpsPerPackage(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mNumOpsPerPackage:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceEventLogger(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/utils/EventLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionEventLoggers(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionEventLoggers:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionIdCounter(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdetachSessionLogger(Lcom/android/server/soundtrigger/SoundTriggerService;Lcom/android/server/utils/EventLogger;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->detachSessionLogger(Lcom/android/server/utils/EventLogger;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlistUnderlyingModuleProperties(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/media/permission/Identity;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->listUnderlyingModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnewSoundTriggerHelper(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Lcom/android/server/utils/EventLogger;)Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerService;->newSoundTriggerHelper(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Lcom/android/server/utils/EventLogger;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnewSoundTriggerHelper(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Lcom/android/server/utils/EventLogger;Z)Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerService;->newSoundTriggerHelper(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Lcom/android/server/utils/EventLogger;Z)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 245
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    .line 153
    new-instance v0, Lcom/android/server/utils/EventLogger;

    const-string v1, "Service"

    const/16 v2, 0x100

    invoke-direct {v0, v2, v1}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 154
    new-instance v0, Lcom/android/server/utils/EventLogger;

    const-string v1, "Device Event"

    invoke-direct {v0, v2, v1}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceEventLogger:Lcom/android/server/utils/EventLogger;

    const/4 v1, 0x4

    .line 156
    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionEventLoggers:Ljava/util/Set;

    .line 157
    new-instance v2, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v2, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    .line 158
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 235
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mNumOpsPerPackage:Landroid/util/ArrayMap;

    .line 239
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandlerExecutor:Ljava/util/concurrent/Executor;

    .line 246
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 247
    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    .line 248
    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    invoke-direct {v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    .line 249
    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    invoke-direct {p1, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    .line 250
    new-instance p1, Lcom/android/server/soundtrigger/DeviceStateHandler;

    invoke-direct {p1, v1, v0}, Lcom/android/server/soundtrigger/DeviceStateHandler;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/utils/EventLogger;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    return-void
.end method

.method public static synthetic lambda$listUnderlyingModuleProperties$0(Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 0

    .line 304
    invoke-static {p0}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiModuleDescriptor(Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$newSoundTriggerHelper$1(ILandroid/media/permission/Identity;Landroid/media/permission/Identity;ZLandroid/hardware/soundtrigger/SoundTrigger$StatusListener;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .locals 9

    .line 337
    new-instance v8, Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mMiddlewareService:Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    .line 339
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v0, v8

    move v2, p1

    move-object v3, p5

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/hardware/soundtrigger/SoundTriggerModule;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;Landroid/media/permission/Identity;Z)V

    return-object v8
.end method

.method private synthetic lambda$newSoundTriggerHelper$2(Landroid/media/permission/Identity;)Ljava/util/List;
    .locals 0

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->listUnderlyingModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final detachSessionLogger(Lcom/android/server/utils/EventLogger;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionEventLoggers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final listUnderlyingModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;
    .locals 2

    .line 299
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    .line 300
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 302
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mMiddlewareService:Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    invoke-interface {p0, v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->listModulesAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda2;-><init>()V

    .line 304
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 305
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 307
    :catch_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget p1, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
.end method

.method public final newSoundTriggerHelper(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Lcom/android/server/utils/EventLogger;)Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .locals 1

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->newSoundTriggerHelper(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Lcom/android/server/utils/EventLogger;Z)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object p0

    return-object p0
.end method

.method public final newSoundTriggerHelper(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Lcom/android/server/utils/EventLogger;Z)Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .locals 15

    move-object v6, p0

    move-object/from16 v0, p1

    .line 318
    new-instance v3, Landroid/media/permission/Identity;

    invoke-direct {v3}, Landroid/media/permission/Identity;-><init>()V

    .line 319
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 320
    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    move-result-object v7

    .line 322
    invoke-virtual {p0, v7}, Lcom/android/server/soundtrigger/SoundTriggerService;->listUnderlyingModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    move-result v4

    move v12, v4

    goto :goto_0

    :cond_0
    move v12, v2

    :goto_0
    if-eq v12, v2, :cond_2

    .line 329
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 330
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid module properties"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_2
    :goto_1
    new-instance v14, Lcom/android/server/soundtrigger/SoundTriggerHelper;

    iget-object v9, v6, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda0;

    move-object v0, v11

    move-object v1, p0

    move v2, v12

    move-object v4, v7

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;ILandroid/media/permission/Identity;Landroid/media/permission/Identity;Z)V

    new-instance v13, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;

    invoke-direct {v13, p0, v7}, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/media/permission/Identity;)V

    move-object v8, v14

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/server/soundtrigger/SoundTriggerHelper;-><init>(Landroid/content/Context;Lcom/android/server/utils/EventLogger;Ljava/util/function/Function;ILjava/util/function/Supplier;)V

    return-object v14
.end method

.method public onBootPhase(I)V
    .locals 4

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBootPhase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->isSafeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x258

    if-ne v0, p1, :cond_0

    .line 264
    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    .line 265
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 266
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 267
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 269
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$1;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/os/PowerManager;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    invoke-virtual {p1}, Landroid/os/PowerManager;->getSoundTriggerPowerSaveMode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/DeviceStateHandler;->onPowerModeChanged(I)V

    .line 286
    new-instance p1, Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 287
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    .line 288
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/soundtrigger/PhoneCallStateHandler;-><init>(Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;Lcom/android/server/soundtrigger/PhoneCallStateHandler$Callback;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mPhoneCallStateHandler:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    :cond_0
    const-string/jumbo p1, "soundtrigger_middleware"

    .line 292
    invoke-static {p1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 291
    invoke-static {p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mMiddlewareService:Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string/jumbo v0, "soundtrigger"

    .line 256
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 257
    const-class v0, Lcom/android/server/SoundTriggerInternal;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
