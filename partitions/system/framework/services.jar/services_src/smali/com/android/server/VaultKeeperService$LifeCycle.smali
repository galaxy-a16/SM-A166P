.class public Lcom/android/server/VaultKeeperService$LifeCycle;
.super Lcom/android/server/SystemService;
.source "VaultKeeperService.java"


# instance fields
.field public mVaultKeeperService:Lcom/android/server/VaultKeeperService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 4

    const/16 v0, 0x64

    if-eq p1, v0, :cond_6

    const/16 v1, 0x1e0

    if-eq p1, v1, :cond_5

    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_4

    const/16 v1, 0x208

    if-eq p1, v1, :cond_3

    const/16 v1, 0x226

    if-eq p1, v1, :cond_2

    const/16 v1, 0x258

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_0

    const-string v1, "Unknown"

    goto :goto_0

    :cond_0
    const-string v1, "PHASE_BOOT_COMPLETED"

    goto :goto_0

    :cond_1
    const-string v1, "PHASE_THIRD_PARTY_APPS_CAN_START"

    goto :goto_0

    :cond_2
    const-string v1, "PHASE_ACTIVITY_MANAGER_READY"

    goto :goto_0

    :cond_3
    const-string v1, "PHASE_DEVICE_SPECIFIC_SERVICES_READY"

    goto :goto_0

    :cond_4
    const-string v1, "PHASE_SYSTEM_SERVICES_READY"

    goto :goto_0

    :cond_5
    const-string v1, "PHASE_LOCK_SETTINGS_READY"

    goto :goto_0

    :cond_6
    const-string v1, "PHASE_WAIT_FOR_DEFAULT_DISPLAY"

    .line 86
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VaultKeeperService$Lifecycle"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_7

    .line 89
    iget-object p0, p0, Lcom/android/server/VaultKeeperService$LifeCycle;->mVaultKeeperService:Lcom/android/server/VaultKeeperService;

    invoke-virtual {p0}, Lcom/android/server/VaultKeeperService;->systemReady()V

    :cond_7
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "VaultKeeperService$Lifecycle"

    const-string/jumbo v1, "onStart()"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Lcom/android/server/VaultKeeperService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/VaultKeeperService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/VaultKeeperService$LifeCycle;->mVaultKeeperService:Lcom/android/server/VaultKeeperService;

    const-string v1, "VaultKeeperService"

    .line 55
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
