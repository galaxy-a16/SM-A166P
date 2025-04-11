.class public abstract Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;
.super Ljava/lang/Object;
.source "AbstractPreconditionObserver.java"


# static fields
.field public static final FEATURE_CONTINUITY:I

.field public static final SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String;


# instance fields
.field public final URI_CONTINUITY:Landroid/net/Uri;

.field public final URI_HW_SHARING:Landroid/net/Uri;

.field public final URI_MULTI_CONTROL:Landroid/net/Uri;

.field public final URI_VIDEO_CALL_CONTINUITY:Landroid/net/Uri;

.field public final mAccountChangeReceiver:Landroid/content/BroadcastReceiver;

.field public final mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAccount:Landroid/accounts/Account;

.field public mIsAddedAccountListener:Z

.field public mIsPkgObserverRegistered:Z

.field public mListener:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$StateChangedListener;

.field public final mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

.field public final mPkgReceiver:Landroid/content/BroadcastReceiver;

.field public mRegisterSettingsObserver:Z

.field public final mSettingObserver:Landroid/database/ContentObserver;

.field public mState:I

.field public mUserId:I


# direct methods
.method public static synthetic $r8$lambda$y3ra3sItdVpGkivn_T8Kg2yYE5o(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->handleAutoSwitchModeChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetURI_CONTINUITY(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)Landroid/net/Uri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->URI_CONTINUITY:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetURI_HW_SHARING(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)Landroid/net/Uri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->URI_HW_SHARING:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetURI_MULTI_CONTROL(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)Landroid/net/Uri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->URI_MULTI_CONTROL:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetURI_VIDEO_CALL_CONTINUITY(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)Landroid/net/Uri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->URI_VIDEO_CALL_CONTINUITY:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckAccountUpdated(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->checkAccountUpdated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyChanged(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->notifyChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyReplacedPackage(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->notifyReplacedPackage(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyRestartedPackage(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->notifyRestartedPackage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monChangeSettings(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->onChangeSettings(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetInstalledFlag(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->setInstalledFlag(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munsetInstalledFlag(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->unsetInstalledFlag(Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 181
    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isWatch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    sput v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->FEATURE_CONTINUITY:I

    .line 442
    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isWatch()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.android.wearable.samsungaccount"

    goto :goto_1

    :cond_1
    const-string v0, "com.osp.app.signin"

    :goto_1
    sput-object v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    .line 52
    iput v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mUserId:I

    .line 317
    new-instance v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;-><init>(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mSettingObserver:Landroid/database/ContentObserver;

    .line 378
    new-instance v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;-><init>(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    .line 503
    new-instance v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$3;-><init>(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 535
    new-instance v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$4;-><init>(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mAccountChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    new-instance v1, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    const-string/jumbo p1, "mcf_continuity"

    .line 77
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->URI_CONTINUITY:Landroid/net/Uri;

    const-string/jumbo p1, "multi_control_enabled"

    .line 78
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->URI_MULTI_CONTROL:Landroid/net/Uri;

    const-string/jumbo p1, "vcc_continuity"

    .line 79
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->URI_VIDEO_CALL_CONTINUITY:Landroid/net/Uri;

    const-string p1, "hwrs_service"

    .line 80
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->URI_HW_SHARING:Landroid/net/Uri;

    return-void
.end method

.method public static isChangedAccount(Landroid/accounts/Account;Landroid/accounts/Account;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 463
    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isSupported()Z
    .locals 1

    .line 185
    sget v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->FEATURE_CONTINUITY:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupported(I)Z
    .locals 2

    .line 189
    sget v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->FEATURE_CONTINUITY:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    and-int/2addr v0, p0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isSupportedContinuity()Z
    .locals 2

    const/4 v0, 0x1

    .line 255
    invoke-static {v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final addOnAccountsUpdatedListener()V
    .locals 11

    .line 470
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mIsAddedAccountListener:Z

    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    if-eqz v0, :cond_0

    const-string p0, "addOnAccountsUpdatedListener - already added"

    .line 471
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "addOnAccountsUpdatedListener"

    .line 474
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    sget-object v2, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    .line 478
    iget v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mUserId:I

    if-eqz v0, :cond_1

    .line 479
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 480
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    iget-object v5, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mAccountChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/os/UserHandle;

    iget v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mUserId:I

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 484
    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mIsAddedAccountListener:Z

    return-void
.end method

.method public final checkAccountUpdated()V
    .locals 4

    .line 512
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    if-eqz v0, :cond_0

    .line 513
    sget-boolean v2, Lcom/samsung/android/server/continuity/common/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAccountUpdated - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    invoke-static {v2, v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isChangedAccount(Landroid/accounts/Account;Landroid/accounts/Account;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "checkAccountUpdated - is not changed"

    .line 517
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 521
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    const/16 v1, 0xf

    if-eqz v0, :cond_3

    .line 523
    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isHighPowerConsumptionChipset()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 524
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->setContinuitySetting(I)V

    .line 525
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isEnableSettings()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->updateSettings(Z)V

    .line 527
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->setFlag(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 529
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->setContinuitySetting(I)V

    .line 530
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->unsetFlag(I)V

    :goto_0
    const/4 v0, 0x2

    .line 532
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->notifyChanged(I)V

    return-void
.end method

.method public abstract getAccountsByType()[Landroid/accounts/Account;
.end method

.method public getAutoSwitchDeviceAddress()Ljava/lang/String;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->getAutoSwitchDeviceAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSamsungAccount()Landroid/accounts/Account;
    .locals 3

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->getAccountsByType()[Landroid/accounts/Account;

    move-result-object p0

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSamsungAccount - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 453
    sget-boolean v0, Lcom/samsung/android/server/continuity/common/Utils;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method

.method public final handleAutoSwitchModeChanged(Z)V
    .locals 0

    const/4 p1, 0x4

    .line 301
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->onChangeSettings(I)V

    return-void
.end method

.method public abstract initContinuitySetting()V
.end method

.method public final isAutoSwitchOn()Z
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->isAutoSwitchModeEnabled()Z

    move-result p0

    return p0
.end method

.method public final isEnableSettings()Z
    .locals 8

    const/4 v0, 0x2

    .line 244
    invoke-static {v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupported(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isAutoSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 245
    :goto_0
    invoke-static {}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupportedContinuity()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "mcf_continuity"

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 246
    :goto_1
    invoke-static {}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupportedContinuity()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "multi_control_enabled"

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 247
    :goto_2
    invoke-static {}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupportedContinuity()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "vcc_continuity"

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    .line 248
    :goto_3
    invoke-static {}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupportedContinuity()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "hwrs_service"

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v1

    goto :goto_4

    :cond_4
    move p0, v2

    .line 249
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEnableSettings - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :cond_6
    :goto_5
    return v1
.end method

.method public abstract isEnableSettings(Ljava/lang/String;)Z
.end method

.method public final isFlag(I)Z
    .locals 0

    .line 152
    iget p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mState:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public logContinuitySettingEnable()V
    .locals 3

    .line 233
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mcfds.LOG_SAMSUNG_ANALYTICS"

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string v2, "event"

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "screenId"

    const-string v2, "101"

    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "eventId"

    const-string v2, "10100"

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "detail"

    const-string v2, "auto"

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.mcfds"

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public meetConditions()Z
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "meetConditions - state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mState:I

    const v0, 0xffff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyChanged(I)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$StateChangedListener;

    if-eqz v0, :cond_0

    .line 157
    iget p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mState:I

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$StateChangedListener;->onChanged(II)V

    :cond_0
    return-void
.end method

.method public final notifyReplacedPackage(Z)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$StateChangedListener;

    if-eqz p0, :cond_0

    .line 163
    invoke-interface {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$StateChangedListener;->onPackageReplaced(Z)V

    :cond_0
    return-void
.end method

.method public final notifyRestartedPackage()V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$StateChangedListener;

    if-eqz p0, :cond_0

    .line 169
    invoke-interface {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$StateChangedListener;->onPackageRestarted()V

    :cond_0
    return-void
.end method

.method public final onChangeSettings(I)V
    .locals 2

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isEnableSettings()Z

    move-result v0

    const v1, 0xf000

    .line 341
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isFlag(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->updateSettings(Z)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->notifyChanged(I)V

    return-void
.end method

.method public abstract registerContinuityObserver()V
.end method

.method public abstract registerHwSharingObserver()V
.end method

.method public abstract registerMultiControlObserver()V
.end method

.method public final registerPackageObserver()V
    .locals 5

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 353
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.scloud"

    const/4 v3, 0x0

    .line 357
    invoke-virtual {v0, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v2, "com.samsung.android.mcfds"

    .line 358
    invoke-virtual {v0, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 359
    iget-object v4, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 361
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PACKAGE_RESTARTED"

    .line 362
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 365
    iget-object v1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mIsPkgObserverRegistered:Z

    return-void
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
.end method

.method public final registerSettingsObserver()V
    .locals 1

    .line 270
    sget v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->FEATURE_CONTINUITY:I

    if-gtz v0, :cond_0

    const-string p0, "[MCF_DS_SYS]_PreconditionObserver"

    const-string/jumbo v0, "registerSettingsObserver - invalid feature value"

    .line 271
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 275
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mRegisterSettingsObserver:Z

    if-eqz v0, :cond_1

    return-void

    .line 279
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupportedContinuity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->registerContinuityObserver()V

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->registerMultiControlObserver()V

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->registerVideoCallContinuityObserver()V

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->registerHwSharingObserver()V

    :cond_2
    const/4 v0, 0x2

    .line 285
    invoke-static {v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->start()V

    :cond_3
    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mRegisterSettingsObserver:Z

    return-void
.end method

.method public abstract registerVideoCallContinuityObserver()V
.end method

.method public final removeOnAccountsUpdatedListener()V
    .locals 2

    .line 488
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mIsAddedAccountListener:Z

    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    if-nez v0, :cond_0

    const-string/jumbo p0, "removeOnAccountsUpdatedListener - already added"

    .line 489
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "removeOnAccountsUpdatedListener"

    .line 492
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 496
    iget v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mUserId:I

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mAccountChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mIsAddedAccountListener:Z

    return-void
.end method

.method public setAutoSwitchOff()V
    .locals 2

    const-string v0, "[MCF_DS_SYS]_PreconditionObserver"

    const-string/jumbo v1, "setAutoSwitchOff"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->disableAutoSwitchDevices()V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract setContinuitySetting(I)V
.end method

.method public final setFlag(I)V
    .locals 1

    .line 144
    iget v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mState:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mState:I

    return-void
.end method

.method public final setInstalledFlag(Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.samsung.android.scloud"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    if-eqz v0, :cond_0

    const-string/jumbo p1, "setInstalledFlag - Scloud"

    .line 125
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf0

    .line 126
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->setFlag(I)V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.mcfds"

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "setInstalledFlag - MCFDS"

    .line 128
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf00

    .line 129
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->setFlag(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public start(ILcom/samsung/android/server/continuity/AbstractPreconditionObserver$StateChangedListener;)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mUserId:I

    .line 90
    iput-object p2, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$StateChangedListener;

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->registerPackageObserver()V

    .line 94
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    const-string p2, "com.samsung.android.scloud"

    invoke-static {p1, p2}, Lcom/samsung/android/server/continuity/common/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf0

    .line 95
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->setFlag(I)V

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    const-string p2, "com.samsung.android.mcfds"

    invoke-static {p1, p2}, Lcom/samsung/android/server/continuity/common/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xf00

    .line 99
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->setFlag(I)V

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->initContinuitySetting()V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isEnableSettings()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->updateSettings(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->registerSettingsObserver()V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->addOnAccountsUpdatedListener()V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    if-eqz p1, :cond_2

    const/16 p1, 0xf

    .line 110
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->setFlag(I)V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->unregisterPackageObserver()V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->unregisterSettingsObserver()V

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->removeOnAccountsUpdatedListener()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mState:I

    const/16 v0, -0x2710

    .line 120
    iput v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mUserId:I

    return-void
.end method

.method public final unregisterPackageObserver()V
    .locals 2

    .line 372
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mIsPkgObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 374
    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mIsPkgObserverRegistered:Z

    :cond_0
    return-void
.end method

.method public final unregisterSettingsObserver()V
    .locals 2

    .line 305
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mRegisterSettingsObserver:Z

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupportedContinuity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    const/4 v0, 0x2

    .line 311
    invoke-static {v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->stop()V

    :cond_2
    const/4 v0, 0x0

    .line 314
    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mRegisterSettingsObserver:Z

    return-void
.end method

.method public final unsetFlag(I)V
    .locals 1

    .line 148
    iget v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mState:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->mState:I

    return-void
.end method

.method public final unsetInstalledFlag(Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.samsung.android.scloud"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    if-eqz v0, :cond_0

    const-string/jumbo p1, "unsetInstalledFlag - Scloud"

    .line 135
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf0

    .line 136
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->unsetFlag(I)V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.mcfds"

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "unsetInstalledFlag - MCFDS"

    .line 138
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf00

    .line 139
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->unsetFlag(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateSettings(Z)V
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSettings - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xf000

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->setFlag(I)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->unsetFlag(I)V

    :goto_0
    return-void
.end method
