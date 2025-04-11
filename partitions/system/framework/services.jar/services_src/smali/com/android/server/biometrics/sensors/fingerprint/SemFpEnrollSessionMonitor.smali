.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;
.super Ljava/lang/Object;
.source "SemFpEnrollSessionMonitor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeListener;
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor$Callback;


# instance fields
.field public final mDisplayStateMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;

.field public final mEnrollSessions:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 19
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mDisplayStateMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;

    return-void
.end method


# virtual methods
.method public isEnrollSession(I)Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onChallengeGenerated(IJLjava/lang/Runnable;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v2, p4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 51
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mDisplayStateMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->registerCallback(Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor$Callback;)V

    .line 53
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

.method public onChallengeRevoked(I)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 60
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mDisplayStateMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->unregisterCallback(Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor$Callback;)V

    .line 63
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

.method public onDisplayOff()V
    .locals 1

    .line 28
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->revokeChallengeInternally()V

    return-void
.end method

.method public onProviderRegistered(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .locals 0

    .line 23
    invoke-interface {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddChallengeListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeListener;)V

    return-void
.end method

.method public revokeChallenge(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_0

    .line 70
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 72
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

.method public final revokeChallengeInternally()V
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 37
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    const-string v3, "FingerprintService"

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Revoke challenge due to screen off, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
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
