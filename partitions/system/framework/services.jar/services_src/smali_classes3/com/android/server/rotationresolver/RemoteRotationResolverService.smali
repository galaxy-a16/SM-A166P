.class Lcom/android/server/rotationresolver/RemoteRotationResolverService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteRotationResolverService.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mIdleUnbindTimeoutMs:J


# direct methods
.method public static synthetic $r8$lambda$6lJcwQF5EGpRQmKUfqPe5Firpms(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/service/rotationresolver/IRotationResolverService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->lambda$resolveRotation$0(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/service/rotationresolver/IRotationResolverService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RAj7C9O8ctkG_MZcBQZ_ueltyDY(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->lambda$resolveRotation$1(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IJ)V
    .locals 8

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.rotationresolver.RotationResolverService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const v5, 0x4001000

    new-instance v7, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda2;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    .line 59
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 64
    iput-wide p4, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->mIdleUnbindTimeoutMs:J

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public static synthetic lambda$resolveRotation$0(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/service/rotationresolver/IRotationResolverService;)V
    .locals 0

    .line 78
    invoke-static {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->-$$Nest$fgetmIRotationResolverCallback(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)Landroid/service/rotationresolver/IRotationResolverCallback;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Landroid/service/rotationresolver/IRotationResolverService;->resolveRotation(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;)V

    return-void
.end method

.method public static synthetic lambda$resolveRotation$1(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V
    .locals 3

    .line 82
    invoke-static {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->-$$Nest$fgetmLock(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 83
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCallbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    .line 85
    sget-object v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->TAG:Ljava/lang/String;

    const-string v2, "Trying to cancel the remote request. Reason: Timed out."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    .line 88
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public resolveRotation(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V
    .locals 3

    .line 77
    iget-object v0, p1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 78
    new-instance v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;Landroid/service/rotationresolver/RotationResolutionRequest;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->getJobHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V

    iget-object p1, p1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 89
    invoke-virtual {p1}, Landroid/service/rotationresolver/RotationResolutionRequest;->getTimeoutMillis()J

    move-result-wide v1

    .line 81
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
