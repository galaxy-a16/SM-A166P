.class public final Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"


# instance fields
.field public mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public static synthetic $r8$lambda$2DTWkSfGqKLTIjnAeq_vidiYD1E(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/widget/ILockSettings;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->lambda$setPassword$0(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/widget/ILockSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5TKM9ZhH8Kzl0LAjw29T-J9tFh8(Ljava/lang/String;J[BILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Boolean;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->lambda$setPasswordWithToken$2(Ljava/lang/String;J[BILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t-vEnJhNWjP-ONFBr8MN5XFfwso(ILcom/android/internal/widget/ILockSettings;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->lambda$clearLock$1(ILcom/android/internal/widget/ILockSettings;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    return-void
.end method

.method public static synthetic lambda$clearLock$1(ILcom/android/internal/widget/ILockSettings;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    invoke-interface {p1, v0, v1, p0}, Lcom/android/internal/widget/ILockSettings;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$setPassword$0(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/widget/ILockSettings;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    invoke-interface {p3, p0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$setPasswordWithToken$2(Ljava/lang/String;J[BILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Boolean;
    .locals 6

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    move-object v0, p5

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockSettingsInternal;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change password for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misVirtualUserId(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->setPassword(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check password for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misVirtualUserId(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const/4 v0, 0x4

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mcheckCredential(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public clean(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misVirtualUserId(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {p1}, Lcom/android/server/knox/dar/FileUtil;->getUserSystemDir(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "SdpManagerImpl.VirtualLock"

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clean - sp state path found with user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, v2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mremoveDirectoryRecursive(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clean - sp state path not found with user "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public clearLock(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear lock for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misVirtualUserId(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mgetLockSettings(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public establish(Ljava/lang/String;[BI)J
    .locals 11

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misVirtualUserId(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->clearLock(I)V

    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->prepare(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->setResetPasswordToken([BI)J

    move-result-wide v9

    move-object v3, p0

    move-object v4, p1

    move-wide v5, v9

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->setPasswordWithToken(Ljava/lang/String;J[BI)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "establish - sp based credential established for user %d with %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl.VirtualLock"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v9

    :cond_1
    return-wide v1
.end method

.method public prepare(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misVirtualUserId(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/server/knox/dar/FileUtil;->getUserSystemDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "prepare - failed to create sp state path for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl.VirtualLock"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$minitInternalEngineInfo(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set password for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misVirtualUserId(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mgetLockSettings(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public setPasswordWithToken(Ljava/lang/String;J[BI)Z
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set password with token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0, p5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misVirtualUserId(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mgetLockSettingsInternal(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;

    move-result-object p0

    new-instance v8, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda0;

    move-object v2, v8

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;J[BI)V

    invoke-virtual {p0, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public setResetPasswordToken([BI)J
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set reset password token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misVirtualUserId(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verify token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerImpl.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0, p4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$misVirtualUserId(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mverifyToken(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method
