.class public Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;
.super Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;
.source "KnoxGuardSeService.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static intentRelayReceiver:Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;

.field public static mActionList:Ljava/util/List;

.field public static mBundle:Landroid/os/Bundle;

.field public static mClientHealth:I

.field public static mClientName:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static mEmailAddress:Ljava/lang/String;

.field public static mFailureCount:I

.field public static mLockResult:I

.field public static mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public static mMessage:Ljava/lang/String;

.field public static mPhoneNumber:Ljava/lang/String;

.field public static mPreFix:Ljava/lang/String;

.field public static mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

.field public static mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

.field public static mSettedInterface:Ljava/lang/String;

.field public static mSkipPin:Z

.field public static mSkipSupport:Z

.field public static mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

.field public static mTAVersion:I

.field public static opListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

.field public static userPresentReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;


# instance fields
.field public mConnectivityManagerService:Landroid/net/ConnectivityManager;

.field public mNetworkManagementService:Landroid/os/INetworkManagementService;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmFailureCount()I
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$smsetRemoteLockToLockscreen(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setRemoteLockToLockscreen(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smunlockCompleted()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unlockCompleted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smunregisterUserPresentReceiver()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unregisterUserPresentReceiver()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "knox.guard"

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPreFix:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mActionList:Ljava/util/List;

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->intentRelayReceiver:Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->userPresentReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSettedInterface:Ljava/lang/String;

    const/4 v1, -0x1

    sput v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientName:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPhoneNumber:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mEmailAddress:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mMessage:Ljava/lang/String;

    sput v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAVersion:I

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x1

    sput v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientHealth:I

    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockResult:I

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    new-instance v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$1;

    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->opListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    new-instance v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$2;

    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$2;-><init>()V

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSupportKGOnSEC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStateAndSetToKGSystemProperty()I

    move-result p1

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerAlarmReceiver(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerUserPresentReceiverIfLocked(I)V

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->opListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->setInitialState(Landroid/content/Context;ILandroid/app/AppOpsManager$OnOpChangedInternalListener;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "KnoxGuard is unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bindAndSetToLockScreen()V
    .locals 3

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "bindAndSetToLockScreen"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/ILockSettings;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setRemoteLockToLockscreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static deserialize([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 5

    const-string p1, "Deserialize inputstream failed IO exception"

    const-string v0, "Deserialize failed IO exception"

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_9

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_6

    :catch_4
    move-exception v3

    move-object p0, v1

    goto :goto_1

    :catch_5
    move-exception v3

    move-object p0, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    goto :goto_6

    :catch_6
    move-exception v3

    move-object p0, v1

    move-object v2, p0

    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    if-eqz p0, :cond_3

    goto :goto_0

    :catch_8
    move-exception v3

    move-object p0, v1

    move-object v2, p0

    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_4

    :catch_9
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    :goto_5
    return-object v1

    :catchall_2
    move-exception v1

    :goto_6
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_7

    :catch_a
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_7
    if-eqz p0, :cond_5

    :try_start_a
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_8

    :catch_b
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_8
    throw v1

    :cond_6
    :goto_9
    return-object v1
.end method

.method public static getByteArrayResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getByteArrayResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static getByteArrayResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)[B
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setTaError(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)V

    :cond_0
    if-eqz p0, :cond_1

    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getClientHealth()I
    .locals 3

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClientHealth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientHealth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientHealth:I

    return v0
.end method

.method public static getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    move-result p0

    return p0
.end method

.method public static getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setTaError(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)V

    :cond_0
    if-eqz p0, :cond_2

    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-eqz p1, :cond_1

    const/16 v0, 0x303

    if-ne p1, v0, :cond_2

    :cond_1
    iget p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static getKGLockObject()Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;
    .locals 5

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "getKGVaultData"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getLockObjectRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getByteArrayResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)[B

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    array-length v3, v2

    if-nez v3, :cond_1

    const-string v2, "No data"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-class v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;

    invoke-static {v2, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKGVaultData error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public static getLockoutDelayTime(I)J
    .locals 2

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    const-wide/32 v0, 0x493e0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const-wide/32 v0, 0xdbba0

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3

    const-wide/32 v0, 0x36ee80

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    if-lt p0, v0, :cond_4

    const-wide/32 v0, 0x5265c00

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static getRemoteLockInfoForRetry()Lcom/android/internal/widget/RemoteLockInfo;
    .locals 3

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteLockInfoForRetry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    return-object v0
.end method

.method public static getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setTaError(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)V

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->getStr()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTAVersion()I
    .locals 4

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAVersion:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setTAVersion(I)V

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTAVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TA version not converted to int: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAVersion:I

    return v0
.end method

.method public static getTaErrorCode()I
    .locals 1

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static initializeFailureCount()V
    .locals 4

    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeFailureCount error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFailureCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V
    .locals 7

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public static registerUserPresentReceiver()V
    .locals 4

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "call registerUserPresentReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unregisterUserPresentReceiver()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;-><init>()V

    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->userPresentReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x5f5e101

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->userPresentReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static registerUserPresentReceiverIfLocked(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerUserPresentReceiver()V

    :cond_0
    return-void
.end method

.method public static setActionList(Ljava/util/List;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mActionList:Ljava/util/List;

    return-void
.end method

.method public static setBundle(Landroid/os/Bundle;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static setClientHealth(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClientHealth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientHealth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientHealth:I

    return-void
.end method

.method public static setClientName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientName:Ljava/lang/String;

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static setEmailAddress(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public static setFailureCount(I)V
    .locals 0

    sput p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    return-void
.end method

.method public static setIntentRelayReceiver(Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->intentRelayReceiver:Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;

    return-void
.end method

.method public static setLockResult(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    sput p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockResult:I

    return-void
.end method

.method public static setMessage(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public static setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public static setPreFix(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPreFix:Ljava/lang/String;

    return-void
.end method

.method public static setRemoteLockToLockscreen(Z)V
    .locals 9

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRemoteLockToLockscreen"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    const-string v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    if-gez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->initializeFailureCount()V

    :cond_1
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getLockoutDelayTime(I)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kgvDelayTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getKGLockObject()Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getClientName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setClientName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setEmailAddress(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getSkipPin()Z

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setSkipPin(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getSkipSupport()Z

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setSkipSupport(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setBundle(Landroid/os/Bundle;)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isTabletDevice()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Device Services"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    :try_start_1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const v6, 0x104068c

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const v7, 0x104068a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v3, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const v6, 0x104068b

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const v7, 0x1040688

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v3, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v6, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const/4 v7, 0x3

    invoke-direct {v6, v7, p0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    sget-object v7, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, ""

    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientName:Ljava/lang/String;

    :cond_5
    :goto_1
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPhoneNumber:Ljava/lang/String;

    if-nez v6, :cond_6

    move-object v6, v8

    :cond_6
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mEmailAddress:Ljava/lang/String;

    if-nez v6, :cond_7

    move-object v6, v8

    :cond_7
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mMessage:Ljava/lang/String;

    if-eqz v6, :cond_9

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    sget-object v3, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mMessage:Ljava/lang/String;

    :cond_9
    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipPin:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipSupport:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipSupportContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {v1, v0, p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->performLockscreen(Lcom/android/internal/widget/ILockSettings;Lcom/android/internal/widget/RemoteLockInfo;Z)Z

    move-result v1

    if-eqz p0, :cond_a

    if-nez v1, :cond_a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->startRetryLockAlarm(Landroid/content/Context;Lcom/android/internal/widget/RemoteLockInfo;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_a
    :goto_3
    return-void
.end method

.method public static setRetryRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRetryRemoteLockInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    return-void
.end method

.method public static setSettedInterface(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSettedInterface:Ljava/lang/String;

    return-void
.end method

.method public static setSkipPin(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipPin:Z

    return-void
.end method

.method public static setSkipSupport(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipSupport:Z

    return-void
.end method

.method public static setTAVersion(I)V
    .locals 0

    sput p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAVersion:I

    return-void
.end method

.method public static setTaError(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    return-void
.end method

.method public static setUserPresentReceiverEnabled(Z)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerUserPresentReceiver()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unregisterUserPresentReceiver()V

    :goto_0
    return-void
.end method

.method public static unbindFromLockScreen()V
    .locals 3

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unbindFromLockScreen"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/ILockSettings;->unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setRemoteLockToLockscreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static unlockCompleted()V
    .locals 5

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnlockedByPasscode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.kgclient.android.intent.action.MANUAL_UNLOCK"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/knoxguard/service/IntentRelayManager;->sendRequestedIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public static unregisterUserPresentReceiver()V
    .locals 3

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "call unregisterUserPresentReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->userPresentReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->userPresentReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addPackagesToClearCacheBlockList(Ljava/util/List;)Z
    .locals 0

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call addPackagesToClearCacheBlockList"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToForceStopBlockList(Ljava/util/List;)Z
    .locals 0

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call addPackagesToForceStopBlockList"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public allowFirmwareRecovery(Z)Z
    .locals 0

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call allowFirmwareRecovery"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public allowOTAUpgrade(Z)Z
    .locals 0

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call allowOTAUpgrade"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public allowSafeMode(Z)Z
    .locals 0

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call allowSafeMode"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public bindToLockScreen()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    return-void
.end method

.method public callKGsv()V
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call Knox Guard sv"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call dump"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " state: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

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

    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "data"

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

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public generateHotpDHRequest()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "generateHotpDHRequest"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->generateHotpDHRequestRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClientData()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getClientData"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getClientDataRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getConnectivityManagerService()Landroid/net/ConnectivityManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "call getConnectivityManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public getHotpChallenge()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getHotpChallenge"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getHotpChallengeRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKGID()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getKGID"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getKGIDRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKGPolicy()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getKGPolicy"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getKGPolicyRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKGServiceInfo()Landroid/os/Bundle;
    .locals 3

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getKGServiceInfo"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result p0

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkKGClientIntegrity(Landroid/content/Context;I)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_health"

    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientHealth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "lock_result"

    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockResult:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "integrity_result"

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->getFailedIntegrityResult(Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "is_maintenance_mode_supported"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getKGServiceVersion()I
    .locals 0

    const p0, 0xa21fe81

    return p0
.end method

.method public getLockAction()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getLockAction"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getLockActionRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "call getNetworkManagementService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getNonce"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getNonceRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p1, "getNonce null parameter!"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPBAUniqueNumber()Ljava/lang/String;
    .locals 10

    const-string p0, "/sys/block/mmcblk0/device/cid"

    const-string v0, "/sys/block/mmcblk0/device/unique_number"

    const-string v1, "/sys/class/sec/mmc/un"

    const-string v2, "/sys/class/scsi_host/host0/unique_number"

    const-string v3, "/sys/class/sec/ufs/un"

    sget-object v4, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v4, v5}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v4, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v5, "call getPBAUniqueNumber"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    const-string v8, ""

    if-ne v6, v7, :cond_0

    :try_start_1
    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_0
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v7, :cond_1

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v7, :cond_2

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v7, :cond_3

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v7, :cond_c

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/sys/block/mmcblk0/device/name"

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_9

    const-string v9, "15"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v2, "02"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_8

    const-string v2, "45"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const-string v2, "11"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "90"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    const-string v2, "FE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    :goto_0
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v2, 0x5

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    move-object v0, v8

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x1c

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :cond_c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTAError()I
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTaErrorCode()I

    move-result p0

    return p0
.end method

.method public getTAInfo(I)Ljava/lang/String;
    .locals 2

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTAInfo: infoFlag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTAState()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTAStateSetError(Z)I

    move-result p0

    return p0
.end method

.method public getTAStateSetError(Z)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAStateRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    move-result p0

    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTAState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    if-ltz p0, :cond_0

    if-le p0, p1, :cond_1

    :cond_0
    move p0, p1

    :cond_1
    return p0
.end method

.method public isSkipSupportContainerSupported()Z
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call isSkipSupportContainerSupported"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSkipSupportContainerSupported()Z

    move-result p0

    return p0
.end method

.method public isVpnExceptionRequired()Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string p0, "knox.kg.state"

    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v4, v2, v3

    invoke-static {p0, v4}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTAVersion()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isOtpBitFusedWithActiveAndStateIsNotCompleted(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v2, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isOtpBitFusedWithActive()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    sget-object v3, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call isVpnExceptionRequired, state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , result : "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "lockScreen"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setClientName(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setPhoneNumber(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setEmailAddress(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setMessage(Ljava/lang/String;)V

    invoke-static {p6}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setSkipPin(Z)V

    invoke-static {p7}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setSkipSupport(Z)V

    invoke-static {p8}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setBundle(Landroid/os/Bundle;)V

    invoke-static/range {p1 .. p8}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->lockScreenRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    return p0
.end method

.method public final makeRotReturn(II)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "<%d>:<%d>"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "provisionCert"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string/jumbo p1, "provisionCert failed: input null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final registerAlarmReceiver(Landroid/content/Context;)V
    .locals 2

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call registerAlarmReceiver"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->needClientHealthCheck()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.knoxguard.CLIENT_HEALTH_CHECK"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knoxguard.RETRY_LOCK"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knoxguard/service/receiver/AlarmReceiver;

    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/receiver/AlarmReceiver;-><init>()V

    const/4 v1, 0x4

    invoke-static {p1, v0, p0, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    return-void
.end method

.method public registerIntent(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unRegisterIntent()V

    new-instance p0, Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setIntentRelayReceiver(Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setPreFix(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setActionList(Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->intentRelayReceiver:Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;

    invoke-static {p1, p2, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "KG registerIntent"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerReceiver(Landroid/content/Context;)V
    .locals 6

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call registerReceiver"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;-><init>()V

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const/4 v4, 0x0

    const-string/jumbo v5, "package"

    if-eqz v1, :cond_0

    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.kgclient"

    invoke-virtual {p0, v1, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :goto_0
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x5f5e101

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v5, "com.android.systemui"

    invoke-virtual {p0, v5, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call removeActiveAdmin"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public final resetKnoxGuardExemptRule(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "call resetKnoxGuardExemptRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSettedInterface:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearKnoxGuardExemptRule - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSettedInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSettedInterface:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0, p1}, Landroid/os/INetworkManagementService;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setSettedInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

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
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "resetRPMB"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->resetRPMBRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    return p0
.end method

.method public resetRPMB2(Ljava/lang/String;)I
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "resetRPMB2"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->resetRPMBRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    return p0
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call revokeRuntimePermission"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;)V
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call setActiveAdmin"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAdminRemovable(Z)Z
    .locals 0

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call setAdminRemovable"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setAirplaneMode(Z)V
    .locals 4

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call setAirplaneMode"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

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

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call setApplicationUninstallationDisabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setCheckingState()I
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setCheckingState"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->userCheckingRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    return p0
.end method

.method public setClientData(Ljava/lang/String;)I
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setClientData"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->setClientDataRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    return p0
.end method

.method public setClientHealthOK()V
    .locals 2

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setClientHealthOK"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result p0

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientHealth:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkKGClientIntegrity(Landroid/content/Context;I)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    move-result-object p0

    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setRemoteLockToLockscreen(Z)V

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setClientHealth(I)V

    return-void
.end method

.method public setKnoxGuardExemptRule(Z)V
    .locals 8

    const-string v0, ", "

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v2, "call setKnoxGuardExemptRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v2, v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-wide/16 v3, -0x1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->resetKnoxGuardExemptRule(I)V

    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo p0, "setKnoxGuardExemptRule - There is no active network"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setKnoxGuardExemptRule - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1, v2}, Landroid/os/INetworkManagementService;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setSettedInterface(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

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

    :cond_1
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    .locals 16

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "call setRemoteLockToLockscreen"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    invoke-static/range {v2 .. v15}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V

    return-void
.end method

.method public setRemoteLockToLockscreenWithSkipSupport(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V
    .locals 17

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "call setRemoteLockToLockscreen with skipSupportContainer"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    invoke-static/range {v2 .. v16}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call setRuntimePermission"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public shouldBlockCustomRom()Z
    .locals 7

    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, p0, v0

    const-string v2, "knox.kg.state"

    invoke-static {v2, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTAVersion()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-lt v2, v6, :cond_0

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isOtpBitFusedWithActiveAndStateIsNotCompleted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, p0, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, p0, v6

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    aget-object v0, p0, v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, p0, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object p0, p0, v6

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isOtpBitFusedWithActive()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :cond_2
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call shouldBlockCustomRom, state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public showInstallmentStatus()Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string p0, "knox.kg.state"

    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v3, v2, v3

    invoke-static {p0, v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTAVersion()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isOtpBitFusedWithActiveAndStateIsNotCompleted(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v2, v2, v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isOtpBitFusedWithActive()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    sget-object v3, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call showInstallmentStatus, state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , result : "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public unRegisterIntent()V
    .locals 2

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setActionList(Ljava/util/List;)V

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->intentRelayReceiver:Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setIntentRelayReceiver(Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "KG unRegisterIntent"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unlockScreen()I
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "unlockScreen"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unbindFromLockScreen()V

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->unlockScreenRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setFailureCount(I)V

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    return p0
.end method

.method public verifyCompleteToken(Ljava/lang/String;)I
    .locals 2

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyCompleteTokenRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyCompleteToken result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unbindFromLockScreen()V

    :cond_0
    return p0
.end method

.method public verifyHOTPDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {p1, p2, p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHotpDHChallengeRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "verifyHOTPDHChallenge result : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    return p0
.end method

.method public verifyHOTPPin(Ljava/lang/String;)I
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyHOTPPin"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setFailureCount(I)V

    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    return p0
.end method

.method public verifyHOTPsecret(Ljava/lang/String;)I
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyHOTPsecret"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPsecretRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    return p0
.end method

.method public verifyKgRot()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "verifyKgRot"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.samsung.android.kgclient"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSignatures(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v1, 0x1772

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v1, 0x1771

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    :goto_0
    const/16 v1, 0x1770

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move v2, v0

    :goto_2
    if-eqz v2, :cond_4

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyKgRotRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const/16 v2, 0x1773

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v2, "Error verifyKgRot - "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, p0

    :cond_4
    :goto_3
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RoT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyPolicy"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyPolicyRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyRegistrationInfo"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyRegistrationInfoRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    return-object p0
.end method
