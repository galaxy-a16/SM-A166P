.class public interface abstract Lcom/android/server/biometrics/sensors/face/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricServiceProvider;


# virtual methods
.method public abstract cancelAuthentication(ILandroid/os/IBinder;J)V
.end method

.method public abstract cancelEnrollment(ILandroid/os/IBinder;J)V
.end method

.method public abstract cancelFaceDetect(ILandroid/os/IBinder;J)V
.end method

.method public abstract createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
.end method

.method public abstract dumpHal(ILjava/io/FileDescriptor;[Ljava/lang/String;)V
.end method

.method public abstract getEnrolledFaces(II)Ljava/util/List;
.end method

.method public abstract onBootPhase(I)V
.end method

.method public abstract scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;ZIZ)J
.end method

.method public abstract scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;JZIZ)V
.end method

.method public abstract scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J
.end method

.method public abstract scheduleFaceDetect(Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;I)J
.end method

.method public abstract scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
.end method

.method public abstract scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;Z)V
.end method

.method public scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Providers that support invalidation must override this method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract scheduleRemove(ILandroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract scheduleRemoveAll(ILandroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract scheduleResetLockout(II[B)V
.end method

.method public abstract scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
.end method

.method public abstract scheduleSetFeature(ILandroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
.end method

.method public scheduleWatchdog(I)V
    .locals 0

    return-void
.end method

.method public abstract semGetInfo(I)Ljava/lang/String;
.end method

.method public abstract semGetRemainingLockoutTime(I)I
.end method

.method public abstract semGetSecurityLevel(Z)I
.end method

.method public abstract semIsFrameworkHandleLockout()Z
.end method

.method public abstract semIsSessionClose()Z
.end method

.method public abstract semPauseAuth()V
.end method

.method public abstract semPauseEnroll()V
.end method

.method public abstract semResetAuthenticationTimeout()Z
.end method

.method public abstract semResumeAuth()V
.end method

.method public abstract semResumeEnroll()V
.end method

.method public abstract semSessionClose()V
.end method

.method public abstract semSessionOpen()V
.end method

.method public abstract semSetTpaHalEnabled(Z)V
.end method

.method public semShouldRemoveTemplate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract semUpdateTpaAction()V
.end method

.method public abstract startPreparedClient(II)V
.end method
