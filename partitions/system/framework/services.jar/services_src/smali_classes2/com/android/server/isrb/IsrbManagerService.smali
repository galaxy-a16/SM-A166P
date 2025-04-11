.class public Lcom/android/server/isrb/IsrbManagerService;
.super Lcom/android/server/SystemService;
.source "IsrbManagerService.java"


# instance fields
.field public final mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/isrb/IsrbManagerService;->mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerService;->mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->systemRunning()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 55
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerService;->mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->systemBootComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "isrb"

    .line 47
    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerService;->mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
