.class public Lcom/samsung/android/knoxguard/service/KnoxGuardService;
.super Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;
.source "KnoxGuardService.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static mActionList:Ljava/util/List;

.field public static mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

.field public static mPreFix:Ljava/lang/String;

.field public static mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

.field public static mSettedInterface:Ljava/lang/String;

.field public static mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;


# instance fields
.field public mConnectivityManagerService:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field public mNetworkManagementService:Landroid/os/INetworkManagementService;

.field public mUnlockCompletedListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/knoxguard/service/KnoxGuardService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v0, "knox.guard"

    .line 41
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mPreFix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mActionList:Ljava/util/List;

    .line 45
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    .line 46
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    .line 52
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    .line 53
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 51
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    .line 514
    new-instance v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;-><init>(Lcom/samsung/android/knoxguard/service/KnoxGuardService;)V

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mUnlockCompletedListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    .line 56
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSupportKGOnSEC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    .line 61
    :try_start_0
    new-instance p1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mUnlockCompletedListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;)V

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setKGVM(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->registerReceiver(Landroid/content/Context;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->registerReceiver(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->setInitialState(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "KnoxGuard is unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getActionList()Ljava/util/List;
    .locals 1

    .line 499
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mActionList:Ljava/util/List;

    return-object v0
.end method

.method public static getKGVM()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .locals 1

    .line 487
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    return-object v0
.end method

.method public static setActionList(Ljava/util/List;)V
    .locals 0

    .line 495
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mActionList:Ljava/util/List;

    return-void
.end method

.method public static setKGVM(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;)V
    .locals 0

    .line 483
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    return-void
.end method

.method public static setPreFix(Ljava/lang/String;)V
    .locals 0

    .line 491
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mPreFix:Ljava/lang/String;

    return-void
.end method

.method public static setSettedInterface(Ljava/lang/String;)V
    .locals 0

    .line 507
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    return-void
.end method

.method public static setSystemReceiver(Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;)V
    .locals 0

    .line 503
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    return-void
.end method


# virtual methods
.method public addPackagesToClearCacheBlockList(Ljava/util/List;)Z
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 219
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "call addPackagesToClearCacheBlockList"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToForceStopBlockList(Ljava/util/List;)Z
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 213
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "call addPackagesToForceStopBlockList"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public allowFirmwareRecovery(Z)Z
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 195
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "call allowFirmwareRecovery"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public allowOTAUpgrade(Z)Z
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 201
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "call allowOTAUpgrade"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public allowSafeMode(Z)Z
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 207
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "call allowSafeMode"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public bindToLockScreen()V
    .locals 2

    .line 470
    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    if-nez v0, :cond_0

    .line 471
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mKGVM is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mUnlockCompletedListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;)V

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setKGVM(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;)V

    .line 474
    :cond_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->bindToLockScreen()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 478
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_0
    move-exception p0

    .line 476
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public callKGsv()V
    .locals 1

    .line 134
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 135
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v0, "call Knox Guard sv"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 451
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p3, "call dump"

    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object p3, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 453
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 455
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/Constants;->KG_LOG_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p0, :cond_2

    .line 459
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "data"

    .line 460
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 457
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1

    :cond_2
    if-eqz p0, :cond_3

    .line 463
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 464
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    throw p0
.end method

.method public generateHotpDHRequest()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getClientData()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getConnectivityManagerService()Landroid/net/ConnectivityManager;
    .locals 2

    const-string v0, "connectivity"

    .line 124
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public getHotpChallenge()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKGID()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKGPolicy()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKGServiceInfo()Landroid/os/Bundle;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKGServiceVersion()I
    .locals 0

    .line 0
    const p0, 0xa21fe81

    return p0
.end method

.method public getLockAction()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "network_management"

    .line 115
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPBAUniqueNumber()Ljava/lang/String;
    .locals 10

    const-string v0, "/sys/block/mmcblk0/device/cid"

    const-string v1, "/sys/block/mmcblk0/device/unique_number"

    const-string v2, "/sys/class/sec/mmc/un"

    const-string v3, "/sys/class/scsi_host/host0/unique_number"

    const-string v4, "/sys/class/sec/ufs/un"

    .line 304
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v5}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 306
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v5, "call getPBAUniqueNumber"

    invoke-static {p0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 312
    :try_start_0
    invoke-static {v4}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    const-string v8, ""

    if-ne p0, v7, :cond_0

    .line 313
    :try_start_1
    invoke-static {v4}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 314
    :cond_0
    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v7, :cond_1

    .line 315
    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 316
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v7, :cond_2

    .line 317
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 318
    :cond_2
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v7, :cond_3

    .line 319
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 321
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v7, :cond_c

    .line 323
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/sys/block/mmcblk0/device/name"

    .line 324
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_a

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 329
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_9

    const-string v9, "15"

    .line 331
    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 332
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v2, "02"

    .line 333
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_8

    const-string v2, "45"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const-string v2, "11"

    .line 335
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "90"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    const-string v2, "FE"

    .line 337
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x4

    const/4 v3, 0x6

    .line 338
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 336
    :cond_7
    :goto_0
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v2, 0x5

    .line 334
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    move-object v0, v8

    .line 341
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x12

    const/16 v2, 0x14

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x1c

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_a
    move-object p0, v1

    :goto_3
    if-eqz p0, :cond_b

    .line 355
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :cond_c
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :catchall_0
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 362
    throw p0
.end method

.method public getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 617
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 619
    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTAError()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public getTAInfo(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTAState()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public getTAStateSetError(Z)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public isSkipSupportContainerSupported()Z
    .locals 1

    .line 298
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v0, "call isSkipSupportContainerSupported"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSkipSupportContainerSupported()Z

    move-result p0

    return p0
.end method

.method public isVpnExceptionRequired()Z
    .locals 3

    .line 366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 368
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    .line 370
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Checking"

    .line 371
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Completed"

    .line 372
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    throw p0
.end method

.method public lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public registerIntent(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->unRegisterIntent()V

    .line 142
    new-instance v0, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setSystemReceiver(Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;)V

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setPreFix(Ljava/lang/String;)V

    .line 146
    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setActionList(Ljava/util/List;)V

    .line 148
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 149
    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "KG registerIntent"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerReceiver(Landroid/content/Context;)V
    .locals 6

    .line 72
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    new-instance v0, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;-><init>()V

    .line 74
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const/4 v4, 0x0

    const-string/jumbo v5, "package"

    if-eqz v1, :cond_0

    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 75
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    .line 76
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.kgclient"

    .line 80
    invoke-virtual {p0, v1, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 82
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 84
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    .line 85
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    :goto_0
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 89
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x5f5e101

    .line 90
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 91
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    invoke-virtual {p0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v5, "com.android.systemui"

    .line 94
    invoke-virtual {p0, v5, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 96
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 100
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerReceiver(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p0, "Locked"

    .line 104
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result p0

    if-nez p0, :cond_0

    .line 105
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    new-instance p2, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-direct {p2}, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;-><init>()V

    sput-object p2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    const-string p2, "android.intent.action.USER_PRESENT"

    .line 107
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const p2, 0x5f5e101

    .line 108
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 109
    sget-object p2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 255
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v1, "call removeActiveAdmin"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    .line 257
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public final resetKnoxGuardExemptRule(I)V
    .locals 3

    .line 439
    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearKnoxGuardExemptRule - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0, p1}, Landroid/os/INetworkManagementService;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    const/4 p0, 0x0

    .line 442
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setSettedInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 445
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public resetRPMB()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public resetRPMB2(Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 274
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v1, "call revokeRuntimePermission"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 277
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 246
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v1, "call setActiveAdmin"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAdminRemovable(Z)Z
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 189
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "call setAdminRemovable"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setAirplaneMode(Z)V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 231
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v1, "call setAirplaneMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 235
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 236
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 238
    :try_start_1
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 240
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    throw p0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)Z
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 225
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "call setApplicationUninstallationDisabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setCheckingState()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public setClientData(Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public setClientHealthOK()V
    .locals 0

    .line 0
    return-void
.end method

.method public setKnoxGuardExemptRule(Z)V
    .locals 8

    const-string v0, ", "

    .line 413
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 414
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-wide/16 v2, -0x1

    .line 417
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 418
    invoke-virtual {p0, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->resetKnoxGuardExemptRule(I)V

    .line 419
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    if-nez v4, :cond_0

    .line 422
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setKnoxGuardExemptRule - There is no active network"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 425
    :cond_0
    :try_start_1
    sget-object v5, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setKnoxGuardExemptRule - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1, v1}, Landroid/os/INetworkManagementService;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    .line 428
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setSettedInterface(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 431
    :try_start_2
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    throw p0
.end method

.method public setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    .line 282
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 284
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call setRemoteLockToLockscreen"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v3, v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    invoke-static/range {v3 .. v16}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V

    return-void
.end method

.method public setRemoteLockToLockscreenWithSkipSupport(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 290
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 292
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call setRemoteLockToLockscreen with skipSupportContainer"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v3, v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    invoke-static/range {v3 .. v17}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 264
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v1, "call setRuntimePermission"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 267
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public shouldBlockCustomRom()Z
    .locals 1

    .line 400
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 402
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Checking"

    .line 403
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Completed"

    .line 404
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public showInstallmentStatus()Z
    .locals 3

    .line 382
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 384
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v2, ""

    .line 387
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Prenormal"

    .line 388
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Checking"

    .line 389
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Completed"

    .line 390
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    throw p0
.end method

.method public unRegisterIntent()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 159
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->unRegisterIntent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 162
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setActionList(Ljava/util/List;)V

    .line 163
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 167
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v0, "KG unRegisterIntent"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final unRegisterIntent(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "Locked"

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 176
    :cond_0
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    if-eqz p1, :cond_1

    .line 178
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 179
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 181
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public unlockScreen()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public verifyCompleteToken(Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public verifyHOTPDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public verifyHOTPPin(Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public verifyHOTPsecret(Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public verifyKgRot()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method
