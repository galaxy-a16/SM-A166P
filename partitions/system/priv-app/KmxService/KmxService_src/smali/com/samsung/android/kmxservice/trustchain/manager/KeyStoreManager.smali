.class public Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::KeyStoreManager"


# instance fields
.field private mFabricId:Ljava/lang/String;

.field private final mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

.field private mSigningKeyId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->mFabricId:Ljava/lang/String;

    invoke-static {p2, p3}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->mSigningKeyId:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    return-void
.end method


# virtual methods
.method public getSigningCertChain()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->mFabricId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->mSigningKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->getChainSigningKey(Ljava/lang/String;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/CertChainUtils;->chainPemToString([Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "getCertChain"

    const-string v1, "TrustChain::KeyStoreManager"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/util/Pair;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public sign([B)[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->mFabricId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->mSigningKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->signChainMessage(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "sign"

    const-string v0, "TrustChain::KeyStoreManager"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public updateId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->mFabricId:Ljava/lang/String;

    invoke-static {p1, p2}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->mSigningKeyId:Ljava/lang/String;

    return-void
.end method

.method public verify([B[B[B)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->verifyChainMessage([B[B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "verify"

    const-string p2, "TrustChain::KeyStoreManager"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
