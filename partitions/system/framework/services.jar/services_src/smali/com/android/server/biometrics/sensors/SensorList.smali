.class public Lcom/android/server/biometrics/sensors/SensorList;
.super Ljava/lang/Object;
.source "SensorList.java"


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mSensors:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/app/IActivityManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SensorList;->mActivityManager:Landroid/app/IActivityManager;

    return-void
.end method


# virtual methods
.method public addSensor(ILjava/lang/Object;ILandroid/app/SynchronousUserSwitchObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p1, "SensorList"

    const-string/jumbo p2, "registerUserSwitchObserver"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p3, p4}, Lcom/android/server/biometrics/sensors/SensorList;->registerUserSwitchObserver(ILandroid/app/SynchronousUserSwitchObserver;)V

    return-void
.end method

.method public contains(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public keyAt(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public final registerUserSwitchObserver(ILandroid/app/SynchronousUserSwitchObserver;)V
    .locals 1

    const-string v0, "SensorList"

    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {p0, p2, v0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    const/16 p0, -0x2710

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/app/SynchronousUserSwitchObserver;->onUserSwitching(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unable to register user switch observer"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
