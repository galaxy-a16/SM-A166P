.class public Lcom/android/server/policy/SideFpsEventHandler;
.super Ljava/lang/Object;
.source "SideFpsEventHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mBiometricState:I

.field public final mContext:Landroid/content/Context;

.field public mDialogProvider:Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;

.field public final mDismissDialogTimeout:I

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mHandler:Landroid/os/Handler;

.field public mLastPowerPressTime:J

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mTurnOffDialog:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$eTkP4pyBNkIAABRh_92rAVH4uR8(Lcom/android/server/policy/SideFpsEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/policy/SideFpsEventHandler;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/server/policy/SideFpsEventHandler;)Lcom/android/server/policy/SideFpsToast;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSideFpsEventHandlerReady(Lcom/android/server/policy/SideFpsEventHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBiometricState(Lcom/android/server/policy/SideFpsEventHandler;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdismissDialog(Lcom/android/server/policy/SideFpsEventHandler;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->dismissDialog(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;)V
    .locals 1

    .line 82
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/SideFpsEventHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/SideFpsEventHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mTurnOffDialog:Ljava/lang/Runnable;

    .line 97
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    .line 99
    iput-object p3, p0, Lcom/android/server/policy/SideFpsEventHandler;->mPowerManager:Landroid/os/PowerManager;

    const/4 p2, 0x0

    .line 100
    iput p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    .line 101
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    iput-object p4, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialogProvider:Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;

    .line 104
    new-instance p2, Lcom/android/server/policy/SideFpsEventHandler$1;

    invoke-direct {p2, p0}, Lcom/android/server/policy/SideFpsEventHandler$1;-><init>(Lcom/android/server/policy/SideFpsEventHandler;)V

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.intent.action.SCREEN_OFF"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e011e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDismissDialogTimeout:I

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const-string/jumbo v0, "mTurnOffDialog"

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/server/policy/SideFpsEventHandler;->dismissDialog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final dismissDialog(Ljava/lang/String;)V
    .locals 1

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dismissing dialog with reason: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SideFpsEventHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final goToSleep(J)V
    .locals 2

    .line 179
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public notifyPowerPressed()V
    .locals 2

    const-string v0, "SideFpsEventHandler"

    const-string/jumbo v1, "notifyPowerPressed"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez p0, :cond_1

    return-void

    .line 136
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->onPowerPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mLastPowerPressTime:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/SideFpsEventHandler;->goToSleep(J)V

    return-void
.end method

.method public onFingerprintSensorReady()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 198
    new-instance v1, Lcom/android/server/policy/SideFpsEventHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/policy/SideFpsEventHandler$2;-><init>(Lcom/android/server/policy/SideFpsEventHandler;Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    return-void
.end method

.method public shouldConsumeSinglePress(J)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
