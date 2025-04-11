.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;
.super Ljava/lang/Object;
.source "SemFpWirelessPowerMonitor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;


# static fields
.field static final ACTION_WIRELESS_POWER_SHARING:Ljava/lang/String; = "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

.field static final AUTH_REJECT_COUNT_THRESHOLDS:I = 0x3

.field static final KEY_WIRELESS_POWER_SHARING_ENABLED:Ljava/lang/String; = "enable"


# instance fields
.field public mAuthRejectCountWhileWirelessPower:I

.field mBrForWirelessPower:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mH:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;

.field public mIsWirelessPowerRunning:Z

.field public mIsWirelessPowerSharingRunning:Z

.field public final mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;


# direct methods
.method public static bridge synthetic -$$Nest$mhandleActionOfBatteryChanged(Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->handleActionOfBatteryChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleActionOfWirelessPowerSharing(Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->handleActionOfWirelessPowerSharing(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .locals 1

    .line 57
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mH:Landroid/os/Handler;

    .line 65
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 66
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;

    return-void
.end method


# virtual methods
.method public final dispatchWirelessPowerStatus(Z)V
    .locals 7

    .line 135
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerRunning:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 138
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerRunning:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onWirelessPowerEnabled()V

    goto :goto_0

    .line 142
    :cond_1
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mAuthRejectCountWhileWirelessPower:I

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/16 v3, 0x1d

    .line 145
    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerRunning:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 144
    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(III[B[B)I

    return-void
.end method

.method public getAuthRejectCountWhileWirelessPowerForTesting()I
    .locals 0

    .line 160
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mAuthRejectCountWhileWirelessPower:I

    return p0
.end method

.method public final handleActionOfBatteryChanged()V
    .locals 2

    .line 118
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 119
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->dispatchWirelessPowerStatus(Z)V

    goto :goto_0

    .line 122
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerSharingRunning:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->dispatchWirelessPowerStatus(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final handleActionOfWirelessPowerSharing(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "enable"

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerSharingRunning:Z

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->dispatchWirelessPowerStatus(Z)V

    return-void
.end method

.method public onAuthenticationResult(III)V
    .locals 0

    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 77
    iget-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerRunning:Z

    if-eqz p2, :cond_0

    .line 78
    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mAuthRejectCountWhileWirelessPower:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mAuthRejectCountWhileWirelessPower:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 79
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;->showWirelessChargerErrorToastMessage(Landroid/content/Context;)V

    .line 80
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mAuthRejectCountWhileWirelessPower:I

    goto :goto_0

    .line 83
    :cond_0
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mAuthRejectCountWhileWirelessPower:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onEnrollStarted(II)V
    .locals 0

    .line 89
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerRunning:Z

    if-eqz p1, :cond_0

    .line 90
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onWirelessPowerEnabled()V

    :cond_0
    return-void
.end method

.method public final registerBroadcast()V
    .locals 11

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mBrForWirelessPower:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mBrForWirelessPower:Landroid/content/BroadcastReceiver;

    .line 109
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mH:Landroid/os/Handler;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 112
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mBrForWirelessPower:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "com.samsung.android.permission.wirelesspowersharing"

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mH:Landroid/os/Handler;

    invoke-static/range {v5 .. v10}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method public setWirelessPowerSharingStatusForTesting(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerSharingRunning:Z

    return-void
.end method

.method public setWirelessPowerStatusForTesting(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerRunning:Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->registerBroadcast()V

    .line 71
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    .line 72
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEnrollmentListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;)V

    return-void
.end method
