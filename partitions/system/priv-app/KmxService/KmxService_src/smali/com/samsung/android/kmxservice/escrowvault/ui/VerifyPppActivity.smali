.class public Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;
.super Ld/q;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "KMX|VerifyPppActivity"


# instance fields
.field private mBackOffTime:J

.field private mDialogFragment:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

.field private mFailureCount:I

.field private mPkiBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPkiManager:Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;

.field private mPppResultReceiver:Landroid/content/BroadcastReceiver;

.field private mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld/q;-><init>()V

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$1;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mPppResultReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mBackOffTime:J

    return-wide v0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mDialogFragment:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mFailureCount:I

    return p0
.end method

.method private getDeviceImageFromSCPM(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mPkiManager:Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mPkiManager:Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->getProductInfoFromCache(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;->getMarketingName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getModelCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->setMarketingName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.scpm.product.UPDATE.f1gxtygekn"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$2;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mPkiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private getDeviceListCount(Landroid/os/Bundle;)I
    .locals 0

    const-string p0, "device_list"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method private getFragment(Landroid/os/Bundle;Landroid/os/ResultReceiver;)Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/g0;->getSupportFragmentManager()Landroidx/fragment/app/y0;

    move-result-object p0

    const v0, 0x7f0901ba

    invoke-virtual {p0, v0}, Landroidx/fragment/app/y0;->C(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "device_list_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "resultReceiver"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private getSAScreenLockType()I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getLockTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PIN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "Pattern"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mPkiManager:Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mBackOffTime:J

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mFailureCount:I

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const-string v0, "KMX|VerifyPppActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/g0;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "KMX|VerifyPppActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "device_list_result"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "resultReceiver"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    iput-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->getFragment(Landroid/os/Bundle;Landroid/os/ResultReceiver;)Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mDialogFragment:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    const-string v2, "ppp_dialog"

    const/4 v3, 0x0

    const-string v4, "Screen lock type : "

    if-nez v1, :cond_0

    const-string v1, "SALog object is created in onCreate function "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->getSAScreenLockType()I

    move-result v1

    const-string v4, " Source : 0"

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/kmxservice/common/analytics/SALog;

    const-string v4, "EV0001"

    invoke-direct {v1, v4, v3, v0}, Lcom/samsung/android/kmxservice/common/analytics/SALog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->sendLog(Lcom/samsung/android/kmxservice/common/analytics/SALog;Landroid/app/Application;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mDialogFragment:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/g0;->getSupportFragmentManager()Landroidx/fragment/app/y0;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/s;->show(Landroidx/fragment/app/y0;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0c00b7

    invoke-virtual {p0, v0}, Ld/q;->setContentView(I)V

    if-eqz p1, :cond_1

    const-string v0, "failure_count"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mFailureCount:I

    const-string v0, "back_off_time"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mBackOffTime:J

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mDialogFragment:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    iget v7, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mFailureCount:I

    invoke-virtual {v0, v7, v5, v6}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setFailureInfo(IJ)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->getSAScreenLockType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Number of devices shown : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->getDeviceListCount(Landroid/os/Bundle;)I

    move-result v4

    const-string v5, " Touchpoint : 0"

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/kmxservice/common/analytics/SALog;

    const-string v5, "EV0002"

    invoke-direct {v4, v5, v3, v0}, Lcom/samsung/android/kmxservice/common/analytics/SALog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->sendLog(Lcom/samsung/android/kmxservice/common/analytics/SALog;Landroid/app/Application;)V

    invoke-virtual {p0}, Landroidx/fragment/app/g0;->getSupportFragmentManager()Landroidx/fragment/app/y0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/fragment/app/a;

    invoke-direct {v3, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/y0;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mDialogFragment:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    const/4 v4, 0x2

    const v5, 0x7f0901ba

    invoke-virtual {v3, v5, v0, v2, v4}, Landroidx/fragment/app/a;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroidx/fragment/app/a;->e(Z)I

    const-string v0, "device_list"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->getDeviceImageFromSCPM(Ljava/util/ArrayList;)V

    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "ppp"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_showing_incorrect_message"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mDialogFragment:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setSavedPinPassword(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mDialogFragment:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setIsShowingIncorrectMessage(Z)V

    :cond_2
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.kmxservice.escrowvault.VERIFY_PPP"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.kmxservice.escrowvault.FINISH_PPP"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Lp0/c;->b(Landroid/content/Context;)Lp0/c;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mPppResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Lp0/c;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Ld/q;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mDialogFragment:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mDialogFragment:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->dismissAllowingStateLoss()V

    :cond_0
    invoke-static {p0}, Lp0/c;->b(Landroid/content/Context;)Lp0/c;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mPppResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lp0/c;->e(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mPkiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "KMX|VerifyPppActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    const-string v0, "resultReceiver"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mDialogFragment:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->getFailureCount()I

    move-result v0

    const-string v1, "failure_count"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mDialogFragment:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->getBackOffTime()J

    move-result-wide v0

    const-string v2, "back_off_time"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mDialogFragment:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->getPinPassword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ppp"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->mDialogFragment:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->isShowingIncorrectMessage()Z

    move-result p0

    const-string v0, "is_showing_incorrect_message"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
