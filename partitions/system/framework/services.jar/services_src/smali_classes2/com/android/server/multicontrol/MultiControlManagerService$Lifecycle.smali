.class public final Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "MultiControlManagerService.java"


# instance fields
.field public mService:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    if-eqz p0, :cond_0

    .line 101
    invoke-static {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$monBootPhase(Lcom/android/server/multicontrol/MultiControlManagerService;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 94
    new-instance v0, Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/multicontrol/MultiControlManagerService;-><init>(Landroid/content/Context;Lcom/android/server/multicontrol/MultiControlManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    const-string/jumbo v1, "multicontrol"

    .line 95
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$monUserStarting(Lcom/android/server/multicontrol/MultiControlManagerService;I)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$monUserStopped(Lcom/android/server/multicontrol/MultiControlManagerService;I)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$monUserStopping(Lcom/android/server/multicontrol/MultiControlManagerService;I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$monUserSwitching(Lcom/android/server/multicontrol/MultiControlManagerService;I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$monUserUnlocking(Lcom/android/server/multicontrol/MultiControlManagerService;I)V

    return-void
.end method
