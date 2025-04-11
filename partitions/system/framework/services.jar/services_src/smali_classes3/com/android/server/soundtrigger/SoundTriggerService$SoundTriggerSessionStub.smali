.class public Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
.super Lcom/android/internal/app/ISoundTriggerSession$Stub;
.source "SoundTriggerService.java"


# instance fields
.field public final mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

.field public final mCallbacks:Ljava/util/TreeMap;

.field public final mCallbacksLock:Ljava/lang/Object;

.field public final mClient:Landroid/os/IBinder;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mListener:Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;

.field public final mLoadedModels:Ljava/util/TreeMap;

.field public final mOriginatorIdentity:Landroid/media/permission/Identity;

.field public final mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

.field public final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public static synthetic $r8$lambda$1E8wU_rgK-HpwRr97hFcAjktwKY(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->lambda$new$1(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2q4c1RPyrPEp8bSCMxjXI_I-rrM(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/util/TreeMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacksLock(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEventLogger(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Lcom/android/server/utils/EventLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/os/IBinder;Lcom/android/server/soundtrigger/SoundTriggerHelper;Lcom/android/server/utils/EventLogger;)V
    .locals 2

    .line 513
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Lcom/android/internal/app/ISoundTriggerSession$Stub;-><init>()V

    .line 506
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    .line 507
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    .line 508
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    .line 514
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 515
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mClient:Landroid/os/IBinder;

    .line 516
    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 517
    iput-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 518
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSessionEventLoggers(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 521
    :try_start_0
    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)V

    const/4 p4, 0x0

    invoke-interface {p2, p3, p4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->clientDied()V

    .line 525
    :goto_0
    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)V

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mListener:Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;

    .line 527
    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    iget-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 528
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    invoke-direct {p3, p1, p4, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/media/permission/Identity;Ljava/util/function/Consumer;)V

    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    .line 529
    invoke-virtual {p3}, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->forceOpChangeRefresh()V

    .line 530
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/AppOpsManager;

    move-result-object p4

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    iget-object p0, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v1, "android:record_audio"

    invoke-virtual {p4, v1, p0, v0, p3}, Landroid/app/AppOpsManager;->startWatchingMode(Ljava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 533
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDeviceStateHandler(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/DeviceStateHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/DeviceStateHandler;->registerListener(Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 521
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->clientDied()V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onDeviceStateChanged(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    return-void
.end method


# virtual methods
.method public final clientDied()V
    .locals 5

    .line 976
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->DETACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 977
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmServiceEventLogger(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/utils/EventLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;->DETACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    iget-object v3, v3, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    const-string v4, "Client died"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const-string v3, "SoundTriggerService"

    .line 979
    invoke-virtual {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 977
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 980
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->detach()V

    return-void
.end method

.method public deleteSoundModel(Landroid/os/ParcelUuid;)V
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->DELETE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 601
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 602
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 607
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    .line 609
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDbHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->deleteGenericSoundModel(Ljava/util/UUID;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 610
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 601
    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public final detach()V
    .locals 2

    .line 984
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDeviceStateHandler(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/DeviceStateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mListener:Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/DeviceStateHandler;->unregisterListener(Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;)V

    .line 988
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->detach()V

    .line 989
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    invoke-static {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$mdetachSessionLogger(Lcom/android/server/soundtrigger/SoundTriggerService;Lcom/android/server/utils/EventLogger;)V

    return-void
.end method

.method public final enforceCallingPermission(Ljava/lang/String;)V
    .locals 3

    .line 993
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmContext(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    invoke-static {v0, v1, p1}, Landroid/media/permission/PermissionUtil;->checkPermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 995
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have permission "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final enforceDetectionPermissions(Landroid/content/ComponentName;)V
    .locals 2

    .line 1002
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1003
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1006
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have permission "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getModelState(Landroid/os/ParcelUuid;)I
    .locals 8

    .line 875
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->GET_MODEL_STATE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 876
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 877
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 880
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 881
    :try_start_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/4 v4, 0x2

    const/high16 v5, -0x80000000

    if-nez v3, :cond_1

    .line 883
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 885
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Model is not loaded"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 887
    invoke-virtual {v6, v4, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 883
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 888
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 905
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return v5

    .line 890
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 896
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 898
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Unsupported model type"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 900
    invoke-virtual {v6, v4, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 896
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_0

    .line 892
    :cond_2
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getGenericModelState(Ljava/util/UUID;)I

    move-result v5

    .line 903
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 905
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_3
    return v5

    :catchall_0
    move-exception p0

    .line 904
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_4

    .line 876
    :try_start_5
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
.end method

.method public getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 4

    .line 911
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->GET_MODULE_PROPERTIES:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 912
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 913
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 914
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 915
    :try_start_1
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p0

    .line 916
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 918
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 917
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_1

    .line 912
    :try_start_4
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public getParameter(Landroid/os/ParcelUuid;I)I
    .locals 3

    .line 947
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 948
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 949
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 950
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-eqz p1, :cond_1

    .line 954
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getParameter(Ljava/util/UUID;I)I

    move-result p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 956
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return p0

    .line 952
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sound model is not loaded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 955
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_2

    .line 947
    :try_start_4
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
.end method

.method public getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .locals 2

    .line 581
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 582
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 583
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDbHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object p0

    .line 584
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 586
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 581
    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public final getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;
    .locals 0

    if-eqz p1, :cond_0

    .line 1016
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;
    .locals 0

    if-eqz p1, :cond_0

    .line 1012
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isRecognitionActive(Landroid/os/ParcelUuid;)Z
    .locals 4

    .line 861
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 862
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 864
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v2, :cond_1

    .line 866
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 870
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 868
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 869
    :try_start_3
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionRequested(Ljava/util/UUID;)Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 870
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_2
    return p0

    :catchall_0
    move-exception p0

    .line 868
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_3

    .line 861
    :try_start_6
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0
.end method

.method public loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I
    .locals 5

    .line 615
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->LOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 616
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 617
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 618
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 624
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 625
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-eqz v2, :cond_1

    .line 629
    invoke-virtual {v2, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 630
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 631
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 632
    :try_start_2
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    .line 635
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 638
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_2
    const/4 p0, 0x0

    return p0

    :catchall_1
    move-exception p0

    .line 636
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    .line 619
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 620
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Invalid sound model"

    invoke-direct {v3, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    const/4 p1, 0x2

    invoke-virtual {v3, p1, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 619
    invoke-virtual {v1, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_4

    .line 638
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_4
    const/high16 p0, -0x80000000

    return p0

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_5

    .line 616
    :try_start_6
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p0
.end method

.method public loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .locals 6

    .line 643
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->LOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 645
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 646
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const/high16 v1, -0x80000000

    const/4 v3, 0x2

    if-eqz p1, :cond_6

    .line 647
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 653
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 661
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 665
    invoke-virtual {v2, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 666
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 667
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v4

    .line 666
    invoke-virtual {v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    .line 668
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 669
    :try_start_2
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    .line 672
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    .line 675
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_3
    return v3

    :catchall_1
    move-exception p0

    .line 673
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    .line 654
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Only one keyphrase supported"

    invoke-direct {v5, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 655
    invoke-virtual {v5, v3, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 654
    invoke-virtual {v4, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_5

    .line 675
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_5
    return v1

    .line 648
    :cond_6
    :goto_2
    :try_start_6
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Invalid sound model"

    invoke-direct {v5, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 649
    invoke-virtual {v5, v3, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 648
    invoke-virtual {v4, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_7

    .line 675
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_7
    return v1

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_8

    .line 645
    :try_start_7
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw p0
.end method

.method public queryParameter(Landroid/os/ParcelUuid;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .locals 3

    .line 963
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 964
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 965
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 966
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez p1, :cond_1

    .line 968
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 972
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 970
    :cond_1
    :try_start_2
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->queryParameter(Ljava/util/UUID;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 972
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 971
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_3

    .line 963
    :try_start_5
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0
.end method

.method public setParameter(Landroid/os/ParcelUuid;II)I
    .locals 5

    .line 924
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->SET_PARAMETER:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 925
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 926
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 927
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 928
    :try_start_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez v3, :cond_1

    .line 930
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Model not loaded"

    invoke-direct {p3, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    const/4 p1, 0x2

    .line 934
    invoke-virtual {p3, p1, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 930
    invoke-virtual {p2, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 935
    sget p0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 940
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return p0

    .line 937
    :cond_1
    :try_start_2
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 938
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    .line 937
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->setParameter(Ljava/util/UUID;II)I

    move-result p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 940
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_2
    return p0

    :catchall_0
    move-exception p0

    .line 939
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_3

    .line 925
    :try_start_5
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0
.end method

.method public startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .locals 7

    .line 540
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->START_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 542
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 543
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 546
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Invalid sound model"

    invoke-direct {p3, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    const/4 p1, 0x2

    invoke-virtual {p3, p1, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 546
    invoke-virtual {p2, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 562
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    const/high16 p0, -0x80000000

    return p0

    :cond_1
    if-eqz p4, :cond_2

    :try_start_1
    const-string v1, "android.permission.SOUND_TRIGGER_RUN_IN_BATTERY_SAVER"

    .line 552
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 555
    :cond_2
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result p2

    if-nez p2, :cond_3

    .line 559
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStart(Ljava/util/UUID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    .line 562
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_4
    return p2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_5

    .line 542
    :try_start_2
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw p0
.end method

.method public startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 10

    .line 681
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->START_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    .line 681
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 683
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 684
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 688
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0, p3}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceDetectionPermissions(Landroid/content/ComponentName;)V

    .line 691
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;

    .line 692
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 693
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    move-object v3, v1

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 695
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p2}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 696
    :try_start_1
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/high16 v3, -0x80000000

    const/4 v9, 0x2

    if-nez p3, :cond_1

    .line 698
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 700
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Model not loaded"

    invoke-direct {p4, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 701
    invoke-virtual {p4, v9, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 698
    invoke-virtual {p3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 703
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_0

    .line 744
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return v3

    .line 706
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 707
    :try_start_3
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 708
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_3

    .line 710
    :try_start_4
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 712
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Model already running"

    invoke-direct {p4, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 713
    invoke-virtual {p4, v9, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 710
    invoke-virtual {p3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 714
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_2

    .line 744
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_2
    return v3

    .line 717
    :cond_3
    :try_start_5
    invoke-virtual {p3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    .line 723
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 725
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Unsupported model type"

    invoke-direct {p4, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 726
    invoke-virtual {p4, v9, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 723
    invoke-virtual {p3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 727
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_4

    .line 744
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_4
    return v3

    .line 719
    :cond_5
    :try_start_6
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    move-object v5, p3

    check-cast v5, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    const/4 v8, 0x0

    move-object v6, v1

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result p3

    if-eqz p3, :cond_7

    .line 731
    iget-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 733
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Model start fail"

    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 734
    invoke-virtual {v1, v9, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 731
    invoke-virtual {p4, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 735
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_6

    .line 744
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_6
    return p3

    .line 737
    :cond_7
    :try_start_7
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 738
    :try_start_8
    iget-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p4, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    monitor-exit p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 741
    :try_start_9
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStart(Ljava/util/UUID;)V

    .line 742
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v0, :cond_8

    .line 744
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_8
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 739
    :try_start_a
    monitor-exit p3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_1
    move-exception p0

    .line 708
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw p0

    :catchall_2
    move-exception p0

    .line 742
    monitor-exit p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception p0

    if-eqz v0, :cond_9

    .line 683
    :try_start_f
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_0

    :catchall_4
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_0
    throw p0
.end method

.method public stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 4

    .line 567
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->STOP_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 568
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 569
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p2

    if-nez p2, :cond_0

    .line 573
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 576
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_1
    return p2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    .line 568
    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
.end method

.method public stopRecognitionForService(Landroid/os/ParcelUuid;)I
    .locals 9

    .line 749
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->STOP_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 750
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    .line 749
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 752
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 753
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 756
    :try_start_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/high16 v4, -0x80000000

    const/4 v5, 0x2

    if-nez v3, :cond_1

    .line 758
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 760
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Model not loaded"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 762
    invoke-virtual {v6, v5, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 758
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 764
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_0

    .line 809
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return v4

    .line 767
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 768
    :try_start_3
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 769
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v7, :cond_3

    .line 771
    :try_start_4
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 773
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Model not running"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 775
    invoke-virtual {v6, v5, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 771
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 776
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_2

    .line 809
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_2
    return v4

    .line 779
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_5

    .line 785
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 787
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Unknown model type"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 789
    invoke-virtual {v6, v5, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 785
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 791
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_4

    .line 809
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_4
    return v4

    .line 781
    :cond_5
    :try_start_6
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 782
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 781
    invoke-virtual {v4, v3, v7}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v3

    if-eqz v3, :cond_7

    .line 795
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 797
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Failed to stop model"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 799
    invoke-virtual {v6, v5, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 795
    invoke-virtual {v4, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 800
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_6

    .line 809
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_6
    return v3

    .line 802
    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 803
    :try_start_8
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 806
    :try_start_9
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmSoundModelStatTracker(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    .line 807
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v0, :cond_8

    .line 809
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_8
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 804
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_1
    move-exception p0

    .line 769
    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw p0

    :catchall_2
    move-exception p0

    .line 807
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception p0

    if-eqz v0, :cond_9

    .line 752
    :try_start_f
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_0

    :catchall_4
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_0
    throw p0
.end method

.method public unloadSoundModel(Landroid/os/ParcelUuid;)I
    .locals 9

    .line 814
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->UNLOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 815
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 816
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 818
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 819
    :try_start_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/high16 v4, -0x80000000

    const/4 v5, 0x2

    if-nez v3, :cond_1

    .line 821
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 823
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Model not loaded"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 825
    invoke-virtual {v6, v5, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 821
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 826
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 856
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return v4

    .line 829
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    const/4 v8, 0x1

    if-eq v6, v8, :cond_3

    .line 838
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 840
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Unknown model type"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 842
    invoke-virtual {v6, v5, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 838
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 843
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 856
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_2
    return v4

    .line 835
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    move-result v3

    goto :goto_0

    .line 831
    :cond_4
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 832
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v3

    .line 831
    invoke-virtual {v4, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    move-result v3

    :goto_0
    if-eqz v3, :cond_6

    .line 846
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    .line 848
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Failed to unload model"

    invoke-direct {v6, v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p0, "SoundTriggerService"

    .line 850
    invoke-virtual {v6, v5, p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 846
    invoke-virtual {v4, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 851
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    .line 856
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_5
    return v3

    .line 853
    :cond_6
    :try_start_4
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_7

    .line 856
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_7
    return v7

    :catchall_0
    move-exception p0

    .line 855
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_8

    .line 815
    :try_start_7
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw p0
.end method

.method public updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    .locals 4

    .line 591
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->UPDATE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 592
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 593
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 594
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDbHelper(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->updateGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 595
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 592
    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method
