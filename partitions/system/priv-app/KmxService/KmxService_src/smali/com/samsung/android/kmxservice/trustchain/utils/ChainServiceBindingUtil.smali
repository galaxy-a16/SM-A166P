.class public final Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::ChainServiceBindingUtil"

.field private static sMemberId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindChainService(Landroid/content/ServiceConnection;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.kmxservice.trustchain.CHAIN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public static bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;)V
    .locals 4

    const-string v0, "binding chain service got called"

    const-string v1, "TrustChain::ChainServiceBindingUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/kmxservice/KmxServiceApplication;->getInstance()Lcom/samsung/android/kmxservice/KmxServiceApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.samsung.android.kmxservice"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "member_id"

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->generateMemberId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, p1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    const-string p0, "KmxServiceApplication has no instance -> binding chain service failed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static generateMemberId()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->sMemberId:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->getInstance()Lcom/samsung/android/kmxservice/common/util/SakUidUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->getSakUid(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->sMemberId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TrustChain::ChainServiceBindingUtil"

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->sMemberId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "memberId : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->sMemberId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "fail to get member id"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->sMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public static unbindService(Landroid/content/ServiceConnection;)V
    .locals 2

    const-string v0, "unbinding chain service got called"

    const-string v1, "TrustChain::ChainServiceBindingUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/kmxservice/KmxServiceApplication;->getInstance()Lcom/samsung/android/kmxservice/KmxServiceApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "KmxServiceApplication has no instance -> binding chain service failed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
