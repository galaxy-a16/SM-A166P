.class public Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile sFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;


# instance fields
.field private final mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;
    .locals 2

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->sFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->sFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-direct {v1, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->sFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->sFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized containsKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->containsKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createFabricKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->createFabricKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createServiceKey(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->createServiceKey(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized decryptData(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->decryptData(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized decryptFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->decryptFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized decryptStream(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->decryptStream(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteChainSigningKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->deleteChainSigningKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->deleteKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteKeys(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->deleteKeys(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized encryptData(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->encryptData(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized encryptFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->encryptFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized encryptStream(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->encryptStream(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized exportFabricKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)[B
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->exportFabricKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized exportFabricKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B[B)Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyInfoPQC;
    .locals 12

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->exportFabricKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B[B)Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyInfoPQC;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized exportServiceKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->exportServiceKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized exportServiceKey(Ljava/lang/String;Ljava/util/List;[Ljava/security/cert/X509Certificate;[B)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/security/cert/X509Certificate;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->exportServiceKey(Ljava/lang/String;Ljava/util/List;[Ljava/security/cert/X509Certificate;[BZ)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized exportServiceKey(Ljava/lang/String;Ljava/util/List;[Ljava/security/cert/X509Certificate;[BZ)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/security/cert/X509Certificate;",
            "[BZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->exportServiceKey(Ljava/lang/String;Ljava/util/List;[Ljava/security/cert/X509Certificate;[BZ)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getChainSigningKey(Ljava/lang/String;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->getChainSigningKey(Ljava/lang/String;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMemberKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Triple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Triple<",
            "[B[B[",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->getMemberKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Triple;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMemberKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->getMemberKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRecoveryData(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->getRecoveryData(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSakUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->getSakUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized importFabricKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B)Z
    .locals 11

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->importFabricKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized importFabricKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B[B)Z
    .locals 12

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->importFabricKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B[B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized importServiceKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->importServiceKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setChunkSize(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->setChunkSize(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRecoveryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->setRecoveryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized signChainMessage(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->signChainMessage(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized validateRecoveryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->validateRecoveryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized verifyChainMessage([B[B[B)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->verifyChainMessage([B[B[B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public verifyChainSigningKey([Ljava/security/cert/X509Certificate;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    invoke-interface {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->verifyChainSigningKey([Ljava/security/cert/X509Certificate;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized verifyMemberKey(Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->mFabricKeyStoreInterface:Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;->verifyMemberKey(Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
