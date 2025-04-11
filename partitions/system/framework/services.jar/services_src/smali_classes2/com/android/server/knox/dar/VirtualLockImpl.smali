.class public final Lcom/android/server/knox/dar/VirtualLockImpl;
.super Ljava/lang/Object;
.source "VirtualLockImpl.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

.field public mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field public final mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;


# direct methods
.method public static synthetic $r8$lambda$Z4eed_Oh0f_pXlMQZdO7KjqieU0(Lcom/android/internal/widget/LockscreenCredential;J[BILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/knox/dar/VirtualLockImpl;->lambda$resetPasswordWithToken$0(Lcom/android/internal/widget/LockscreenCredential;J[BILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGateKeeperService(Lcom/android/server/knox/dar/VirtualLockImpl;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmGateKeeperService(Lcom/android/server/knox/dar/VirtualLockImpl;Landroid/service/gatekeeper/IGateKeeperService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 40
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 42
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public static synthetic lambda$resetPasswordWithToken$0(Lcom/android/internal/widget/LockscreenCredential;J[BILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Boolean;
    .locals 6

    move-object v0, p5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    .line 167
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockSettingsInternal;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p0

    .line 166
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearResetPasswordToken(I)Z
    .locals 6

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear Reset password token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualLockImpl"

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 115
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const-string/jumbo v3, "vl.rst.token.handle"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(ILjava/lang/String;J)J

    move-result-wide v2

    .line 119
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/knox/dar/VirtualLockImpl;->clearResetPasswordTokenInternal(JI)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    throw p0
.end method

.method public final clearResetPasswordTokenInternal(JI)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 127
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const-string/jumbo p1, "vl.rst.token.handle"

    invoke-virtual {p0, p3, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->delete(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAvailableUserId()I
    .locals 1

    const/16 v0, 0x3e8

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getAvailableUserId(I)I

    move-result p0

    return p0
.end method

.method public getAvailableUserId(I)I
    .locals 5

    .line 68
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    move-result v0

    :goto_0
    add-int/lit8 v1, p1, 0xa

    if-ge p1, v1, :cond_2

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    return p1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    :cond_2
    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    const/16 p1, 0x1f4

    .line 82
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    add-int/lit16 p0, p0, 0x5dc

    return p0
.end method

.method public final declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4

    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 191
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    .line 194
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 197
    :try_start_2
    new-instance v2, Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;

    invoke-direct {v2, p0, v1}, Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;-><init>(Lcom/android/server/knox/dar/VirtualLockImpl;Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient-IA;)V

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "VirtualLockImpl"

    const-string v3, " Unable to register death recipient"

    .line 199
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    :goto_0
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_4
    const-string v0, "VirtualLockImpl"

    const-string v2, "Unable to acquire GateKeeperService"

    .line 205
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getLockSettingsInternal()Ljava/util/Optional;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    if-nez v0, :cond_0

    .line 176
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    iput-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    .line 178
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getReservedUserIdForSystem()I
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string v1, "getReservedUserIdForSystem"

    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const-string/jumbo v0, "vl.reserved.userid"

    const/16 v1, -0x2710

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isResetPasswordTokenActive(I)Z
    .locals 6

    .line 135
    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 138
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const-string/jumbo v3, "vl.rst.token.handle"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(ILjava/lang/String;J)J

    move-result-wide v2

    .line 142
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    throw p0
.end method

.method public reserveUserIdForSystem()I
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string/jumbo v1, "reserveUserIdForSystem"

    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    move-result v0

    .line 48
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    move-result v1

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    return v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getAvailableUserId()I

    move-result v0

    .line 52
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const/4 v1, 0x0

    const-string/jumbo v2, "vl.reserved.userid"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInt(ILjava/lang/String;I)V

    return v0
.end method

.method public resetPasswordWithToken(Ljava/lang/String;[BI)Z
    .locals 10

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset password with token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualLockImpl"

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {p3}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const-string/jumbo v1, "vl.rst.token.handle"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(ILjava/lang/String;J)J

    move-result-wide v6

    .line 157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 159
    :try_start_0
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->isNumericOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    goto :goto_1

    .line 164
    :cond_2
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    :goto_1
    move-object v5, p1

    .line 166
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getLockSettingsInternal()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;

    move-object v4, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/LockscreenCredential;J[BI)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 168
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    throw p0
.end method

.method public setResetPasswordToken([BI)Z
    .locals 9

    const-string/jumbo v0, "vl.rst.token.handle"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set reset password token for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VirtualLockImpl"

    invoke-static {v2, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_2

    .line 90
    array-length v1, p1

    const/16 v3, 0x20

    if-lt v1, v3, :cond_2

    .line 93
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    const-wide/16 v5, 0x0

    invoke-virtual {v1, p2, v0, v5, v6}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(ILjava/lang/String;J)J

    move-result-wide v7

    .line 98
    invoke-virtual {p0, v7, v8, p2}, Lcom/android/server/knox/dar/VirtualLockImpl;->clearResetPasswordTokenInternal(JI)Z

    .line 100
    iget-object v1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 101
    invoke-virtual {v7}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getEscrowTokenStateChangeCallback()Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    move-result-object v7

    .line 100
    invoke-virtual {v1, p1, p2, v7}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v7

    .line 102
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-virtual {p0, p2, v0, v7, v8}, Lcom/android/server/knox/dar/DarDatabaseCache;->putLong(ILjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p0, v7, v5

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    .line 106
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    throw p0

    .line 91
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token must be at least 32-byte long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
