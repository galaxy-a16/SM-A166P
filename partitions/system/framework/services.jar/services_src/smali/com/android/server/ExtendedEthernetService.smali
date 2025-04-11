.class public Lcom/android/server/ExtendedEthernetService;
.super Lcom/android/server/SystemService;
.source "ExtendedEthernetService.java"


# instance fields
.field public final mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/ExtendedEthernetService;->mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 45
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService;->mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/ExtendedEthernetServiceImpl;->handleSystemReady()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "ExtendedEthernetService"

    const-string v1, "Registering extendedethernetservice"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "extendedethernetservice"

    .line 39
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetService;->mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
