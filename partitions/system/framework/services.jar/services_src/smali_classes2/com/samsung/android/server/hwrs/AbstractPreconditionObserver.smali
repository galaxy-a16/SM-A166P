.class public abstract Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;
.super Ljava/lang/Object;
.source "AbstractPreconditionObserver.java"


# instance fields
.field public final URI_CAMERASHARE:Landroid/net/Uri;

.field public final mAccountChangeReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public mIsAddedAccountListener:Z

.field public mIsRegisteredCameraShareObserver:Z

.field public mListener:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$StateChangedListener;

.field public final mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

.field public final mSettingObserver:Landroid/database/ContentObserver;

.field public mState:I

.field public mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetURI_CAMERASHARE(Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->URI_CAMERASHARE:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleSamsungAccountUpdate(Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->handleSamsungAccountUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSettingUpdate(Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->handleSettingUpdate(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "hwrs_camerashare_setting"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->URI_CAMERASHARE:Landroid/net/Uri;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mUserId:I

    new-instance v0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;-><init>(Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mSettingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$2;-><init>(Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    new-instance v0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;-><init>(Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mAccountChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final addOnAccountsUpdatedListener()V
    .locals 11

    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mIsAddedAccountListener:Z

    const-string v1, "[HWRS_SYS]PreconditionObserver"

    if-eqz v0, :cond_0

    const-string p0, "addOnAccountsUpdatedListener - already added"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "addOnAccountsUpdatedListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    const-string v2, "com.osp.app.signin"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mUserId:I

    if-eqz v0, :cond_1

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mAccountChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/os/UserHandle;

    iget v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mUserId:I

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mIsAddedAccountListener:Z

    return-void
.end method

.method public final handleSamsungAccountUpdate()V
    .locals 2

    const-string v0, "[HWRS_SYS]PreconditionObserver"

    const-string v1, "handleSamsungAccountUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->isSamsungAccountLogin()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->updateFlag(IZ)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->notifyChanged(I)V

    return-void
.end method

.method public final handleSettingUpdate(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->isSettingEnabled()Z

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->isFlag(I)Z

    move-result v2

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->updateFlag(IZ)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->notifyChanged(I)V

    return-void
.end method

.method public initCheck()V
    .locals 4

    const-string v0, "initCheck"

    const-string v1, "[HWRS_SYS]PreconditionObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->isFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hwrs_camerashare_setting"

    iget p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, p0}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v3, :cond_0

    const-string p0, "hwrs_camerashare_setting is not set"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public isFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mState:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHWRSEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mUserId:I

    const-string v1, "hwrs_service"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method public final isPackageInstalled(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "Package : "

    const-string v1, "[HWRS_SYS]PreconditionObserver"

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isSamsungAccountLogin()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mUserId:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    const-string p0, "com.osp.app.signin"

    invoke-virtual {v0, p0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object p0

    array-length p0, p0

    const-string v0, "[HWRS_SYS]PreconditionObserver"

    if-lez p0, :cond_0

    const-string p0, "SamsungAccount login"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "SamsungAccount not login"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isSettingEnabled()Z
    .locals 2

    const-string v0, "hwrs_camerashare_setting"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->isSettingEnabled(Ljava/lang/String;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSettingEnabled - camerashareSetting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HWRS_SYS]PreconditionObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isSettingEnabled(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mUserId:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p0}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method public meetConditions()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "meetConditions - current state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HWRS_SYS]PreconditionObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mState:I

    const/4 v0, 0x7

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

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mListener:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$StateChangedListener;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mState:I

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$StateChangedListener;->onChanged(II)V

    :cond_0
    return-void
.end method

.method public registerCameraShareObserver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->URI_CAMERASHARE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mSettingObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerSettingsObserver()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mIsRegisteredCameraShareObserver:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->isFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->registerCameraShareObserver()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mIsRegisteredCameraShareObserver:Z

    return-void
.end method

.method public final removeOnAccountsUpdatedListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mIsAddedAccountListener:Z

    const-string v1, "[HWRS_SYS]PreconditionObserver"

    if-nez v0, :cond_0

    const-string/jumbo p0, "removeOnAccountsUpdatedListener - already added"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "removeOnAccountsUpdatedListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    iget v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mUserId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mAccountChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mIsAddedAccountListener:Z

    return-void
.end method

.method public setFlag(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mState:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mState:I

    return-void
.end method

.method public start(ILcom/samsung/android/server/hwrs/AbstractPreconditionObserver$StateChangedListener;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mUserId:I

    iput-object p2, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mListener:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$StateChangedListener;

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->isSamsungAccountLogin()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->updateFlag(IZ)V

    const-string p1, "com.samsung.android.hwresourceshare"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->updateFlag(IZ)V

    const/4 p1, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->isSettingEnabled()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->updateFlag(IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->initCheck()V

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->registerSettingsObserver()V

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->addOnAccountsUpdatedListener()V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->unregisterSettingsObserver()V

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->removeOnAccountsUpdatedListener()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mState:I

    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mUserId:I

    return-void
.end method

.method public final unregisterSettingsObserver()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mIsRegisteredCameraShareObserver:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->isFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mIsRegisteredCameraShareObserver:Z

    return-void
.end method

.method public unsetFlag(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mState:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->mState:I

    return-void
.end method

.method public updateFlag(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFlag - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HWRS_SYS]PreconditionObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->setFlag(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->unsetFlag(I)V

    :goto_0
    return-void
.end method
