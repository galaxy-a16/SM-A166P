.class public Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;
.super Ljava/lang/Object;
.source "SemUdfpsSysUiImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# static fields
.field static final DB_UDFPS_HIDE_AUTH_GUIDE_LAYER_PACKAGES:Ljava/lang/String; = "config_biometric_udfps_flag_hide_auth_guide_layer_packages"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCustomIconAttribute:Landroid/os/Bundle;

.field public final mHashCode:I

.field mHideAuthenticationGuide:Z

.field public mIsAuthenticated:Z

.field public mIsBiometricPrompt:Z

.field public mIsRequireTouchBlock:Z

.field public final mPackageName:Ljava/lang/String;

.field public mSysUiCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;

.field mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public mSysUiSessionId:I

.field public mSysUiType:I

.field public final mToken:Landroid/os/IBinder;

.field mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

.field public mUserId:I


# direct methods
.method public static synthetic $r8$lambda$KmIyirb-vUAWmQfYwYj_r3Cvwyc(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->lambda$onError$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$NeZyztc8YtuycLAuJlvpENlYFCg(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->lambda$onDismissed$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mToken:Landroid/os/IBinder;

    .line 66
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mPackageName:Ljava/lang/String;

    .line 67
    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUserId:I

    .line 68
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 69
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 70
    iput-boolean p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHashCode:I

    return-void
.end method

.method private synthetic lambda$onDismissed$0()V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;

    if-eqz p0, :cond_0

    .line 79
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;->onSysUiDismissed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onError$1(II)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;

    if-eqz p0, :cond_0

    .line 88
    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;->onSysUiError(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final canHideAuthenticationGuideLayerWithoutFlag()Z
    .locals 6

    .line 114
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->getAllowedPackagesForHideAuthenticationGuideLayer()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 116
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 117
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public checkGuideLayerAndTouchBlock(I)V
    .locals 3

    .line 104
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->canHideAuthenticationGuideLayerWithoutFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Biometrics/SemUdfpsSysUiImpl"

    const-string v2, "ClientExtImpl: specific allowlist attr"

    .line 105
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    if-eqz v0, :cond_1

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mPackageName:Ljava/lang/String;

    .line 110
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->inMultiWindowMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsRequireTouchBlock:Z

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->stop()V

    .line 177
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(I)V

    return-void
.end method

.method public final getAllowedPackagesForHideAuthenticationGuideLayer()[Ljava/lang/String;
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_biometric_udfps_flag_hide_auth_guide_layer_packages"

    const/4 v2, 0x0

    .line 127
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 133
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    .line 134
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10700a1

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSysUiType()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiType:I

    if-nez v0, :cond_1

    .line 152
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 153
    :goto_0
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiType:I

    .line 155
    :cond_1
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiType:I

    return p0
.end method

.method public handleOnAcquired(II)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 192
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    const/16 v0, 0xca

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommandIfSessionExist(IILandroid/os/Bundle;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    invoke-virtual {p1, v2, v0, p2, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    :goto_0
    const/16 p1, 0x2712

    if-ne p2, p1, :cond_2

    .line 200
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->onCaptureStarted()V

    goto :goto_1

    .line 203
    :cond_1
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    const/16 v0, 0xc9

    invoke-virtual {p2, p0, v0, p1, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public handleOnAuthenticated(Z)V
    .locals 3

    .line 181
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsAuthenticated:Z

    if-eqz v0, :cond_0

    return-void

    .line 184
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsAuthenticated:Z

    .line 185
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->onAuthenticated(IIZLjava/lang/String;)V

    return-void
.end method

.method public handleOnError(II)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 210
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    const/16 v2, 0xcc

    invoke-virtual {p1, v0, v2, p2, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    const/16 v2, 0xcb

    invoke-virtual {p2, v0, v2, p1, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    .line 216
    :goto_0
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz p1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->hideLightSource()V

    .line 218
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHashCode:I

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->disable(I)V

    :cond_1
    return-void
.end method

.method public handleOnPause()V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x70

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    return-void
.end method

.method public handleOnResume()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x71

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    return-void
.end method

.method public final hideLightSource()V
    .locals 0

    .line 167
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz p0, :cond_0

    .line 168
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz p0, :cond_0

    .line 169
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getOpticalSensorHelper()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->turnOffHwLightMode()V

    :cond_0
    return-void
.end method

.method public onDismissed(I[B)V
    .locals 0

    .line 77
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p1

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(II)V
    .locals 2

    .line 86
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCustomIconAttribute(Landroid/os/Bundle;I)V
    .locals 4

    const-string v0, "EXTRA_KEY_ICON_COLOR"

    .line 233
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_KEY_ICON_CONTAINER_COLOR"

    if-nez v1, :cond_0

    .line 234
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_1

    .line 236
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    .line 237
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    const-string/jumbo p1, "sem_privileged_attr"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public setSysUiListener(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    .line 99
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;

    .line 100
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    return-void
.end method

.method public setSysUiType(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiType:I

    return-void
.end method

.method public start()V
    .locals 11

    .line 142
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->getSysUiType()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    iget-boolean v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsRequireTouchBlock:Z

    iget v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUserId:I

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mPackageName:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->show(IILandroid/os/Bundle;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHashCode:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->enable(I)V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 159
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->hide(III)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHashCode:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->disable(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->hideLightSource()V

    return-void
.end method
