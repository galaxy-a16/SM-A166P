.class public Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# direct methods
.method public static synthetic $r8$lambda$V87c0ji_4Z-GcxmW7FsscjqHlss(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->lambda$onUserUnlocking$0(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1830
    new-instance v0, Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    .line 1835
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1836
    sput-object p2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    return-void
.end method

.method public static synthetic lambda$onUserUnlocking$0(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1851
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->-$$Nest$mupdateDefaultBackupUserIdIfNeeded(Lcom/android/server/backup/BackupManagerService;)V

    .line 1852
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V

    .line 1853
    sget-object p0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/backup/BackupManagerService;->-$$Nest$fputmHasFirstUserUnlockedSinceBoot(Lcom/android/server/backup/BackupManagerService;Z)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    const-string v0, "backup"

    .line 1841
    sget-object v1, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1859
    sget-object p0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->onStopUser(I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1849
    sget-object p0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    new-instance v0, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public publishService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1864
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
