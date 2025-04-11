.class public abstract Lcom/android/server/location/provider/DelegateLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "DelegateLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/provider/AbstractLocationProvider$Listener;


# instance fields
.field public final mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

.field public final mInitializationLock:Ljava/lang/Object;

.field public mInitialized:Z


# direct methods
.method public static synthetic $r8$lambda$6qA_DXH1SfX77QFFZbOawB5bgH4(Lcom/android/server/location/provider/DelegateLocationProvider;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/provider/DelegateLocationProvider;->lambda$initializeDelegate$0(Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TqAFbBo8CtMGUp4wkhnbnR8IVMU(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/location/provider/DelegateLocationProvider;->lambda$onStateChanged$1(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 2

    const/4 v0, 0x0

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 37
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitializationLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    .line 46
    iput-object p2, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    return-void
.end method

.method private synthetic lambda$initializeDelegate$0(Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/server/location/provider/LocationProviderController;->setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onStateChanged$1(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 0

    .line 0
    return-object p0
.end method


# virtual methods
.method public initializeDelegate()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 57
    new-instance v1, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/DelegateLocationProvider;)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 58
    iput-boolean v2, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 112
    iget-object p0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/location/provider/LocationProviderController;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFlush(Ljava/lang/Runnable;)V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 106
    iget-object p0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/location/provider/LocationProviderController;->flush(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReportLocation(Landroid/location/LocationResult;)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/android/server/location/provider/DelegateLocationProvider;->waitForInitialization()V

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    return-void
.end method

.method public onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/server/location/provider/DelegateLocationProvider;->waitForInitialization()V

    .line 76
    new-instance p1, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public final waitForInitialization()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 70
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
