.class public Lcom/android/server/wearable/WearableSensingManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "WearableSensingManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WearableSensingManagerService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public volatile mIsServiceEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$fKwkTKUjJzHC1iLD2y3WytV9NX0(Lcom/android/server/wearable/WearableSensingManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerService;->lambda$onBootPhase$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 72
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x104031a

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x44

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 79
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/wearable/WearableSensingManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static isDetectionServiceConfigured()Z
    .locals 4

    .line 147
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const/16 v1, 0x13

    const/4 v2, 0x0

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    .line 150
    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 151
    :cond_0
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wearable sensing service configured: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private synthetic lambda$onBootPhase$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 94
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerService;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public enforceCallingPermissionForManagement()V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getComponentName(I)Landroid/content/ComponentName;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 164
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMaximumTemporaryServiceDurationMs()I
    .locals 0

    .line 0
    const/16 p0, 0x7530

    return p0
.end method

.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->newServiceLocked(IZ)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    return-object p0
.end method

.method public newServiceLocked(IZ)Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    .locals 1

    .line 114
    new-instance p2, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public onBootPhase(I)V
    .locals 2

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

    const-string/jumbo v1, "wearable_sensing"

    .line 91
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string/jumbo p1, "service_enabled"

    const/4 v0, 0x1

    .line 96
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    :cond_0
    return-void
.end method

.method public final onDeviceConfigChange(Ljava/util/Set;)V
    .locals 2

    const-string/jumbo v0, "service_enabled"

    .line 104
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "wearable_sensing"

    const/4 v1, 0x1

    .line 105
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    :cond_0
    return-void
.end method

.method public onServicePackageRestartedLocked(I)V
    .locals 0

    .line 126
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onServicePackageRestartedLocked."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServicePackageUpdatedLocked(I)V
    .locals 0

    .line 131
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onServicePackageUpdatedLocked."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0

    .line 58
    check-cast p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->onServiceRemoved(Lcom/android/server/wearable/WearableSensingManagerPerUserService;I)V

    return-void
.end method

.method public onServiceRemoved(Lcom/android/server/wearable/WearableSensingManagerPerUserService;I)V
    .locals 0

    .line 120
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onServiceRemoved"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->destroyLocked()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 84
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal-IA;)V

    const-string/jumbo v1, "wearable_sensing"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public provideData(ILandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-eqz p0, :cond_0

    .line 187
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    goto :goto_0

    .line 189
    :cond_0
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public provideDataStream(ILandroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    goto :goto_0

    .line 176
    :cond_0
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
