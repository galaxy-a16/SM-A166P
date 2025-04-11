.class public Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;,
        Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;,
        Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;,
        Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KMX|EscrowAgent"


# instance fields
.field private mApiVersionV2:Z

.field private final mCallerDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;",
            ">;"
        }
    .end annotation
.end field

.field private final mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

.field private final mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

.field private mDeviceName:Ljava/lang/String;

.field private mEvCallbackList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFabricCryptoAgent:Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

.field private mHandlingFabricKeyForTest:Z

.field private mInitialized:Z

.field private mKmxDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

.field private mModelCode:Ljava/lang/String;

.field private mNeedMigrationForTest:Z

.field private mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

.field private mTAChallenge:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mEvCallbackList:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mInitialized:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mTAChallenge:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mCallerDataList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mApiVersionV2:Z

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mHandlingFabricKeyForTest:Z

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mNeedMigrationForTest:Z

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$2;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->ACTIVATE_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;-><init>(Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    return-void
.end method

.method public static bridge synthetic A(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->makeCredentialInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic B(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Ljava/math/BigInteger;)Ljava/security/Key;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->makeSecretClientKey(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/security/Key;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic C(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;[B[B[B[B)Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->makeVerifierInfo([B[B[B[B)Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic D(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;[B)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->makeWrapKey(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic E(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;)Lcom/samsung/android/kmxservice/escrowvault/data/CredentialInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->parseCredentialInfo(Ljava/lang/String;)Lcom/samsung/android/kmxservice/escrowvault/data/CredentialInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic F(ILandroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;)V
    .locals 7

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->registerVerifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic G(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->setPreferenceWithId(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic H(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->storeVerifierInfo(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    return-void
.end method

.method public static bridge synthetic I(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->updateCekInternal(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    return-void
.end method

.method public static bridge synthetic J(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->verifyCurrentPpp(Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public static bridge synthetic K(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->verifyOldPpp(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->lambda$registerVerifier$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method private activateChainService()V
    .locals 2

    const-string v0, "KMX|EscrowAgent"

    const-string v1, "activateChainService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.kmxservice.trustchain.CHAIN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.kmxservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    invoke-static {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/security/Key;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->lambda$registerVerifier$2(Ljava/lang/String;ILjava/security/Key;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;IILandroid/os/Bundle;Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->lambda$callbackComplete$0(Ljava/lang/String;IILandroid/os/Bundle;Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceCallback;)V

    return-void
.end method

.method private callbackComplete(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mEvCallbackList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/escrowvault/a;-><init>(Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private compareEvidence(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 1

    :try_start_0
    sget-object p0, Lx8/a;->a:Ljava/math/BigInteger;

    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p0}, Ljava/math/BigInteger;-><init>([B)V

    const/4 p0, 0x3

    new-array p0, p0, [[B

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    invoke-static {p3}, Lx8/a;->c([B)[B

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p0, v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lx8/a;->c([B)[B

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p0, p3

    invoke-virtual {p4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lx8/a;->c([B)[B

    move-result-object p1

    const/4 p4, 0x2

    aput-object p1, p0, p4

    invoke-static {p0}, Lx8/a;->a([[B)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return p3

    :cond_0
    return v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private containsDeviceList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "KMX|EscrowAgent"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "current device verifier is registered"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mApiVersionV2:Z

    if-eqz p0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const-string p0, "current device verifier is not registered"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_1
    const-string p0, "any verifier is not registered"

    goto :goto_0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mApiVersionV2:Z

    return p0
.end method

.method private deleteVerifierInfo()V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mKmxDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->deleteVerifierInfo()I

    move-result p0

    const-string v0, "KMX|EscrowAgent"

    if-lez p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteVerifierInfo success : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "deleteVerifierInfo fail"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    return-object p0
.end method

.method private ensureSetPpp(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 8

    const-string v0, "ensureSetPpp"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getLockTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "OtherType"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const-string v0, "ppp isn\'t set yet"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$1;

    const/4 v4, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v5, p3

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$1;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;I)V

    const-string p1, "resultReceiver"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mEvCallbackList:Ljava/util/HashMap;

    return-object p0
.end method

.method private generateM1(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lx8/a;->a:Ljava/math/BigInteger;

    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p2}, Ljava/math/BigInteger;-><init>([B)V

    :try_start_0
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getSaGuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Landroidx/work/impl/x;->f(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p3, p4, v1, p2}, Landroidx/work/impl/x;->e(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    const/4 p3, 0x3

    new-array p3, p3, [[B

    invoke-virtual {p4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p4

    invoke-static {p4}, Lx8/a;->c([B)[B

    move-result-object p4

    const/4 v2, 0x0

    aput-object p4, p3, v2

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p4

    invoke-static {p4}, Lx8/a;->c([B)[B

    move-result-object p4

    const/4 v1, 0x1

    aput-object p4, p3, v1

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p4

    invoke-static {p4}, Lx8/a;->c([B)[B

    move-result-object p4

    const/4 v1, 0x2

    aput-object p4, p3, v1

    invoke-static {p3}, Lx8/a;->a([[B)Ljava/math/BigInteger;

    move-result-object p3

    const-string p4, "m1"

    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p4, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "secretClient"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mApiVersionV2:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->makeWrapKey(Ljava/lang/String;[B)[B

    move-result-object p0

    const-string p1, "w_key"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getCurrentCallerData()Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mCallerDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getUid()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mFabricCryptoAgent:Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mHandlingFabricKeyForTest:Z

    return p0
.end method

.method private initCallerData()V
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->getCurrentCallerData()Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "KMX|EscrowAgent"

    if-eqz v1, :cond_1

    array-length v3, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "uid = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    invoke-direct {v7, v0, v6}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6, v4}, Lcom/samsung/android/kmxservice/common/util/PackageVerifier;->checkSamsungSignature(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v7, v6}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->setVerified(Z)V

    iget-object v6, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mCallerDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p0, "It can\'t find packageName for uid"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private initialize()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mDeviceName:Ljava/lang/String;

    const-string v0, "ril.product_code"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mModelCode:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mFabricCryptoAgent:Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    new-instance v0, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mKmxDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mTAChallenge:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mEvCallbackList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private isVerifiedSrp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    sget-object v0, Lx8/a;->b:Ljava/math/BigInteger;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    :cond_0
    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-direct {v5, v2, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_0

    sget-object v0, Lx8/a;->a:Ljava/math/BigInteger;

    sget-object v1, Lx8/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v5, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "KMX|EscrowAgent"

    const/16 v16, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mApiVersionV2:Z

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mFabricCryptoAgent:Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->requestTASignCert()[Ljava/security/cert/Certificate;

    move-result-object v0

    iget-object v7, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mFabricCryptoAgent:Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    invoke-virtual {v7}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->requestTaEncKeyAndSignature()Landroid/os/Bundle;

    move-result-object v7

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v12

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "public_key_signature"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v13

    const-string v0, "public_key"

    const-class v1, Ljava/security/PublicKey;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    iget-object v7, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v14

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v7 .. v14}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->exchangeKey_V2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)Landroid/os/Bundle;

    move-result-object v0

    move-object v11, v3

    move-object v9, v4

    move-object v10, v5

    move-object/from16 v8, v16

    goto/16 :goto_1

    :cond_1
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v7, "srp"

    const/4 v8, 0x3

    invoke-direct {v0, v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v8, "ECB"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const-string v8, "SHA-1"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    new-instance v8, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v9, 0xc00

    sget-object v10, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v8, v9, v10}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const-string v8, "OAEPPadding"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    new-instance v8, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    const/16 v9, 0x10

    invoke-static {v9}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->makeSecureRandomByte(I)[B

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    const-string v9, "RSA"

    invoke-virtual {v8, v9}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->setAlgorithm(Ljava/lang/String;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->setKeyGenParameterSpec(Landroid/security/keystore/KeyGenParameterSpec;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->build()Lcom/samsung/android/security/keystore/AttestParameterSpec;

    move-result-object v0

    invoke-static {v7, v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getAttestationResult(Ljava/lang/String;Lcom/samsung/android/security/keystore/AttestParameterSpec;Z)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "[isVerifiedSrp] attestationResult is null"

    :goto_0
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_2
    const-string v7, "cert_chain"

    const-class v8, [Ljava/security/cert/Certificate;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, [Ljava/security/cert/Certificate;

    const-string v8, "private_key"

    const-class v9, Ljava/security/PrivateKey;

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/security/PrivateKey;

    if-nez v7, :cond_3

    const-string v0, "[isVerifiedSrp] certChain is NULL"

    goto :goto_0

    :cond_3
    if-nez v8, :cond_4

    const-string v0, "[isVerifiedSrp] privateKey is NULL"

    goto :goto_0

    :cond_4
    iget-object v0, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v9

    aget-object v2, v7, v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v10

    aget-object v1, v7, v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v11, v3

    move-object v3, v9

    move-object v9, v4

    move-object v4, v10

    move-object v10, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->exchangeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    const-string v1, "encSalt"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "secretB"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_e

    if-nez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mApiVersionV2:Z

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mFabricCryptoAgent:Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->decryptData([B)[B

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, v8}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->rsaCipherData([BILjava/security/Key;)[B

    move-result-object v0

    :goto_2
    move-object v5, v0

    if-nez v5, :cond_7

    return-object v16

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v3, v10

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->generateM1(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "m1"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "secretClient"

    const-class v3, Ljava/math/BigInteger;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    if-eqz v1, :cond_d

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mApiVersionV2:Z

    if-eqz v3, :cond_9

    iget-object v3, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    invoke-virtual {v3, v15, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getServerEvidence_V2(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_3

    :cond_9
    iget-object v3, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    invoke-virtual {v3, v15, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getServerEvidence(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_3
    const-string v4, "m2"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    return-object v3

    :cond_a
    invoke-direct {v6, v1, v4, v9, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->compareEvidence(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mApiVersionV2:Z

    if-eqz v1, :cond_b

    const-string v1, "enc_token"

    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-object v0

    :cond_c
    return-object v16

    :cond_d
    :goto_4
    const-string v0, "m1 or secretClient is NULL"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    return-object v16
.end method

.method public static bridge synthetic j(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mKmxDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mModelCode:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mNeedMigrationForTest:Z

    return p0
.end method

.method private static synthetic lambda$callbackComplete$0(Ljava/lang/String;IILandroid/os/Bundle;Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceCallback;)V
    .locals 5

    const-string v0, "KMX|EscrowAgent"

    const-string v1, "errorCode = "

    const-string v2, "requestCode = "

    const-string v3, "serviceName = "

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4, p1, p2, p3}, Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceCallback;->onComplete(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RemoteException : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$registerVerifier$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 9

    move-object v0, p0

    move-object v1, p4

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, [B

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, [B

    move-object v1, v2

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->registerVerifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x6d

    :goto_0
    move-object v3, p1

    move/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct {p0, p1, v4, v2, v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->callbackComplete(Ljava/lang/String;IILandroid/os/Bundle;)V

    const-string v2, "registerVerifier"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->setPreferenceWithId(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$registerVerifier$2(Ljava/lang/String;ILjava/security/Key;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 12

    move-object v1, p0

    move-object/from16 v0, p7

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x6d

    move-object v3, p1

    move v8, p2

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->callbackComplete(Ljava/lang/String;IILandroid/os/Bundle;)V

    const-string v0, "KMX|EscrowAgent"

    const-string v1, "registerVerifier : making verifierInfo failure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v3, p1

    move v8, p2

    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getAgentSakCert()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getAgentVerificationCert()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->makeJsonFromVerifierInfo(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v4, 0x1

    move-object v5, p3

    invoke-static {v0, v2, v4, p3}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->aesCipherData([B[BILjava/security/Key;)Landroid/util/Pair;

    move-result-object v5

    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/samsung/android/kmxservice/escrowvault/b;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/kmxservice/escrowvault/b;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private loadVerifierInfo(Ljava/lang/String;)Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;
    .locals 4

    const-string v0, "loadVerifierInfo"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mKmxDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->queryVerifierInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string p0, "load verifierInformation failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    new-instance v1, Lcom/google/gson/b;

    invoke-direct {v1}, Lcom/google/gson/b;-><init>()V

    const-class v2, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/b;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getSignVerifier()[B

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0, v3, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->makeVerifierSignData(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;[BLjava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static bridge synthetic m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    return-object p0
.end method

.method private makeCredentialInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "KMX|EscrowAgent"

    const-string v0, "makeCredentialInfo"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/kmxservice/escrowvault/data/CredentialInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/data/CredentialInfo;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/google/gson/b;

    invoke-direct {p1}, Lcom/google/gson/b;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/gson/b;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private makeJsonFromVerifierInfo(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getESalt()[B

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifierIv()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifier()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifierEncKey()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getSignVerifier()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getVerifierType()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "encSalt"

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "encVerifierIv"

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "encVerifier"

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "encVerifierEncKey"

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "verifierType"

    invoke-virtual {v4, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "signVerifier"

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "KMX|EscrowAgent"

    const-string p1, "json parsing error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private makeSecretClientKey(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/security/Key;
    .locals 3

    const/4 p0, 0x2

    new-array p0, p0, [[B

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->hash([[B)[B

    move-result-object p0

    new-array p1, v1, [[B

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->hash([[B)[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance p2, Lorg/bouncycastle/crypto/params/HKDFParameters;

    const/4 v2, 0x0

    invoke-direct {p2, p1, p0, v2}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([B[B[B)V

    invoke-virtual {v1, p2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    const/16 p0, 0x20

    new-array p1, p0, [B

    invoke-virtual {v1, p1, v0, p0}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generateBytes([BII)I

    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, "AES"

    invoke-direct {p0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method private makeVerifierInfo([B[B[B[B)Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getLockTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/common/tool/CertificateManager;

    move-result-object v1

    const-string v2, "kmxEscrowEncSalt.crt"

    invoke-virtual {v1, v2}, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->getCertification(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p2, v2, v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->rsaCipherData([BILjava/security/Key;)[B

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Esalt size: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    array-length v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "KMX|EscrowAgent"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v4, 0x20

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->makeSecureRandomByte(I)[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v1, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->aesCipherData([B[BILjava/security/Key;)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [B

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/common/tool/CertificateManager;

    move-result-object v6

    const-string v7, "kmxEscrowEncVrfr.crt"

    invoke-virtual {v6, v7}, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->getCertification(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-virtual {v1}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-static {v1, v2, v6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->rsaCipherData([BILjava/security/Key;)[B

    move-result-object v6

    new-instance v7, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    move-object v1, v7

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;-><init>([B[B[B[BLjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, p3, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->makeVerifierSignData(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;[BLjava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mApiVersionV2:Z

    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mFabricCryptoAgent:Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    invoke-virtual {p0, p2, p4, v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->generateVSWInfo([B[BLjava/lang/String;[B)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "evsw"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->setEVSW([B)V

    const-string p1, "sign_evsw"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->setSignEVSW([B)V

    :cond_2
    return-object v7
.end method

.method private makeVerifierSignData(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;[BLjava/lang/String;)V
    .locals 7

    const-string p0, "signVerifier"

    invoke-static {p0, p2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getAttestationResult(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "KMX|EscrowAgent"

    if-nez p0, :cond_0

    const-string p0, "[makeVerifierSignData] attestationResult is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "private_key"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    const-string v2, "cert_chain"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/Certificate;

    if-nez v1, :cond_1

    const-string p0, "[makeVerifierSignData] PrivateKey is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p0, :cond_2

    const-string p0, "[makeVerifierSignData] certChain is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object p0, p0, v3

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x6

    new-array v4, v4, [[B

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    aput-object p3, v4, v0

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getESalt()[B

    move-result-object p3

    aput-object p3, v4, v3

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifierIv()[B

    move-result-object p3

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 p3, 0x3

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifier()[B

    move-result-object v6

    aput-object v6, v4, p3

    const/4 p3, 0x4

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifierEncKey()[B

    move-result-object v6

    aput-object v6, v4, p3

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getVerifierType()Ljava/lang/String;

    move-result-object p3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    const/4 v6, 0x5

    aput-object p3, v4, v6

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object p3

    if-eqz p2, :cond_3

    new-array v4, v5, [[B

    aput-object p3, v4, v0

    aput-object p2, v4, v3

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object p3

    :cond_3
    invoke-static {p3, v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->signData([BLjava/security/PrivateKey;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->setSignVerifier([B)V

    invoke-virtual {p1, p0}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->setAgentSakCert(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->setAgentVerificationCert(Ljava/lang/String;)V

    return-void
.end method

.method private makeWrapKey(Ljava/lang/String;[B)[B
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getSaGuid()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/16 v2, 0x20

    const v3, 0x186a0

    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->pbkdf2([C[BII)[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v4, v1, [[B

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 p2, 0x3

    new-array p2, p2, [[B

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    aput-object p0, p2, v5

    const-string p0, ":"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v6, 0x1

    aput-object p0, p2, v6

    aput-object v0, p2, v1

    invoke-static {p2}, Lx8/a;->a([[B)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    aput-object p0, v4, v6

    invoke-static {v4}, Lx8/a;->a([[B)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    new-array p2, v6, [[B

    aput-object p0, p2, v5

    invoke-static {p2}, Lx8/a;->a([[B)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {p1, p0, v3, v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->pbkdf2([C[BII)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static bridge synthetic n(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mTAChallenge:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mApiVersionV2:Z

    return-void
.end method

.method public static bridge synthetic p(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mHandlingFabricKeyForTest:Z

    return-void
.end method

.method private parseCredentialInfo(Ljava/lang/String;)Lcom/samsung/android/kmxservice/escrowvault/data/CredentialInfo;
    .locals 1

    const-string p0, "parseCredentialInfo"

    const-string v0, "KMX|EscrowAgent"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "credentialJsonString is empty"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/gson/b;

    invoke-direct {p0}, Lcom/google/gson/b;-><init>()V

    const-class v0, Lcom/samsung/android/kmxservice/escrowvault/data/CredentialInfo;

    invoke-virtual {p0, v0, p1}, Lcom/google/gson/b;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/data/CredentialInfo;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mNeedMigrationForTest:Z

    return-void
.end method

.method public static bridge synthetic r(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->activateChainService()V

    return-void
.end method

.method private registerVerifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;ILandroid/os/Bundle;)V
    .locals 13

    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p5

    const-string v0, "KMX|EscrowAgent"

    const-string v11, "registerVerifier"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->loadVerifierInfo(Ljava/lang/String;)Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verifierInfo is null : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    new-instance v11, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;

    new-instance v12, Lcom/samsung/android/kmxservice/escrowvault/c;

    move-object v0, v12

    move/from16 v1, p5

    move-object/from16 v2, p6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/c;-><init>(ILandroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v11, p0, p1, v10, v12}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/util/function/Consumer;)V

    invoke-direct {p0, v11}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->verifyCurrentPpp(Landroid/os/ResultReceiver;)V

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->deleteVerifierInfo()V

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getSignVerifier()[B

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getAgentVerificationCert()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x6

    new-array v5, v5, [[B

    iget-object v6, v8, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v6

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getESalt()[B

    move-result-object v3

    aput-object v3, v5, v4

    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifierIv()[B

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x3

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifier()[B

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x4

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifierEncKey()[B

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getVerifierType()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v6, 0x5

    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object v3

    invoke-static {v7}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->verifySignature([B[BLjava/security/PublicKey;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/16 v1, 0x6c

    invoke-direct {p0, p1, v10, v1, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->callbackComplete(Ljava/lang/String;IILandroid/os/Bundle;)V

    const-string v1, "registerVerifier : verifySignature failure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getAgentSakCert()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->makeJsonFromVerifierInfo(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    move-object/from16 v1, p4

    invoke-static {v0, v3, v4, v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->aesCipherData([B[BILjava/security/Key;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v8, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, [B

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [B

    move-object v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->registerVerifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    const/16 v1, 0x6d

    :goto_1
    move-object/from16 v2, p6

    invoke-direct {p0, p1, v10, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->callbackComplete(Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-direct {p0, v11, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->setPreferenceWithId(Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method

.method public static bridge synthetic s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->callbackComplete(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method private setPreferenceWithId(Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "is_verifier_registered_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getSaGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] preference was set = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KMX|EscrowAgent"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private storeVerifierInfo(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 3

    new-instance v0, Lcom/google/gson/b;

    invoke-direct {v0}, Lcom/google/gson/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/b;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mKmxDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->insertVerifierInfo(Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    const-string v1, "KMX|EscrowAgent"

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "storeVerifierInfo success : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "storeVerifierInfo fail"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->containsDeviceList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic u(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->deleteVerifierInfo()V

    return-void
.end method

.method private updateCekInternal(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    const-string v2, "challenge"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hsm_enc_cred_cert"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "KMX|EscrowAgent"

    const-string v1, "updateVerifier challenge is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mFabricCryptoAgent:Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->requestTASignCert()[Ljava/security/cert/Certificate;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v13

    iget-object v3, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mFabricCryptoAgent:Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v8

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->exportCek([B[B[BLcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/cert/Certificate;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v5, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mServerAgent:Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    iget-object v7, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mDeviceName:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mModelCode:Ljava/lang/String;

    const-string v0, "evs"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getVerifierType()Ljava/lang/String;

    move-result-object v10

    const-string v0, "ecerk"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    const-string v0, "sign_ecerk"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v12

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v14}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->updateVerifierCeRk_V2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic v(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->ensureSetPpp(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method private verifyCurrentPpp(Landroid/os/ResultReceiver;)V
    .locals 3

    const-string v0, "KMX|EscrowAgent"

    const-string v1, "verifyCurrentPpp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "resultReceiver"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private verifyOldPpp(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3

    const-string v0, "KMX|EscrowAgent"

    const-string v1, "verifyOldPpp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "device_list_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "resultReceiver"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->getCurrentCallerData()Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->initCallerData()V

    return-void
.end method

.method public static bridge synthetic y(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->isVerifiedSrp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;)Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->loadVerifierInfo(Ljava/lang/String;)Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "service_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBind : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KMX|EscrowAgent"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->initialize()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->mInitialized:Z

    :cond_0
    const-string v0, "com.samsung.android.kmxservice.escrowvault.EV_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;I)V

    return-object p1

    :cond_1
    const-string v0, "com.samsung.android.kmxservice.escrowvault.UPDATE_VERIFIER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;I)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string p0, "KMX|EscrowAgent"

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "KMX|EscrowAgent"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
