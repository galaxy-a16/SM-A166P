.class public Lcom/android/server/sensors/SensorService$ProximityListenerProxy;
.super Ljava/lang/Object;
.source "SensorService.java"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mListener:Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;


# direct methods
.method public static synthetic $r8$lambda$qyADbFry57x5b6E0JNQgzCHbUkc(Lcom/android/server/sensors/SensorService$ProximityListenerProxy;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->lambda$onProximityActive$0(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 170
    iput-object p2, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mListener:Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;

    return-void
.end method

.method private synthetic lambda$onProximityActive$0(Z)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mListener:Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;

    invoke-interface {p0, p1}, Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;->onProximityActive(Z)V

    return-void
.end method


# virtual methods
.method public onProximityActive(Z)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/sensors/SensorService$ProximityListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sensors/SensorService$ProximityListenerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensors/SensorService$ProximityListenerProxy;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
