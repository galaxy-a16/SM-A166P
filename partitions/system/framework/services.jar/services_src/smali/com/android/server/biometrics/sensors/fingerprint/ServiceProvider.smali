.class public interface abstract Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricServiceProvider;


# virtual methods
.method public abstract cancelAuthentication(ILandroid/os/IBinder;J)V
.end method

.method public abstract cancelEnrollment(ILandroid/os/IBinder;J)V
.end method

.method public abstract createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
.end method

.method public abstract getEnrolledFingerprints(II)Ljava/util/List;
.end method

.method public abstract onOneHandModeEnabled()V
.end method

.method public abstract onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
.end method

.method public abstract onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
.end method

.method public abstract onPowerPressed()V
.end method

.method public abstract onUiReady(JI)V
.end method

.method public abstract onUserRemoved(I)V
.end method

.method public abstract onWirelessPowerEnabled()V
.end method

.method public abstract pauseEnroll(I)V
.end method

.method public abstract rename(IIILjava/lang/String;)V
.end method

.method public abstract resumeEnroll(I)V
.end method

.method public abstract scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;ZIZ)J
.end method

.method public abstract scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;JZIZ)V
.end method

.method public abstract scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J
.end method

.method public abstract scheduleFingerDetect(Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;I)J
.end method

.method public abstract scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;Z)V
.end method

.method public abstract scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
.end method

.method public abstract scheduleRemove(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IILjava/lang/String;)V
.end method

.method public abstract scheduleRemoveAll(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
.end method

.method public abstract scheduleResetLockout(II[B)V
.end method

.method public abstract scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
.end method

.method public scheduleWatchdog(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V
.end method

.method public abstract semAddChallengeListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeListener;)V
.end method

.method public abstract semAddEnrollmentListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;)V
.end method

.method public abstract semAddEventListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V
.end method

.method public abstract semAddHalLifecycleListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
.end method

.method public abstract semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.end method

.method public abstract semGetDaemonSdkVersion()Ljava/lang/String;
.end method

.method public abstract semGetOpticalBrightnessConfigs(I)[Ljava/lang/String;
.end method

.method public abstract semGetRemainingLockoutTime(I)I
.end method

.method public abstract semGetSecurityLevel()I
.end method

.method public abstract semGetSensorInfo(IZ)Ljava/lang/String;
.end method

.method public abstract semNotifyTspBlockStateToClient(Z)V
.end method

.method public abstract semOpenTzSession()V
.end method

.method public abstract semProcessFidoCommand(II[B[B)I
.end method

.method public abstract semRemoveEventListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V
.end method

.method public abstract semRequest(II)I
.end method

.method public abstract semRequest(III[B[B)I
.end method

.method public abstract semScheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;ZIZLandroid/os/Bundle;)J
.end method

.method public abstract semScheduleSensorTest(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
.end method

.method public abstract semScheduleUpdateTrustApp(ILjava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
.end method

.method public abstract semSetTpaHalEnabled(Z)V
.end method

.method public abstract semSetTpaRequestCommandAction([Ljava/lang/String;)V
.end method

.method public abstract semUpdateTpaAction()V
.end method

.method public abstract startPreparedClient(II)V
.end method
