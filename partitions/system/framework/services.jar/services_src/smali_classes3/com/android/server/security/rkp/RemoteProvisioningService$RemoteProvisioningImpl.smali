.class public final Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;
.super Landroid/security/rkp/IRemoteProvisioning$Stub;
.source "RemoteProvisioningService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/rkp/RemoteProvisioningService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-direct {p0}, Landroid/security/rkp/IRemoteProvisioning$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/security/rkp/RemoteProvisioningService;Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;-><init>(Lcom/android/server/security/rkp/RemoteProvisioningService;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "RemoteProvisionSysSvc"

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;

    invoke-direct {p0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getRegistration(Ljava/lang/String;Landroid/security/rkp/IGetRegistrationCallback;)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUidOrThrow()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    :try_start_0
    const-string v0, "RemoteProvisionSysSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegistration("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/security/rkp/RemoteProvisioningService;->-$$Nest$sfgetCREATE_REGISTRATION_TIMEOUT()Ljava/time/Duration;

    move-result-object v3

    new-instance v5, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;

    invoke-direct {v5, v4, p2}, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;-><init>(Ljava/util/concurrent/Executor;Landroid/security/rkp/IGetRegistrationCallback;)V

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/security/rkp/service/RegistrationProxy;->createAsync(Landroid/content/Context;ILjava/lang/String;Ljava/time/Duration;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    new-instance v0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;

    invoke-direct {v0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;-><init>()V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
