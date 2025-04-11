.class public Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final INTENT_ACTION_SA_RESIGN_IN:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_RESIGNIN_COMPLETED"

.field private static final INTENT_ACTION_SA_SIGN_IN:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

.field private static final INTENT_ACTION_SA_SIGN_OUT:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

.field private mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SamsungAccountEventReceiver"

    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/e2ee/data/LogTag;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver$1;-><init>(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;)Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private deleteEscrowInfo(Landroid/content/Context;)V
    .locals 3

    new-instance p0, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->deleteVerifierInfo()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->deleteToken()I

    move-result p0

    if-lez p1, :cond_0

    if-lez p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->TAG:Ljava/lang/String;

    const-string p1, "deleteEscrowInfo success"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteEscrowInfo fail : v = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " t ="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private deleteTAEscrowInfo()V
    .locals 3

    new-instance p0, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->deleteEvKey()Z

    move-result p0

    sget-object v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key delete success = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private signInChainService()V
    .locals 4

    sget-object v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Samsung Account sign in event received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.kmxservice.trustchain.CHAIN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SIGNED_IN_SA:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;-><init>(Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private signOutChainService()V
    .locals 4

    sget-object v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Samsung Account sign out event received -> deactivate trust chain service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.kmxservice.trustchain.CHAIN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DEACTIVATE_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;-><init>(Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    sget-object v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->isSaSignedIn(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSaSignedIn = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "persist.escrowvault.sa.signed"

    const/16 v4, 0x22

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const-string p1, "sa signed in"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_0

    const-string p1, "true"

    invoke-static {v3, p1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->signInChainService()V

    goto :goto_1

    :cond_1
    const-string v2, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    const-string p2, "sa signed out"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v4, :cond_3

    const-string p2, "false"

    invoke-static {v3, p2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->deleteEscrowInfo(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->deleteTAEscrowInfo()V

    :cond_2
    invoke-static {p1}, Lp0/c;->b(Landroid/content/Context;)Lp0/c;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.android.kmxservice.escrowvault.FINISH_PPP"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lp0/c;->d(Landroid/content/Intent;)Z

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->signOutChainService()V

    goto :goto_1

    :cond_4
    const-string p1, "com.samsung.account.SAMSUNGACCOUNT_RESIGNIN_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    const-string p1, "sa re-signed in"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Error handling broadcast action : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
