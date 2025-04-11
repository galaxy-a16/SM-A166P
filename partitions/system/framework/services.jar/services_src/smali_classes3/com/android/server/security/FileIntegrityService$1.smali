.class public Lcom/android/server/security/FileIntegrityService$1;
.super Landroid/security/IFileIntegrityService$Stub;
.source "FileIntegrityService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/FileIntegrityService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/FileIntegrityService;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-direct {p0}, Landroid/security/IFileIntegrityService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkCallerPermission(Ljava/lang/String;)V
    .locals 5

    .line 116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 117
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 118
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 119
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x0

    .line 120
    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/16 v1, 0x42

    .line 133
    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 136
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller should have INSTALL_PACKAGES or REQUEST_INSTALL_PACKAGES"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not own package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isApkVeritySupported()Z
    .locals 0

    .line 82
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result p0

    return p0
.end method

.method public isAppSourceCertificateTrusted([BLjava/lang/String;)Z
    .locals 2

    .line 88
    invoke-virtual {p0, p2}, Lcom/android/server/security/FileIntegrityService$1;->checkCallerPermission(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 91
    :try_start_0
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "FileIntegrityService"

    const-string p1, "Received a null certificate"

    .line 95
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-static {v0}, Lcom/android/server/security/FileIntegrityService;->-$$Nest$fgetmTrustedCertificates(Lcom/android/server/security/FileIntegrityService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :try_start_1
    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-static {p0}, Lcom/android/server/security/FileIntegrityService;->-$$Nest$fgetmTrustedCertificates(Lcom/android/server/security/FileIntegrityService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/security/FileIntegrityService;->-$$Nest$smtoCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 100
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "FileIntegrityService"

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to convert the certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 111
    new-instance v0, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;-><init>(Lcom/android/server/security/FileIntegrityService;Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand-IA;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 112
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method
