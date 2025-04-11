.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;
.super Ljava/lang/Object;
.source "SemFpGestureCalibrator.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;


# instance fields
.field public mAlreadyDone:Z

.field public mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;

.field public final mContext:Landroid/content/Context;

.field mCurrentSwipeDirection:I

.field mDbState:I

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

.field public mIsGestureCalibrationInProgress:Z

.field public final mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

.field mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

.field public final mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public mSysUiSessionId:I


# direct methods
.method public static bridge synthetic -$$Nest$mhandleOnDismissed(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->handleOnDismissed(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnError(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->handleOnError(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnSysUiEvent(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->handleOnSysUiEvent(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/SemBiometricSysUiManager;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    .line 95
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mContext:Landroid/content/Context;

    .line 96
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 97
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 98
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    .line 99
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/SemBiometricSysUiManager;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;)V

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;->onCalibrationFinished()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRemoveEventListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiSessionId:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(I)V

    return-void
.end method

.method public final handleOnDismissed(I)V
    .locals 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnDismissed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService.GestureCal"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mIsGestureCalibrationInProgress:Z

    .line 175
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mAlreadyDone:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 179
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    invoke-virtual {p1, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;->setCalibrationState(Landroid/content/Context;I)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;->disableGestureOption(Landroid/content/Context;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->turnOffGestureMode()V

    .line 184
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->finish()V

    .line 185
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mAlreadyDone:Z

    return-void
.end method

.method public final handleOnError(II)V
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FingerprintService.GestureCal"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;->disableGestureOption(Landroid/content/Context;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->turnOffGestureMode()V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->finish()V

    return-void
.end method

.method public final handleOnSysUiEvent(II)V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FingerprintService.GestureCal"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->handleOnUiReady()V

    :cond_0
    return-void
.end method

.method public final handleOnUiReady()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;->onCalibrationStarted()V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->turnOnGestureMode()V

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEventListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V

    return-void
.end method

.method public hasCalibrationData()Z
    .locals 1

    .line 138
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCalibrationInProgress()Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mIsGestureCalibrationInProgress:Z

    return p0
.end method

.method public isInverseDirection()Z
    .locals 1

    .line 134
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final notifyGestureEvent(I)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiSessionId:I

    const/16 v1, 0x258

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    return-void
.end method

.method public onBootCompleted(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 142
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "FingerprintService.GestureCal"

    const-string v0, "gesture function enabled, but No calibration data"

    .line 143
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;->setCalibrationState(Landroid/content/Context;I)V

    .line 145
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    :cond_0
    return-void
.end method

.method public onGestureEvent(II)V
    .locals 0

    .line 230
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->notifyGestureEvent(I)V

    .line 231
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCurrentSwipeDirection:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 232
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 234
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    :goto_0
    return-void
.end method

.method public onGestureSettingChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;->getCalibrationState(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;->setCalibrationState(Landroid/content/Context;I)V

    .line 124
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    .line 126
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onGestureSettingChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService.GestureCal"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCallback(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;

    return-void
.end method

.method public start(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mIsGestureCalibrationInProgress:Z

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mAlreadyDone:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x4e21

    .line 205
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCurrentSwipeDirection:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x4e22

    .line 207
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCurrentSwipeDirection:I

    .line 209
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "KEY_FP_GESTURE_DIRECTION"

    .line 210
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCurrentSwipeDirection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiSessionId:I

    .line 212
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->show(IILandroid/os/Bundle;)V

    return-void
.end method

.method public final turnOffGestureMode()V
    .locals 6

    .line 219
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(III[B[B)I

    return-void
.end method

.method public final turnOnGestureMode()V
    .locals 6

    .line 224
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(III[B[B)I

    return-void
.end method
