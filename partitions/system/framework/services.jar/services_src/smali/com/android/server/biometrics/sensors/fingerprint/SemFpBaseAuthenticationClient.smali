.class public abstract Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "SemFpBaseAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpTspBlockStatusHandler;


# instance fields
.field public mAttribute:Landroid/os/Bundle;

.field public mAuthenticationFailedReason:I

.field public mAuthenticatorIds:Ljava/util/Map;

.field public mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

.field public mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

.field public mCanIgnoreLockout:Z

.field public mCaptureStartTime:J

.field public mErrorEscrow:I

.field public mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

.field public mIsAuthenticated:Z

.field public final mIsKeyguard:Z

.field public mIsScreenOnWhenStartCapture:Z

.field public mIsSetEarlyWakeUp:Z

.field public final mIsSettingApp:Z

.field public mLastErrorCode:I

.field public mPrivilegedFlags:I

.field public mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public mQualityErrorCount:I

.field public mRejectCount:I

.field public mTotalQualityErrorCount:I

.field public mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

.field public mVendorErrorEscrow:I


# direct methods
.method public static synthetic $r8$lambda$PZhNKY6ZVZ5vAlv3vs4sStlqyuI(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->lambda$resumeFaceAuth$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$eA4iQ9ivKj6VOiaSGMwStzFUKDA(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;ZJIIZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->lambda$handleBigDataOnBackgroundThread$0(ZJIIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$zsdfgOKYu74nD5y9Pit_u7T2iRg(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->lambda$pauseFaceAuth$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmErrorEscrow(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mErrorEscrow:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVendorErrorEscrow(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mVendorErrorEscrow:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNotificationAction(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleNotificationAction(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/biometrics/AuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZI)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v18, p18

    const/16 v17, 0x1

    .line 204
    invoke-direct/range {v0 .. v18}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/biometrics/AuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZI)V

    .line 210
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    .line 211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isRestricted()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsKeyguard:Z

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Lcom/android/server/biometrics/Utils;->isSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsSettingApp:Z

    return-void
.end method

.method private initForUdfps()V
    .locals 7

    const/16 v0, 0x10

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x8000

    .line 300
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasExtraAuthenticationFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v6, v0

    .line 302
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v5

    .line 302
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->createUdfpsSysUiImpl(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;IZ)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 304
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsKeyguard:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    .line 305
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->setSysUiType(I)V

    .line 307
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v0

    if-nez v0, :cond_3

    .line 308
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->checkGuideLayerAndTouchBlock(I)V

    .line 309
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->setCustomIconAttribute(Landroid/os/Bundle;I)V

    .line 310
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->setSysUiListener(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$handleBigDataOnBackgroundThread$0(ZJIIZ)V
    .locals 6

    if-eqz p1, :cond_0

    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move v4, p5

    move v5, p6

    .line 480
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->sendBigDataForAuthenticationSucceed(JIIZ)V

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {p0, p2, p3, p6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->sendBigDataForAuthenticationFail(JZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$pauseFaceAuth$1()V
    .locals 1

    .line 704
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/face/FaceManager;

    if-eqz p0, :cond_0

    .line 706
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->semPauseAuth()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$resumeFaceAuth$2()V
    .locals 1

    .line 718
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/face/FaceManager;

    if-eqz p0, :cond_0

    .line 720
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->semResumeAuth()V

    :cond_0
    return-void
.end method

.method private showBackgroundAuthenticationNotificationIfNeeded()V
    .locals 6

    .line 393
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semIsAllowedBackgroundAuthentication()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isKeyguard()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 399
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->createBiometricNotification(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/biometrics/SemBiometricNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 401
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    .line 402
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "authenticator"

    const/4 v3, 0x2

    .line 403
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_2

    .line 405
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    .line 411
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 413
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 412
    invoke-static {v1, v3, v2, v4, v5}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 415
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBiometricNotification;->postNotification(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public canIgnoreLockout()Z
    .locals 0

    .line 783
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mCanIgnoreLockout:Z

    return p0
.end method

.method public destroy()V
    .locals 10

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->destroy()V

    .line 735
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->destroy()V

    .line 737
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    if-eqz v0, :cond_1

    .line 740
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricNotification;->cancelNotification()V

    .line 741
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 744
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 745
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    .line 747
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v0

    long-to-int v4, v0

    const-string v5, "U"

    const-wide/16 v6, 0x0

    iget v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mLastErrorCode:I

    iget v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mTotalQualityErrorCount:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpStop(ILjava/lang/String;JII)V

    return-void
.end method

.method public getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;
    .locals 0

    .line 223
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    return-object p0
.end method

.method public getAuthenticatorIds()Ljava/util/Map;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAuthenticatorIds:Ljava/util/Map;

    return-object p0
.end method

.method public getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;
    .locals 0

    .line 228
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayId()I
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetDisplayId()I

    move-result p0

    return p0

    .line 285
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    const-string v0, "EXTRA_KEY_DISPLAY_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final handleAuthenticationFailedReasonEvent(I)V
    .locals 3

    .line 659
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAuthenticationFailedReason:I

    .line 660
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 661
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->semIncrementNoMatchReason(II)V

    .line 662
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    .line 663
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x6

    .line 662
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLogHelp(IILjava/lang/String;I)V

    return-void
.end method

.method public final handleAuthenticationResult(I)V
    .locals 11

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mCaptureStartTime:J

    sub-long v8, v0, v2

    .line 453
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->resumeFaceAuth()V

    .line 454
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsAuthenticated:Z

    if-nez v0, :cond_0

    .line 455
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mRejectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mRejectCount:I

    .line 457
    :cond_0
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleLoggingData(IJ)V

    .line 458
    iget-boolean v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsAuthenticated:Z

    iget v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mQualityErrorCount:I

    iget v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mRejectCount:I

    iget-boolean v10, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleBigDataOnBackgroundThread(ZIIJZ)V

    const/4 p1, 0x0

    .line 460
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mQualityErrorCount:I

    return-void
.end method

.method public final handleBigDataOnBackgroundThread(ZIIJZ)V
    .locals 10

    .line 478
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-wide v4, p4

    move v6, p3

    move v7, p2

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;ZJIIZ)V

    invoke-virtual {v0, v9}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleCaptureStarted()V
    .locals 3

    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mCaptureStartTime:J

    .line 644
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->setEarlyWakeUp()V

    .line 645
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->pauseFaceAuth()V

    .line 646
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->acquireBoosting(Landroid/content/Context;)V

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->vibrateSuccess()V

    .line 652
    :cond_1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_2

    .line 653
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpUpdateUdfpsTouchMap(I)V

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    return-void
.end method

.method public handleEarlyAuthenticationResult()V
    .locals 2

    .line 766
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 767
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnAuthenticated(Z)V

    .line 769
    :cond_0
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz p0, :cond_1

    .line 770
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object p0

    .line 771
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getOpticalSensorHelper()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->restoreFunctionForLightSource(J)V

    :cond_1
    return-void
.end method

.method public final handleLoggingData(IJ)V
    .locals 19

    move-object/from16 v0, p0

    .line 464
    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsAuthenticated:Z

    if-eqz v1, :cond_0

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v4

    long-to-int v4, v4

    iget v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mRejectCount:I

    iget v8, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mTotalQualityErrorCount:I

    iget-boolean v10, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    move-wide/from16 v5, p2

    move/from16 v9, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpMatch(Landroid/content/Context;IJIIIZ)V

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v1

    long-to-int v13, v1

    iget v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAuthenticationFailedReason:I

    iget v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mQualityErrorCount:I

    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    move-wide/from16 v14, p2

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v0

    .line 469
    invoke-virtual/range {v11 .. v18}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpNoMatch(Landroid/content/Context;IJIIZ)V

    :goto_0
    return-void
.end method

.method public final handleNotificationAction(Landroid/content/Intent;)V
    .locals 2

    .line 419
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "authenticator"

    const/4 v1, 0x0

    .line 421
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "FingerprintService"

    const-string v0, "Cancel authentication by Notification action"

    .line 422
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    :cond_0
    return-void
.end method

.method public final handleQualityFailedEvent(II)V
    .locals 10

    .line 668
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->resumeFaceAuth()V

    const/16 v0, 0x8

    .line 669
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->vibrateError()V

    .line 672
    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mQualityErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mQualityErrorCount:I

    .line 673
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mTotalQualityErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mTotalQualityErrorCount:I

    .line 675
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 676
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->semIncrementQualityForUser(IZ)V

    .line 678
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object v0

    .line 679
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 678
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLogHelp(IILjava/lang/String;I)V

    .line 681
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v0

    long-to-int v5, v0

    .line 682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mCaptureStartTime:J

    sub-long v6, v0, v6

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    move v8, p2

    goto :goto_0

    :cond_1
    move v8, p1

    .line 684
    :goto_0
    iget-boolean v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    .line 681
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpCaptureFailed(Landroid/content/Context;IJIZ)V

    return-void
.end method

.method public final handleVendorEvent(I)V
    .locals 1

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2712

    if-eq p1, v0, :cond_1

    const/16 v0, 0x271b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->setEarlyWakeUp()V

    goto :goto_0

    .line 632
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleCaptureStarted()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 626
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsSetEarlyWakeUp:Z

    .line 637
    :goto_0
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsAuthenticationFailedReasonEvent(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 638
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleAuthenticationFailedReasonEvent(I)V

    :cond_3
    return-void
.end method

.method public final hasExtraAuthenticationFlag(I)Z
    .locals 2

    .line 289
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    const-string v0, "EXTRA_KEY_AUTH_FLAG"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hasPrivilegedFlag(I)Z
    .locals 0

    .line 336
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasPromptPrivilegedAttr(I)Z
    .locals 0

    .line 294
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getPromptPrivilegedFlags()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInternalEvent(I)Z
    .locals 0

    const/16 p0, 0x271b

    if-eq p1, p0, :cond_1

    .line 620
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsAuthenticationFailedReasonEvent(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isKeyguard()Z
    .locals 0

    .line 370
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsKeyguard:Z

    return p0
.end method

.method public isRestricted()Z
    .locals 1

    .line 365
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getPromptPrivilegedFlags()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onAcquired(II)V
    .locals 2

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAcquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnAcquired(II)V

    .line 577
    :cond_0
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->sendUdfpsPointEventForUltrasonic(II)V

    :cond_1
    const/4 v0, 0x6

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 582
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isInternalEvent(I)Z

    move-result v0

    xor-int/2addr v1, v0

    .line 583
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleVendorEvent(I)V

    .line 585
    :cond_2
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsQualityFailedEvent(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 586
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleQualityFailedEvent(II)V

    :cond_3
    if-eqz v1, :cond_5

    .line 589
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x3ed

    if-ne p2, v0, :cond_4

    const/4 p1, 0x0

    move p2, p1

    .line 595
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAcquired(II)V

    :cond_5
    return-void
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .locals 1

    .line 441
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsAuthenticated:Z

    .line 442
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnAuthenticated(Z)V

    .line 447
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleAuthenticationResult(I)V

    .line 448
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public onError(II)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 547
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mErrorEscrow:I

    if-eqz v0, :cond_0

    .line 549
    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mVendorErrorEscrow:I

    move p1, v0

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 553
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mLastErrorCode:I

    goto :goto_0

    .line 555
    :cond_1
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mLastErrorCode:I

    .line 558
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    .line 560
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz v0, :cond_2

    .line 562
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnError(II)V

    .line 565
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->resumeFaceAuth()V

    .line 566
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->sendBigDataForError(II)V

    return-void
.end method

.method public onOneHandModeEnabled()V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x1389

    .line 358
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->onError(II)V

    .line 360
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    return-void
.end method

.method public onTspBlocked()V
    .locals 2

    const/4 v0, 0x6

    const/16 v1, 0x3ec

    .line 346
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->onAcquired(II)V

    return-void
.end method

.method public onTspUnBlocked()V
    .locals 2

    const/4 v0, 0x6

    const/16 v1, 0x3ed

    .line 352
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->onAcquired(II)V

    return-void
.end method

.method public final pauseFaceAuth()V
    .locals 2

    .line 699
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 703
    :cond_0
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final resumeFaceAuth()V
    .locals 2

    .line 713
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 717
    :cond_0
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semHasPromptPrivilegedAttr(I)Z
    .locals 0

    .line 778
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasPromptPrivilegedAttr(I)Z

    move-result p0

    return p0
.end method

.method public final sendBigDataForAuthenticationFail(JZ)V
    .locals 5

    .line 518
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object v0

    .line 521
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FPIF"

    const/4 v3, -0x1

    const/4 v4, 0x3

    .line 520
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 524
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const-string v1, "FPTF"

    .line 523
    invoke-virtual {v0, v1, p1, v3, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    if-eqz p3, :cond_0

    const-string p1, "FPOF"

    goto :goto_0

    :cond_0
    const-string p1, "FPFF"

    .line 531
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    if-eqz p3, :cond_2

    .line 534
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isFolderFolded(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "FFOF"

    .line 536
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    .line 535
    invoke-virtual {v0, p1, p0, v3, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :cond_2
    if-nez p3, :cond_4

    .line 537
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isFolderFolded(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const-string p1, "FFFF"

    .line 539
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    .line 538
    invoke-virtual {v0, p1, p0, v3, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final sendBigDataForAuthenticationSucceed(JIIZ)V
    .locals 5

    .line 490
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object v0

    .line 492
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FPIS"

    const/4 v3, -0x1

    const/4 v4, 0x3

    .line 491
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 494
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FPTS"

    const/4 v1, 0x1

    .line 493
    invoke-virtual {v0, p2, p1, v3, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    const-string p1, "FPSF"

    .line 496
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 495
    invoke-virtual {v0, p1, p2, v3, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    const-string p1, "FPSQ"

    .line 499
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 498
    invoke-virtual {v0, p1, p2, v3, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    if-eqz p5, :cond_0

    const-string p1, "FPOS"

    goto :goto_0

    :cond_0
    const-string p1, "FPFS"

    .line 506
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p2

    .line 505
    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    if-eqz p5, :cond_2

    .line 508
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isFolderFolded(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "FFOS"

    .line 510
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    .line 509
    invoke-virtual {v0, p1, p0, v3, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :cond_2
    if-nez p5, :cond_4

    .line 511
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isFolderFolded(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const-string p1, "FFFS"

    .line 513
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    .line 512
    invoke-virtual {v0, p1, p0, v3, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final sendBigDataForError(II)V
    .locals 1

    .line 727
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object v0

    .line 728
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    .line 727
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLogError(IILjava/lang/String;)V

    return-void
.end method

.method public final sendUdfpsPointEventForUltrasonic(II)V
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    const/16 p1, 0x2712

    if-eq p2, p1, :cond_0

    const/16 v0, 0x2714

    if-eq p2, v0, :cond_0

    const/16 v0, 0x2717

    if-ne p2, v0, :cond_2

    .line 605
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne p2, p1, :cond_1

    .line 607
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerDown(I)V

    goto :goto_0

    .line 609
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerUp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FingerprintService"

    const-string p2, "Failed to invoke sendAcquired"

    .line 613
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final setEarlyWakeUp()V
    .locals 2

    .line 688
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsSetEarlyWakeUp:Z

    if-nez v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    .line 690
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    .line 691
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->isFoldedInFlipType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    .line 692
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->checkTDDIDoubleTap(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->enableEarlyWakeUp(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 694
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsSetEarlyWakeUp:Z

    :cond_0
    return-void
.end method

.method public setExtraAttribute(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    .line 233
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 235
    :cond_0
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    .line 236
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 237
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->getBiometricPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->setPrivilegedFlags()V

    .line 240
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semSetDisplayId(I)V

    .line 241
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz p1, :cond_2

    .line 242
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->initForUdfps()V

    .line 244
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FingerprintClientExt: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getPromptPrivilegedFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    .line 244
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setInjectorForTest(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    return-void
.end method

.method public final setPrivilegedFlags()V
    .locals 4

    .line 250
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_0

    .line 251
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    or-int/lit8 v0, v0, 0x1b

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    goto :goto_0

    .line 255
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsSettingApp:Z

    if-eqz v0, :cond_1

    .line 256
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    .line 258
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    const-string/jumbo v2, "sem_privileged_attr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    .line 259
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->setPromptPrivilegedFlags()V

    const/4 v0, 0x1

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mCanIgnoreLockout:Z

    :cond_2
    const/16 v0, 0x8

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->semSetVibrationEffectUsage(Z)V

    .line 266
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semIsAllowedBackgroundAuthentication()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    :cond_4
    return-void
.end method

.method public final setPromptPrivilegedFlags()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->setPromptPrivilegedFlags(I)V

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasPromptPrivilegedAttr(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 275
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasPromptPrivilegedAttr(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    :cond_0
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    :cond_1
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 2

    .line 375
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    return-void

    .line 379
    :cond_0
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz p1, :cond_1

    .line 380
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz p1, :cond_1

    .line 381
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->start()V

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->showBackgroundAuthenticationNotificationIfNeeded()V

    .line 385
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v0

    long-to-int v0, v0

    .line 386
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "AP"

    goto :goto_0

    :cond_2
    const-string v1, "A"

    .line 389
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    .line 385
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpStart(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopHalOperation()V
    .locals 2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAuthenticationStopped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->stop()V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->releaseBoosting(Landroid/content/Context;)V

    return-void
.end method

.method public useEarlyAuthenticationResult()Z
    .locals 1

    .line 762
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public vibrateError()V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->vibrateError(Landroid/content/Context;)V

    return-void
.end method

.method public vibrateSuccess()V
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->vibrateSuccess(Landroid/content/Context;)V

    return-void
.end method
