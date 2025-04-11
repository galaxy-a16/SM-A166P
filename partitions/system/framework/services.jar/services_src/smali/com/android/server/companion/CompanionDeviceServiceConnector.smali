.class Lcom/android/server/companion/CompanionDeviceServiceConnector;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "CompanionDeviceServiceConnector.java"


# static fields
.field public static volatile sServiceThread:Lcom/android/server/ServiceThread;


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private mIsPrimary:Z

.field private mListener:Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$XDBz48xhupV3Rp362pShmd6DfcQ(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->lambda$postOnDeviceAppeared$0(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v7y2R5rlIaWn16ZdEJpPlgNxGio(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->lambda$postOnDeviceDisappeared$1(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/ComponentName;IZ)V
    .locals 6

    .line 93
    invoke-static {p3}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->buildIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 94
    iput p2, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mUserId:I

    .line 95
    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mComponentName:Landroid/content/ComponentName;

    .line 96
    iput-boolean p5, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mIsPrimary:Z

    return-void
.end method

.method public static buildIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.companion.CompanionDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getServiceThread()Lcom/android/server/ServiceThread;
    .locals 4

    .line 195
    sget-object v0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_1

    .line 196
    const-class v0, Lcom/android/server/companion/CompanionDeviceManagerService;

    monitor-enter v0

    .line 197
    :try_start_0
    sget-object v1, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "companion-device-service-connector"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    .line 200
    sget-object v1, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 202
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 204
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    return-object v0
.end method

.method public static synthetic lambda$postOnDeviceAppeared$0(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .locals 0

    .line 107
    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public static synthetic lambda$postOnDeviceDisappeared$1(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .locals 0

    .line 114
    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;ILandroid/content/ComponentName;ZZ)Lcom/android/server/companion/CompanionDeviceServiceConnector;
    .locals 6

    if-eqz p3, :cond_0

    const/high16 p3, 0x10000000

    goto :goto_0

    :cond_0
    const/high16 p3, 0x10000

    :goto_0
    move v4, p3

    .line 87
    new-instance p3, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-object v0, p3

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/CompanionDeviceServiceConnector;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;IZ)V

    return-object p3
.end method


# virtual methods
.method public binderAsInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;
    .locals 0

    .line 167
    invoke-static {p1}, Landroid/companion/ICompanionDeviceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->binderAsInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;

    move-result-object p0

    return-object p0
.end method

.method public binderDied()V
    .locals 3

    .line 153
    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionServiceConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mListener:Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;

    if-eqz v0, :cond_0

    .line 161
    iget v1, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mUserId:I

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;->onBindingDied(ILjava/lang/String;Lcom/android/server/companion/CompanionDeviceServiceConnector;)V

    :cond_0
    return-void
.end method

.method public getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getJobHandler()Landroid/os/Handler;
    .locals 0

    .line 180
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public isPrimary()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mIsPrimary:Z

    return p0
.end method

.method public onServiceConnectionStatusChanged(Landroid/companion/ICompanionDeviceService;Z)V
    .locals 1

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onServiceConnection_StatusChanged() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " connected="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_CompanionServiceConnector"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 0

    .line 45
    check-cast p1, Landroid/companion/ICompanionDeviceService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->onServiceConnectionStatusChanged(Landroid/companion/ICompanionDeviceService;Z)V

    return-void
.end method

.method public postOnDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postOnDeviceAppeared() id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionServiceConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda0;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public postOnDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postOnDeviceDisappeared() id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionServiceConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda2;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public postUnbind()V
    .locals 4

    .line 131
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->getJobHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/CompanionDeviceServiceConnector;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setListener(Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mListener:Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;

    return-void
.end method
