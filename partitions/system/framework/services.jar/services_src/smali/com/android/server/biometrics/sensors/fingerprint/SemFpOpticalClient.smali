.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;
.super Ljava/lang/Object;
.source "SemFpOpticalClient.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# instance fields
.field public final mCalibrationColor:Ljava/lang/String;

.field public mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$Callback;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsCalibrationMode:Z

.field public mIsKeyguard:Z

.field public final mPackageName:Ljava/lang/String;

.field public mSessionId:I

.field public final mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$ZKgJZmdI-gW9SUIJQqdeCWHm13I(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->lambda$onError$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$r25XY3GtxyUpTM_QH66OeSnOp1A(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->lambda$binderDied$0()V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;-><init>(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    .line 47
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v5

    .line 48
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 46
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;-><init>(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager;Landroid/os/Handler;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 58
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mToken:Landroid/os/IBinder;

    .line 59
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mPackageName:Ljava/lang/String;

    .line 60
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsCalibrationMode:Z

    .line 61
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mCalibrationColor:Ljava/lang/String;

    const-string p3, "com.android.systemui"

    .line 62
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 63
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsKeyguard:Z

    :cond_0
    const/4 p2, 0x0

    .line 66
    :try_start_0
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SemFpOpticalClient: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FingerprintService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$binderDied$0()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$Callback;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$Callback;->onError(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onError$1(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$Callback;

    if-eqz p1, :cond_1

    .line 122
    invoke-interface {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$Callback;->onError(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemFpOpticalClient: binderDied, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public onError(II)V
    .locals 1

    .line 116
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$Callback;)V
    .locals 3

    .line 75
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$Callback;

    .line 76
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "KEY_PACKAGE_NAME"

    .line 77
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_KEYGUARD"

    .line 78
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsKeyguard:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsCalibrationMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nits"

    .line 82
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mCalibrationColor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1f5

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    move-result v1

    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSessionId:I

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    return-void
.end method

.method public stop()V
    .locals 5

    const/4 v0, 0x0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemFpOpticalClient: stop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsCalibrationMode:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x1f5

    goto :goto_1

    :cond_0
    const/16 v1, 0x1f4

    .line 100
    :goto_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSessionId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSessionId:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(I)V

    return-void
.end method
