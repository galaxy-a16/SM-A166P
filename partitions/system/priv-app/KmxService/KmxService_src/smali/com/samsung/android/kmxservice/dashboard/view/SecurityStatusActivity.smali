.class public Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;
.super Ld/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$RoundedWithDividerDecoration;
    }
.end annotation


# static fields
.field protected static final APP_ID:Ljava/lang/String; = "f1gxtygekn"

.field private static final APP_PASSWORD:Ljava/lang/String; = "67B19247CA2FA690063EF1AF9569565E"

.field private static final RESULT_FAILED:I = 0x1

.field private static final SAMSUNG_ACCOUNT_PACKAGE:Ljava/lang/String; = "com.osp.app.signin"

.field private static final SAMSUNG_MEMBERS_PACKAGE:Ljava/lang/String; = "com.samsung.android.voc"

.field private static final SA_SUPPORTED_MIN_APK_VERSION:I = 0x59682f00

.field private static final TAG:Ljava/lang/String; = "KMX|SecurityStatusActivity"


# instance fields
.field private final mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

.field private mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

.field private mItemRoundedCorner:Landroidx/appcompat/util/c;

.field private mPkiBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPkiManager:Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;

.field private mRoundedWithDividerDecoration:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$RoundedWithDividerDecoration;

.field private mSecurityStatusListViewAdapter:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ld/q;-><init>()V

    new-instance v0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$RoundedWithDividerDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$RoundedWithDividerDecoration;-><init>(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;I)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mRoundedWithDividerDecoration:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$RoundedWithDividerDecoration;

    new-instance v0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;-><init>(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    return-void
.end method

.method private activateChainService()V
    .locals 4

    const-string v0, "KMX|SecurityStatusActivity"

    const-string v1, "activateChainService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.kmxservice.trustchain.CHAIN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.kmxservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->ACTIVATE_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;-><init>(Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private activateChainServiceIfNotChinaAccount()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/kmxservice/dashboard/view/d;

    invoke-direct {v1, p0}, Lcom/samsung/android/kmxservice/dashboard/view/d;-><init>(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v2, v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->requestSAService(Landroid/content/Context;ZZLcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->lambda$activateChainServiceIfNotChinaAccount$0(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->lambda$activateChainServiceIfNotChinaAccount$1(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V

    return-void
.end method

.method public static synthetic g(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->lambda$showWarningDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static getContactUsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "voc://view/contactUs"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appId"

    const-string v2, "f1gxtygekn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f12001d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "appName"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "feedbackType"

    const-string v1, "error"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const v0, 0x10008000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getDeviceImageFromSCPM(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mPkiManager:Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->getProductInfoFromCache(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;->getMarketingName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KMX|SecurityStatusActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.scpm.product.UPDATE.f1gxtygekn"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$2;-><init>(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mPkiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private getFabricInfoFromChainService()V
    .locals 4

    const-string v0, "KMX|SecurityStatusActivity"

    const-string v1, "getFabricInfoFromChainService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.kmxservice.trustchain.CHAIN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.kmxservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_FABRIC_DASHBOARD_INFO:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;-><init>(Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public static getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "can\'t get package info of"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KMX|SecurityStatusActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v0
.end method

.method public static synthetic h(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->lambda$toolbarInit$3(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    return-object p0
.end method

.method private isNetworkConnected(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "connectivity"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public static bridge synthetic j(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)Landroidx/appcompat/util/c;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mItemRoundedCorner:Landroidx/appcompat/util/c;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mPkiManager:Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mSecurityStatusListViewAdapter:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;

    return-object p0
.end method

.method private synthetic lambda$activateChainServiceIfNotChinaAccount$0(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getMcc()Ljava/lang/String;

    move-result-object p1

    const-string v0, "460"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "461"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->showView()V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->activateChainService()V

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f120063

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$activateChainServiceIfNotChinaAccount$1(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/dashboard/view/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showWarningDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method private synthetic lambda$toolbarInit$3(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->getDeviceImageFromSCPM(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->getFabricInfoFromChainService()V

    return-void
.end method

.method private openLoginSamsungAccount()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "client_id"

    const-string v2, "f1gxtygekn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_secret"

    const-string v2, "67B19247CA2FA690063EF1AF9569565E"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mypackage"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OSP_VER"

    const-string v2, "OSP_02"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v2, "ADD_ACCOUNT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setRoundedCornerToBottom()V
    .locals 4

    const v0, 0x7f0901d1

    invoke-virtual {p0, v0}, Ld/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lr/f;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Ld/q;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0502f0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_0
    return-void
.end method

.method private showView()V
    .locals 1

    const v0, 0x7f0901ed

    invoke-virtual {p0, v0}, Ld/q;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showWarningDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ld/m;

    invoke-direct {v0, p0}, Ld/m;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, v0, Ld/m;->b:Ljava/lang/Object;

    if-nez v1, :cond_0

    move-object v1, v2

    check-cast v1, Ld/i;

    iput-object p1, v1, Ld/i;->d:Ljava/lang/CharSequence;

    :cond_0
    move-object p1, v2

    check-cast p1, Ld/i;

    iput-object p2, p1, Ld/i;->f:Ljava/lang/CharSequence;

    new-instance p1, Lcom/samsung/android/kmxservice/dashboard/view/c;

    invoke-direct {p1, p0}, Lcom/samsung/android/kmxservice/dashboard/view/c;-><init>(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)V

    check-cast v2, Ld/i;

    iget-object p0, v2, Ld/i;->a:Landroid/content/Context;

    const p2, 0x7f1200e3

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v2, Ld/i;->k:Ljava/lang/CharSequence;

    iput-object p1, v2, Ld/i;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0}, Ld/m;->a()Ld/n;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private toolbarInit()V
    .locals 3

    const v0, 0x7f090260

    invoke-virtual {p0, v0}, Ld/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Ld/q;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Ld/q;->getSupportActionBar()Ld/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ld/b;->m(Z)V

    new-instance v1, Lcom/samsung/android/kmxservice/dashboard/view/b;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/dashboard/view/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string p0, "KMX|SecurityStatusActivity"

    const-string p1, "Samsung Members is not installed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isSamsungMembersPkgEnabled()Z
    .locals 2

    const-string v0, "com.samsung.android.voc"

    invoke-virtual {p0, v0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->isSupportedVersion(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportedVersion(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0xa220268

    if-lt p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    const-string p0, "KMX|SecurityStatusActivity"

    const-string p1, "Contact us is not supported at this Samsung Members version."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/g0;->onActivityResult(IILandroid/content/Intent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult requestCode : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", resultCode : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KMX|SecurityStatusActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "error_code"

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onActivityResult error : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/g0;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c000c

    invoke-virtual {p0, p1}, Ld/q;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f0502f0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->toolbarInit()V

    const p1, 0x7f0901ee

    invoke-virtual {p0, p1}, Ld/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/u0;)V

    new-instance v0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mSecurityStatusListViewAdapter:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/j0;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/u0;

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView;->D1:Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mRoundedWithDividerDecoration:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$RoundedWithDividerDecoration;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->o(Landroidx/recyclerview/widget/r0;)V

    new-instance p1, Landroidx/appcompat/util/c;

    invoke-direct {p1, p0}, Landroidx/appcompat/util/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mItemRoundedCorner:Landroidx/appcompat/util/c;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->setRoundedCornerToBottom()V

    invoke-direct {p0, p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->isSaSignedIn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.osp.app.signin"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const v0, 0x59682f00

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->activateChainServiceIfNotChinaAccount()V

    goto :goto_1

    :cond_1
    const p1, 0x7f120049

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f12004a

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->openLoginSamsungAccount()V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_1

    :cond_3
    const p1, 0x7f1200d3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1200d4

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    invoke-virtual {p0}, Ld/q;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090033

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f120101

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f12001b

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v0, 0x7f09003c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->isSamsungMembersPkgEnabled()Z

    move-result p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090033

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f09003c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->getContactUsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_1
    const-string p0, "KMX|SecurityStatusActivity"

    const-string p1, "No application can handle the link"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/g0;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mSecurityStatusListViewAdapter:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->setThisDevice()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->mSecurityStatusListViewAdapter:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j0;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
