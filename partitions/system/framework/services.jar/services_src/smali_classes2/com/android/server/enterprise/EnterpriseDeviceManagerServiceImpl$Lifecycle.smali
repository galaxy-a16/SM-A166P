.class public final Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;
.super Lcom/android/server/SystemService;
.source "EnterpriseDeviceManagerServiceImpl.java"


# instance fields
.field public mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 329
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 330
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$msystemReady(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    return-void
.end method

.method public onCleanupUser(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "enterprise_policy"

    .line 337
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(I)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$monStartUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    .line 357
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$mupdateCurrentUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    return-void
.end method

.method public onStopUser(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$mupdateCurrentUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 0

    .line 0
    return-void
.end method
